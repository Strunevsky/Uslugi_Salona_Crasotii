using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Collections.ObjectModel;
using System.IO;
using System.Globalization;
using System.Data.Services.Client;

namespace Uslugi_Salona_Crasoti
{
    /// <summary>
    /// Логика взаимодействия для SpisokUslug.xaml
    /// </summary>
    public partial class SpisokUslug : Window
    {
        //public static 
        //public static ObservableCollection<Employee> ; 
        //private EntityFramework.Employee emp;
        public static Uslugi_Salona_CrasotiEntities1 DataEntitiesEmployee { get; set; }
        public bool IsDirty { get; private set; }
        public Visibility BorderFind { get; private set; }

        ObservableCollection<Client> ListEmployee;
        public SpisokUslug()
        {
            DataEntitiesEmployee = new Uslugi_Salona_CrasotiEntities1();
            InitializeComponent();
            ListEmployee = new ObservableCollection<Client>();
        }
        private void DataGridEmployee_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }
        private void Nazad(object sender, RoutedEventArgs e)
        {
            PanelAdmin vhod = new PanelAdmin();
            vhod.Show();
            this.Close();
        }

        private void Vihod(object sender, RoutedEventArgs e)
        {
            Close();
        }
        private void GetEmployees(object sender, RoutedEventArgs e)
        {
            var employees = DataEntitiesEmployee.Clients;
            var queryEmployee = from employee in employees
                                orderby employee.LastName
                                select employee;
            foreach (Client emp in queryEmployee)
            {
                ListEmployee.Add(emp);
            }
            //Service.Items.Clear();
            Client1.ItemsSource = ListEmployee;
        }
        private void Window_Load(object sender, RoutedEventArgs e)
        {
            GetEmployees(sender, e);
            Client1.SelectedIndex = 0;
        }
        private void RewriteEmployee(object sender, RoutedEventArgs e)
        {
            DataEntitiesEmployee = new Uslugi_Salona_CrasotiEntities1();
            ListEmployee.Clear();
            GetEmployees(sender, e);
        }

        private void Sohranit(object sender, RoutedEventArgs e)
        {
            DataEntitiesEmployee.SaveChanges();
            // Client1.IsReadOnly = true;
            MessageBox.Show("Вы сохранили изменения.");
        }
        private void Upravlenie_Client(object sender, RoutedEventArgs e)
        {
            RedaktWindow_Client vhod = new RedaktWindow_Client();
            vhod.Show();
            IsDirty = true;
            //Service.BeginInit();
            this.Close();
        }
        private void Dobavlenie(object sender, RoutedEventArgs e)
        {
            Client employee = Client.CreateEmployee(-1, "не задано", "не задано", "не задано", "не задано", "не задано", "не задано", "не задано", "не задано", "не задано");
            try
            {
                DataEntitiesEmployee.Clients.Add(employee);
                ListEmployee.Add(employee);
                Client1.SelectedIndex = Client1.Items.Count - 1;
                Client1.Focus();
                // Service1.IsReadOnly = false;
            }
            catch (DataServiceRequestException ex)
            {
                throw new ApplicationException("Ошибка добавления данных" + ex.ToString());
            }
        }
        private void Udalenie(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("Вы уверены,что хотите это удалить? Пожалуйста проверьте данные.");
            Client emp = Client1.SelectedItem as Client;
            if (emp != null)
            {
                MessageBoxResult result = MessageBox.Show("" + emp.FirstName.Trim() + emp.LastName + emp.Patronymic, "", MessageBoxButton.OKCancel);
                if (result == MessageBoxResult.OK)
                {
                    DataEntitiesEmployee.Clients.Remove(emp);
                    Client1.SelectedIndex = Client1.SelectedIndex == 0 ? 1 : Client1.SelectedIndex - 1;
                    ListEmployee.Remove(emp);
                    DataEntitiesEmployee.SaveChanges();
                }
                else
                {
                    MessageBox.Show("Выберите строку для удаления");
                }
            }
        }
        private void Naiti(object sender, RoutedEventArgs e)
        {
            string lastname = Poisk.Text;
            DataEntitiesEmployee = new Uslugi_Salona_CrasotiEntities1();
            ListEmployee.Clear();
            var employees = DataEntitiesEmployee.Clients;
            var queryEmployee = from employee in employees
                                where employee.LastName == lastname
                                orderby employee.LastName
                                select employee;
            foreach (Client emp in queryEmployee)
            {
                ListEmployee.Add(emp);
            }
            if (ListEmployee.Count > 0)
            {
                Client1.ItemsSource = ListEmployee;
                Poisk.IsEnabled = true;
            }
            else MessageBox.Show("Фамилия \n" + lastname + "\n не найдена", "Предупреждение", MessageBoxButton.OK, MessageBoxImage.Warning);
        }
        private void RefreshCommondBinding_Executed(object sender, RoutedEventArgs e)
        {
            RewriteEmployee(sender, e);
            //Service.IsReadOnly = false;
            IsDirty = true;
            BorderFind = System.Windows.Visibility.Hidden;
        }
        private void Undo(object sender, RoutedEventArgs e)
        {
            RewriteEmployee(sender, e);
            IsDirty = true;
            //Service1.BeginInit();
            //Service.IsReadOnly = true;
            GetEmployees(sender, e);
        }

        private void Obnovlenie1(object sender, RoutedEventArgs e)
        {
            Kolvo.Content = Client1.Items.Count.ToString();
        }
    }
}
