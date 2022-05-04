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
using System.Windows.Shapes;
using System.Globalization;
using System.Data.Entity;
using Uslugi_Salona_Crasoti;
using System.Data.Services.Client;
using System.Data.Services;
using System.Collections.ObjectModel;

namespace Uslugi_Salona_Crasoti
{
    /// <summary>
    /// Логика взаимодействия для RedaktWindow.xaml
    /// </summary>
    public partial class RedaktWindow : Window
    {
        public static Uslugi_Salona_CrasotiEntities1 DataEntitiesEmployee { get; set; }
        ObservableCollection<Service> ListEmployee;
        Service Service1 = new Service();
        public RedaktWindow()
        {
            DataContext = Service1;
            //DataContext = DataEntitiesEmployee;
            DataEntitiesEmployee = new Uslugi_Salona_CrasotiEntities1();
            InitializeComponent();
            ListEmployee = new ObservableCollection<Service>();
        }  
        private void Sohranit(object sender, RoutedEventArgs e)
        {
            if (Service1.ID == 0)
            {
                Uslugi_Salona_CrasotiEntities1.GetContext().Services.Add(Service1);
            }
            try
            {
                Uslugi_Salona_CrasotiEntities1.GetContext().SaveChanges();
                MessageBox.Show("Вы сохранили изменения.");
                this.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message.ToString());
            }
            DataEntitiesEmployee.SaveChanges();                     
            MessageBox.Show("Вы сохранили изменения.");
            PanelAdmin vhod = new PanelAdmin();
            vhod.Show();
            this.Close();
        }
        private void Nazad(object sender, RoutedEventArgs e)
        {
            PanelAdmin vhod = new PanelAdmin();
            vhod.Show();
            this.Close();
        }
    }
}








//Service1.BeginEdit();
//Service employee = Uslugi_Salona_Crasoti.Service.CreateEmployee(-1, Title, 1000, 1000, Title, 1000, Title);
//try
//{
//    DataEntitiesEmployee.Services.Add(employee);
//    ListEmployee.Add(employee);
//    Service.SelectedIndex = Service.Items.Count - 1;
//    Service.Focus();
//}
//catch (DataServiceRequestException ex)
//{
//    throw new ApplicationException("Ошибка изменения данных" + ex.ToString());
//}
//Service employee = Uslugi_Salona_Crasoti.Service.CreateEmployee(-1, "", 0, 0, "", 0, "");
//MessageBox.Show("Вы уверены,что хотите это удалить? Пожалуйста проверьте данные.");

//Service emp = Service.SelectedItem as Service;
//if (emp != null)
//{
//    MessageBoxResult result = MessageBox.Show("" + emp.Title.Trim() + emp.Cost + emp.Discount, "", MessageBoxButton.OKCancel);
//    if (result == MessageBoxResult.OK)
//    {
//        DataEntitiesEmployee.Services.Remove(emp);
//        Service.SelectedIndex = Service.SelectedIndex == 0 ? 1 : Service.SelectedIndex - 1;
//        ListEmployee.Remove(emp);
//        DataEntitiesEmployee.SaveChanges();
//    }
//    else
//    {
//        MessageBox.Show("Выберите строку для удаления");
//    }
// if(Service1)
//try()
