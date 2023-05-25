using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.IO;
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

namespace sol
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private ObservableCollection<Contact> Contacts {  get; set; }
        public MainWindow()
        {
            InitializeComponent();
            Contacts = new();
            DataContext = Contacts;
        }
        private void MenuItem_AddContact(object sender, RoutedEventArgs e)
        {
            Opacity = 0.5;
            var addContactWindow=new AddContactWindow();
            if(addContactWindow.ShowDialog().Value)
            {
                Contacts.Add(addContactWindow.NewContact);
            }
            Opacity = 1;
        }
        private void MenuItem_Clear(object sender, RoutedEventArgs e)
        { 
            Contacts.Clear();
        }
        private void MenuItem_Exit(object sender, RoutedEventArgs e)
        {
            Close();
        }
        private void MenuItem_About(object sender, RoutedEventArgs e)
        { 
            MessageBox.Show("This is a simple contact manager.","Contact Manager",MessageBoxButton.OK,
                MessageBoxImage.Information);
        }

        private void MenuItem_Import(object sender, RoutedEventArgs e)
        {
            OpenFileDialog openFileDialog = new();
            string path;
            if (openFileDialog.ShowDialog() == true)
            {
                path = File.ReadAllText(openFileDialog.FileName);
                System.Xml.Serialization.XmlSerializer x = new(Contacts.GetType());
                FileStream fs = File.Open(path, FileMode.Open);
                object? tmp = x.Deserialize(fs);
                if(tmp is not null)
                    Contacts = (ObservableCollection<Contact>)tmp;
            }
        }
        private void MenuItem_Export(object sender, RoutedEventArgs e)
        {
            OpenFileDialog openFileDialog = new();
            string path;
            if (openFileDialog.ShowDialog() == true)
            {
                path = File.ReadAllText(openFileDialog.FileName);
                System.Xml.Serialization.XmlSerializer x = new(Contacts.GetType()); 
                FileStream fs=File.Open(path, FileMode.Open);
                x.Serialize(fs, Contacts);
            }
        }
    }
}
