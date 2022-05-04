using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
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
//using Uslugi_Salona_Crasoti.Model;
using System.Globalization;
using System.Data.Entity;
using Uslugi_Salona_Crasoti;
using System.Data.Services.Client;
using System.Data.Services;
using System.Timers;


namespace Uslugi_Salona_Crasoti

{
    /// <summary>
    /// Логика взаимодействия для PanelAdmin.xaml
    /// </summary>
    public partial class PanelAdmin : Window
    {

        public static Uslugi_Salona_CrasotiEntities1 DataEntitiesEmployee { get; set; }
        public bool IsDirty { get; private set; }
        public bool IsReadOnly { get; private set; }
        public object BorderFind { get; private set; }
        

        ObservableCollection<Service> ListEmployee;
        public PanelAdmin()
        {
            DataEntitiesEmployee = new Uslugi_Salona_CrasotiEntities1();
            InitializeComponent();
            ListEmployee = new ObservableCollection<Service>();
            Timer timer = new Timer(30000);
            timer.AutoReset = true;
            timer.Enabled = true;
            timer.Elapsed += new ElapsedEventHandler(timerTick);
            timer.Start();
            //Service.BeginUpdate();
            //for (int x = 0; x < 100; x++)
            //{
            //    Service.Items.Add("Item" + x.ToString());
            //}
            //Service.EndUpdate
            //timer.Restart();
            
        }
        //public void BeginUpdate();

        private void Dobavlenie(object sender, RoutedEventArgs e)
        {
            Service employee = Uslugi_Salona_Crasoti.Service.CreateEmployee(-1, "не задано", 0, 0, "не задано", 0, "не задано");
            try
            {
                DataEntitiesEmployee.Services.Add(employee);
                ListEmployee.Add(employee);
                Service.SelectedIndex = Service.Items.Count - 1;
                Service.Focus();
            }
            catch (DataServiceRequestException ex)
            {
                throw new ApplicationException("Ошибка добавления данных" + ex.ToString());
            }
        }
        private void Udalenie(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("Вы уверены,что хотите это удалить? Пожалуйста проверьте данные.");
            Service emp = Service.SelectedItem as Service;
            if (emp != null)
            {
                MessageBoxResult result = MessageBox.Show("" + emp.Title.Trim() + emp.Cost + emp.Discount, "", MessageBoxButton.OKCancel);
                if (result == MessageBoxResult.OK)
                {
                    DataEntitiesEmployee.Services.Remove(emp);
                    Service.SelectedIndex = Service.SelectedIndex == 0 ? 1 : Service.SelectedIndex - 1;
                    ListEmployee.Remove(emp);
                    DataEntitiesEmployee.SaveChanges();
                }
                else
                {
                    MessageBox.Show("Выберите строку для удаления");
                }
            }
        }
        private void Upravlenie_Client(object sender, RoutedEventArgs e)
        {
            SpisokUslug vhod = new SpisokUslug();
            vhod.Show();
            this.Close();
        }
        private void Upravlenie_Uslug(object sender, RoutedEventArgs e)
        {
            RedaktWindow vhod = new RedaktWindow();
            vhod.Show();          
            IsDirty = true;
            this.Close();
        }
        private void Nazad(object sender, RoutedEventArgs e)
        {
            MainWindow vhod = new MainWindow();
            vhod.Show();
            this.Close();
        }
        private void Sohranit(object sender, RoutedEventArgs e)
        {
            DataEntitiesEmployee.SaveChanges();
            MessageBox.Show("Вы сохранили изменения.");
        }
        private void Vihod(object sender, RoutedEventArgs e)
        {         
            MessageBox.Show("Проверьте всё-ли вы сохранили.");
            Close();
        }  
        
        private void GetEmployees(object sender, RoutedEventArgs e)
        {
            var employees = DataEntitiesEmployee.Services;
            var queryEmployee = from employee in employees
                                orderby employee.Title
                                select employee;
            foreach (Service emp in queryEmployee)
            {
                ListEmployee.Add(emp);
            }
            //Service.Items.Clear();
            Service.ItemsSource = ListEmployee;
        }            
        private void Window_Load(object sender, RoutedEventArgs e)
        {
            GetEmployees(sender,  e);
            Service.SelectedIndex = 0;
            System.Windows.Threading.DispatcherTimer timer = new System.Windows.Threading.DispatcherTimer();
            timer.Tick += new EventHandler(timerTick);
            timer.Interval = new TimeSpan(0, 0, 5);
            timer.Start();
        }
        
