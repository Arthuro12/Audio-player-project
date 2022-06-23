using Microsoft.Win32;
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
using System.Windows.Threading;

namespace AudioPlayer
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MediaPlayer player = new MediaPlayer();
       
        public MainWindow()
        {
            InitializeComponent();

            DispatcherTimer timer = new DispatcherTimer();
            timer.Interval = TimeSpan.FromSeconds(1);
            timer.Tick += Update;
            timer.Start();
        }

        private void Update(object sender, EventArgs e)
        {
            if (player.Source != null)
            {
                progressBar.Minimum = 0;
                progressBar.Maximum = player.NaturalDuration.TimeSpan.TotalSeconds;
                progressBar.Value = player.Position.TotalSeconds;
            }
        }

        private void openFile_Click(object sender, RoutedEventArgs e)
        {
            OpenFileDialog fileDialog = new OpenFileDialog(); // Opens the file explorer
            
            fileDialog.Filter = "MP3 files (*.mp3)|*.mp3|All files (*.*)|*.*"; // Filters the file types that the user can open, in this case he can only open mp3 files

            // ShowDialog opens the dialog box,
            // if it is open we open the file path, then we read the file
            // and the path name is displayed in our textbox
            if (fileDialog.ShowDialog() == true)
            {
                player.Open(new System.Uri(fileDialog.FileName));
                filePath.Text = fileDialog.FileName;
                //player.Play();             
            }
        }

        private void play_Click(object sender, RoutedEventArgs e)
        {
            player.Play();
        }

        private void pause_Click(object sender, RoutedEventArgs e)
        {
            player.Pause();
        }

        private void stop_Click(object sender, RoutedEventArgs e)
        {
            player.Stop();
        }

        private void volume_ValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
            player.Volume = volume.Value / 100;
        }
    }
}
