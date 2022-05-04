using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Data.Services.Client;
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
using System.Windows.Shapes;

namespace Uslugi_Salona_Crasoti
{
    // <summary>
    // Логика взаимодействия для ZapisNaUslugu.xaml
    // </summary>
    public partial class ZapisNaUslugu : Window
    {
        public static Uslugi_Salona_CrasotiEntities1 DataEntitiesEmployee { get; set; }
        ObservableCollection<ClientService> ListEmployee;
        public ZapisNaUslugu()
        {
            DataEntitiesEmployee = new Uslugi_Salona_CrasotiEntities1();
            InitializeComponent();
            ListEmployee = new ObservableCollection<ClientService>();
        }

        private void Zapis(object sender, RoutedEventArgs e)
        {
            Final vhod = new Final();
            vhod.Show();
            this.Close();
        }
        private void Nazad(object sender, RoutedEventArgs e)
        {
            MainWindow vhod = new MainWindow();
            vhod.Show();
            this.Close();
        }
        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            var employees = DataEntitiesEmployee.ClientServices;
            var queryEmployee = from employee in employees
                                orderby employee.ClientID
                                select employee;
            foreach (ClientService emp in queryEmployee)
            {
                ListEmployee.Add(emp);
            }
            ClientService1.ItemsSource = ListEmployee;
        }
        private void Vihod(object sender, RoutedEventArgs e)
        {
            Close();
        }
        private void Dobavlenie(object sender, RoutedEventArgs e)
        {
            ClientService employee = ClientService.CreateEmployee(-1, 0, 0, "не задано","не задано");
            try
            {
                DataEntitiesEmployee.ClientServices.Add(employee);
                ListEmployee.Add(employee);
                ClientService1.SelectedIndex = ClientService1.Items.Count - 1;
                ClientService1.Focus();
            }
            catch (DataServiceRequestException ex)
            {
                throw new ApplicationException("Ошибка добавления данных" + ex.ToString());
            }
        }
        private void Red(object sender, RoutedEventArgs e)
        {
            //if ()
            //{

            //}
            //else
            //{

            //}
        }
        private void Udalenie(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("Вы уверены,что хотите это удалить? Пожалуйста проверьте данные.");
            ClientService emp = ClientService1.SelectedItem as ClientService;
            if (emp != null)
            {
                MessageBoxResult result = MessageBox.Show("" + emp.ClientID + emp.ServiceID + emp.ID, "", MessageBoxButton.OKCancel);
                if (result == MessageBoxResult.OK)
                {
                    DataEntitiesEmployee.ClientServices.Remove(emp);
                    ClientService1.SelectedIndex = ClientService1.SelectedIndex == 0 ? 1 : ClientService1.SelectedIndex - 1;
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
            ///string title = .Text;
            DataEntitiesEmployee = new Uslugi_Salona_CrasotiEntities1();
            ListEmployee.Clear();
            var employees = DataEntitiesEmployee.ClientServices;
            var queryEmployee = from employee in employees
                                orderby employee.ClientID
                                select employee;
            foreach (ClientService emp in queryEmployee)
            {
                ListEmployee.Add(emp);
            }
            if (ListEmployee.Count > 0)
            {
                ClientService1.ItemsSource = ListEmployee;
            }
            else MessageBox.Show("Услуга \n" + Title + "\n не найден", "Предупреждение", MessageBoxButton.OK, MessageBoxImage.Warning);
        
        }
        private void Poisk(object sender, RoutedEventArgs e)
        {
            Close();
        }
        private void Obnavlenie(object sender, RoutedEventArgs e)
        {
           
        }
    }
}