        private void RewriteEmployee(object sender, RoutedEventArgs e)
        {
            DataEntitiesEmployee = new Uslugi_Salona_CrasotiEntities1();
            ListEmployee.Clear();           
            GetEmployees(sender, e);
        }
        private void RefreshCommondBinding_Executed(object sender, RoutedEventArgs e)
        {
            RewriteEmployee(sender,  e);      
            IsDirty = true;
            BorderFind/*Visibility*/ = System.Windows.Visibility.Hidden;
        }
        private void Undo(object sender, RoutedEventArgs e)
        {
            RewriteEmployee(sender, e);
            IsDirty=true;
            
            GetEmployees(sender, e);
        }
        //поиск
        private void Naiti(object sender, RoutedEventArgs e)
        {
            string title = Poisk.Text;
            DataEntitiesEmployee = new Uslugi_Salona_CrasotiEntities1();
            ListEmployee.Clear();
            var employees = DataEntitiesEmployee.Services;
            var queryEmployee = from employee in employees
                                where employee.Title == title
                                orderby employee.Title
                                select employee;
            foreach (Service emp in queryEmployee)
            {
                ListEmployee.Add(emp);
            }
            if (ListEmployee.Count > 0)
            {
                Service.ItemsSource = ListEmployee;
                Poisk.IsEnabled = true;
            }
            else MessageBox.Show("Услуга \n" + Title + "\n не найдена", "Предупреждение", MessageBoxButton.OK, MessageBoxImage.Warning);
        }
        private void Poisk_Skidki(object sender, RoutedEventArgs e)
        {
            string discount = Poisk.Text;
            DataEntitiesEmployee = new Uslugi_Salona_CrasotiEntities1();
            ListEmployee.Clear();
            var employees = DataEntitiesEmployee.Services;
            var queryEmployee = from employee in employees
                                where employee.Title == discount
                                orderby employee.Discount
                                select employee;
            foreach (Service emp in queryEmployee)
            {
                ListEmployee.Add(emp);
            }
            if (ListEmployee.Count > 0)
            {
                Service.ItemsSource = ListEmployee;
                Poisk.IsEnabled = true;
            }
            else MessageBox.Show("Скидка \n" + Title + "\n не найдена", "Предупреждение", MessageBoxButton.OK, MessageBoxImage.Warning);
        }
        private void Poisk_TextChanged(object sender, TextChangedEventArgs e)
        {
            string title = Poisk.Text;
            DataEntitiesEmployee = new Uslugi_Salona_CrasotiEntities1();
            IsDirty = false;
        }
        private void Obnovlenie1(object sender, RoutedEventArgs e)
        {
            Kolvo.Content = Service.Items.Count.ToString();
        }       
        private void Updating(object sender, RoutedEventArgs e)
        {           
            Service.UpdateLayout();        
            for (int x = 0; x < 99; x++)
            {
                    Service.Items.Refresh();
                    Kolvo.Content = Service.Items.Count.ToString();
            }
            if (Service.SelectedItems != null)
                Service.Items.Refresh();
        }
        private void timerTick(object sender, EventArgs e)
        {                                       
            Service.Visibility = Visibility.Visible;
            if (Service.SelectedItems != null)
            Service.Items.Refresh();
        }
        private void Grid_IsVisibleChanged(object sender, DependencyPropertyChangedEventArgs e)
        {
            if (Visibility == Visibility.Visible)
            {
            // Uslugi_Salona_CrasotiEntities1.GetContext().ChangeTracker.Entries().ToList().ForEach(p => p.Reload());
            // Service.ItemsSource = Uslugi_Salona_CrasotiEntities1.GetContext().Services.ToList();
            }
        }
    }
}



/*
 private void Poisk_TextChanged(object sender, TextChangedEventArgs e)
 {
    Poisk.IsEnabled = true;  
 }
 private void FindCommandBinding_Execute(object sender, TextChangedEventArgs e)
 {
     BorderFind = System.Windows.Visibility.Visible;
     Poisk.IsEnabled = true;
 }
 private void Poisk_Skidki(object sender, RoutedEventArgs e)
 {
     BorderFind = System.Windows.Visibility.Visible;
     Poisk.IsEnabled = true;
     RewriteEmployee();          
 }
 private void FindCommandBinding_Execute(object sender, RoutedEventArgs e)
 {
     Visibility = System.Windows.Visibility.Visible;
     IsDirty = false;
 }*/
/*     
 *     |
      /|\
     //|\\
     //|\\
     //|\\
       | 
 */
/*
private void UndoCommandBinding_Executed(Object sender, ExecutedRoutedEventArgs e)
{
    RewriteEmployee();
    Service1.IsReadOnly = true;
    IsDirty = true;
}
private void EditComandBinding_Executed(object sender, ExecutedRoutedEventArgs e)
{
    DataGridEmployee.IsReadOnly = false;
    DataGridEmployee.BeginEdit();
    Service1 = false;
}
private void SaveCommandBinding_Executed(object sender, ExecutedRoutedEventArgs e)
{
    DataEntitiesEmployee.SaveChanges();
    IsDirty = true;
    Service1.IsReadOnly = true;
}
// this.UpdateLayout();
//(Service.SelectedItems as List<Service>);
*/