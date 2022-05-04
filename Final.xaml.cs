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

namespace Uslugi_Salona_Crasoti
{
    /// <summary>
    /// Логика взаимодействия для Final.xaml
    /// </summary>
    public partial class Final : Window
    {
        public Final()
        {
            InitializeComponent();
        }
        private void Otmena(object sender, RoutedEventArgs e)
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
