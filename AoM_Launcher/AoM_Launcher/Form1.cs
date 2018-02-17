using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

using System.Net;
using System.IO;
using System.Diagnostics;
using System.Threading;


namespace AoM_Launcher {
    public partial class main : Form {

        WebClient wc = new WebClient();
        String install_directory = Path.GetPathRoot(Environment.SystemDirectory) + "Games\\TinTimeStudios\\Trouble in TinTown\\";
        String downloadLocation = "http://slicedbread.ddns.net/install/";
        bool installed = false;

       

        public main() {

            CenterToScreen();
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e) {


            CenterToScreen();

            

            //Initialise a connection.
            WebClient connection = new WebClient();

            //Check for an installation
            if (DownloadTools.checkIfInstalled(connection)) {
                installed = true;

                //If the current application is not located in the install, open it.
                if (AppDomain.CurrentDomain.BaseDirectory != install_directory) {
                    Process.Start(install_directory + "AoM_Launcher.exe");
                    Application.Exit();

                }

            }
            else {

                btn_play.Text = "Install";
                installed = false;


            }

            //Check for updates if installed
            if (installed) {
                var temp_update_number = DownloadTools.checkForUpdates(connection);

                if (temp_update_number > 0){

                    MessageBox.Show("Update version " + temp_update_number.ToString());
                    btn_download_updates.Enabled = true;
                }

            }

        }



        private async void btn_download_updates_Click(object sender, EventArgs e) {

            //Load up install complete sound
            var player = new System.Media.SoundPlayer();
            player.Stream = Properties.Resources.cunt_long;

            if (installed) {

                btn_download_updates.Enabled = false;
                btn_play.Enabled = false;
                btn_download_updates.Text = "Updating...";
                pictureBox1.Image = AoM_Launcher.Properties.Resources.miller_walk;
                await DownloadTools.downloadOrUpdate(wc);
                player.Play();
                pictureBox1.Image = AoM_Launcher.Properties.Resources.miller;
                DownloadTools.restart();

            }

        }

        private async void btn_play_Click(object sender, EventArgs e) {

            //Load up install complete sound
            var player = new System.Media.SoundPlayer();
            player.Stream = Properties.Resources.cunt_long;

            if (installed) {

                Process.Start(install_directory + "Millers Adventures in TinLand.exe");
                Application.Exit();

            }
            else {

                btn_play.Enabled = false;
                btn_play.Text = "Installing...";
                pictureBox1.Image = AoM_Launcher.Properties.Resources.miller_walk;
                await DownloadTools.downloadOrUpdate(wc);
                player.Play();
                pictureBox1.Image = AoM_Launcher.Properties.Resources.miller;
                btn_play.Enabled = true;
                btn_play.Text = "Play!";
                installed = true;




            }



        }

        private void btn_exit_Click(object sender, EventArgs e) {
            Application.Exit();
        }
    }
}