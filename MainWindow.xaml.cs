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

namespace Uslugi_Salona_Crasoti
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void AdminVhod(object sender, RoutedEventArgs e)
        {          
            {
                int counter = 0;
                if (password.Password == "0000")
                {
                    PanelAdmin vhod = new PanelAdmin();
                    vhod.Show();
                    this.Close();
                }
                else if (counter < 2)
                {
                    MessageBox.Show("Вы ввели неверный логин или пароль.Пожалуйста проверьте данные.");
                }
            }
        }
        private void Vhod(object sender, RoutedEventArgs e)
        {
            ZapisNaUslugu vhod = new ZapisNaUslugu();
            vhod.Show();
            this.Close();
        }
        private void Vihod(object sender, RoutedEventArgs e)
        {
            Close();
        }
    }
}
