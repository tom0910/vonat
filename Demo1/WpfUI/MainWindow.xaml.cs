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

namespace WpfUI
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private Dictionary<string, int> fair =
        new Dictionary<string, int>();

        private Dictionary<string, double> discount =
        new Dictionary<string, double>();

        private Dictionary<string, int> service =
        new Dictionary<string, int>();

        int cityTravelPrice = 0;
        int serviceTotal = 0;
        double chosenDiscount = 1; // set to 100%
        double ticketTotal = 0;

        public MainWindow()
        {
            InitializeComponent();

            this.EnumVisual(this);

            fair.Add("Budapest", 1500);
            fair.Add("Hatvan", 1300);
            fair.Add("Székesfehérvár", 2000);
            fair.Add("Kecskemét", 2800);
            discount.Add("Nappali", 0.5);
            discount.Add("Nyugdíjas", 0.5);
            discount.Add("Törzsutas", 0.7);
            service.Add("Kutya", 800);
            service.Add("Bicikli", 600);
            service.Add("Poggyász", 400);

            total.Text = "0 Ft"; 
        }

        public void EnumVisual(Visual visual)
        {
            for (int i = 0; i < VisualTreeHelper.GetChildrenCount(visual); i++)
            {
                Visual childVisual = (Visual)VisualTreeHelper.GetChild(visual, i);          
            }
        }

        private void btn1_Click(object sender, RoutedEventArgs e)
        {
            if (cityTravelPrice == 0)
            {
                MessageBox.Show("Válasszon várost mielőtt fizetne!");
                return;
            }
            this.disableControlls();
            this.ticketTotal = (this.serviceTotal + this.cityTravelPrice)*chosenDiscount;
            total.Text = this.ticketTotal.ToString() + "Ft";
        }
        private void btn2_Click(object sender, RoutedEventArgs e)
        {
            foreach(string key in this.fair.Keys)
            {
                RadioButton btn = this.FindName(key) as RadioButton;
                btn.SetCurrentValue(RadioButton.IsCheckedProperty, false);
            }
            //Budapest.SetCurrentValue(CheckBox.IsCheckedProperty, false);
            foreach (string key in this.discount.Keys)
            {
                RadioButton btn = this.FindName(key) as RadioButton;
                btn.SetCurrentValue(RadioButton.IsCheckedProperty, false);
            }
            foreach (string key in this.service.Keys)
            {
                CheckBox btn = this.FindName(key) as CheckBox;
                btn.SetCurrentValue(CheckBox.IsCheckedProperty, false);
            }
            cityTravelPrice = 0;
            serviceTotal = 0;
            chosenDiscount = 1; // set to 100%
            ticketTotal = 0;
            total.Text = "0 Ft";
            this.enableControlls();
        }
        private void disableControlls()
        {
            foreach (string key in this.fair.Keys)
            {
                RadioButton btn = this.FindName(key) as RadioButton;
                btn.SetCurrentValue(RadioButton.IsEnabledProperty, false);
            }
            foreach (string key in this.discount.Keys)
            {
                RadioButton btn = this.FindName(key) as RadioButton;
                btn.SetCurrentValue(RadioButton.IsEnabledProperty, false);
            }
            foreach (string key in this.service.Keys)
            {
                CheckBox btn = this.FindName(key) as CheckBox;
                btn.SetCurrentValue(CheckBox.IsEnabledProperty, false);
            }
        }

        private void enableControlls()
        {
            foreach (string key in this.fair.Keys)
            {
                RadioButton btn = this.FindName(key) as RadioButton;
                btn.SetCurrentValue(RadioButton.IsEnabledProperty, true);
            }
            foreach (string key in this.discount.Keys)
            {
                RadioButton btn = this.FindName(key) as RadioButton;
                btn.SetCurrentValue(RadioButton.IsEnabledProperty, true);
            }
            foreach (string key in this.service.Keys)
            {
                CheckBox btn = this.FindName(key) as CheckBox;
                btn.SetCurrentValue(CheckBox.IsEnabledProperty, true);
            }
        }

        void TravelCity(object sender, RoutedEventArgs e)
        {
            RadioButton cityBtn = (sender as RadioButton);
            this.cityTravelPrice = this.fair[cityBtn.Name];
         //   total.Text = cityTravelPrice.ToString();
        }
        void Discount(object sender, RoutedEventArgs e)
        {
            RadioButton discBtn = (sender as RadioButton);
            this.chosenDiscount = this.discount[discBtn.Name];
         //   total.Text = chosenDiscount.ToString();
        }

        void ServiceChecked(object sender, RoutedEventArgs e)
        {
            CheckBox servBtn = (sender as CheckBox);
            int chosenService = this.service[servBtn.Name];
            this.serviceTotal += chosenService;
         //   total.Text = this.serviceTotal.ToString();
        }

        void ServiceUnchecked(object sender, RoutedEventArgs e)
        {
            CheckBox servBtn = (sender as CheckBox);
            int chosenService = this.service[servBtn.Name];
            this.serviceTotal -= chosenService;
         //   total.Text = this.serviceTotal.ToString();
        }
    }
}
