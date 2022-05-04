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
    /// <summary>
    /// Логика взаимодействия для RedaktWindow_Client.xaml
    /// </summary>
    public partial class RedaktWindow_Client : Window
    {
        public static Uslugi_Salona_CrasotiEntities1 DataEntitiesEmployee { get; set; }
        ObservableCollection<Service> ListEmployee;
        public RedaktWindow_Client()
        {
            DataEntitiesEmployee = new Uslugi_Salona_CrasotiEntities1();
            InitializeComponent();
            ListEmployee = new ObservableCollection<Service>();
        }

        private void Nazad(object sender, RoutedEventArgs e)
        {
            SpisokUslug vhod = new SpisokUslug();
            vhod.Show();
            this.Close();
        }
        private void Sohranit(object sender, RoutedEventArgs e)
        {
            DataEntitiesEmployee.SaveChanges();
            MessageBox.Show("Вы сохранили изменения.");
            
        }

            //try
            //{
            //    DataEntitiesEmployee.Services.Add(employee);
            //    ListEmployee.Add(employee);
            //    Service.SelectedIndex = Service.Items.Count - 1;
            //    Service.Focus();
            //}
            //catch (DataServiceRequestException ex)
            //{
            //    throw new ApplicationException("Ошибка добавления данных" + ex.ToString());
            //}
        }
    }

