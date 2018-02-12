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


namespace AoM_Launcher {
    public partial class main : Form {

        WebClient wc = new WebClient();
        String install_directory = Path.GetPathRoot(Environment.SystemDirectory) + "Games\\TinTimeStudios\\Trouble in TinTown\\";
        String downloadLocation = "http://slicedbread.ddns.net/install/";

        public main() {

            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e) {

            gameChecks();
            
  

        }

 

        private void btn_download_updates_Click(object sender, EventArgs e) {

            btn_download_updates.Text = "Updating...";
            btn_download_updates.Enabled = false;
            downloadOrUpdate();
            MessageBox.Show("Update Complete!");          
            gameChecks();


        }

        private void btn_play_Click(object sender, EventArgs e) {


            if (btn_play.Text == "Play!") {

                Process.Start(install_directory + "Millers Adventures in TinLand.exe");
                Application.Exit();

            }


            if (btn_play.Text == "Install") {


                Directory.CreateDirectory(install_directory);
                btn_play.Enabled = false;
                btn_play.Text = "Installing...";
                downloadOrUpdate();
                btn_play.Enabled = true;
                gameChecks();
                btn_play.Text = "Play!";


            }

            
        }



        private void downloadOrUpdate() {

            String[] files = new String[3] { "data.win", "Millers Adventures in TinLand.exe", "version.txt"};
            foreach (String file in files) {

                String temp_download = downloadLocation + file;
                Uri download = new Uri(temp_download);
                wc.DownloadFile(download, install_directory + file);

            }



            if (!File.Exists(install_directory + "AoM_Launcher.exe")) {
                String temp_download = downloadLocation + "AoM_Launcher.exe";
                Uri download = new Uri(temp_download);
                wc.DownloadFile(download, install_directory + "AoM_Launcher.exe");

            }

                if (!File.Exists(System.Environment.GetFolderPath(Environment.SpecialFolder.CommonDesktopDirectory) + "\\Trouble in TinTown.lnk")) {

                Uri download = new Uri(downloadLocation + "Trouble in TinTown.lnk");
                wc.DownloadFile(download, System.Environment.GetFolderPath(Environment.SpecialFolder.DesktopDirectory) + "\\Trouble in TinTown.lnk");

            }


        }


        private void gameChecks() {


            double local_version = 0;
            double remote_version = 0;



            if (!Directory.Exists(install_directory)) {

                btn_play.Text = "Install";

            }
            else {

                local_version = Convert.ToDouble(System.IO.File.ReadAllText(install_directory + "\\version.txt"));
                remote_version = Convert.ToDouble(wc.DownloadString(downloadLocation + "version.txt"));

            }

            //Convert full numbers to decimals
            remote_version *= .001;
            local_version *= .001;

            //Delete beards.ini if in beta

    


            //Check for updates
            if (local_version != remote_version) {

                btn_download_updates.Enabled = true;
                MessageBox.Show("Update version " + Convert.ToString(remote_version) + " available.");

            }

            //Display version
            lbl_version.Text = "Current version: " + local_version;

        }
    }
}
