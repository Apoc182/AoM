using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

using System.Net;
using System.IO;
using System.Diagnostics;

namespace AoM_Launcher {
    public class DownloadTools {


        public static async Task downloadOrUpdate(WebClient wc) {
            //Variables
            String downloadLocation = "http://slicedbread.ddns.net/install/";
            String install_directory = Path.GetPathRoot(Environment.SystemDirectory) + "Games\\TinTimeStudios\\Trouble in TinTown\\";

            //If a directory does not exist, create it.
            if (!Directory.Exists(install_directory)) Directory.CreateDirectory(install_directory);

            //Downloads all the required files async
            String[] files = new String[4] { "data.win", "Millers Adventures in TinLand.exe", "version.txt", "llauncher.bat" };
            foreach (String file in files) {

                String temp_download = downloadLocation + file;
                Uri download = new Uri(temp_download);
                await Task.Run(() => wc.DownloadFile(download, install_directory + file));

            }

            //Downloads the launcher

            String temp_download1 = downloadLocation + "AoM_Launcher.exe";
            Uri download1 = new Uri(temp_download1);
            if (File.Exists(install_directory + "AoM_Launcher.exe")) {
                await Task.Run(() => wc.DownloadFile(download1, install_directory + "temp.exe"));
            }
            else {
                await Task.Run(() => wc.DownloadFile(download1, install_directory + "AoM_Launcher.exe"));
            }

            //Downloads the shortcut if you don't have it.
            if (!File.Exists(System.Environment.GetFolderPath(Environment.SpecialFolder.CommonDesktopDirectory) + "\\Trouble in TinTown.lnk")) {

                Uri download = new Uri(downloadLocation + "Trouble in TinTown.lnk");
                wc.DownloadFile(download, System.Environment.GetFolderPath(Environment.SpecialFolder.DesktopDirectory) + "\\Trouble in TinTown.lnk");

            }



        }

        public static bool checkIfInstalled(WebClient wc) {
            //Variables
            String install_directory = Path.GetPathRoot(Environment.SystemDirectory) + "Games\\TinTimeStudios\\Trouble in TinTown\\";

            if (Directory.Exists(install_directory)) {
                return true;
            }
            else {
                return false;
            }
        }

        public static double checkForUpdates(WebClient wc) {

            //Variables
            double local_version = 0;
            double remote_version = 0;
            String install_directory = Path.GetPathRoot(Environment.SystemDirectory) + "Games\\TinTimeStudios\\Trouble in TinTown\\";
            String downloadLocation = "http://slicedbread.ddns.net/install/";

            //Get the local and remote versions.
            if (!File.Exists(System.IO.File.ReadAllText(install_directory + "\\version.txt"))) {

                local_version = Convert.ToDouble(System.IO.File.ReadAllText(install_directory + "\\version.txt"));

            }
            else {

                MessageBox.Show("Unable to locate local version. Please contact TinTime");

            }


            try {

                remote_version = Convert.ToDouble(wc.DownloadString(downloadLocation + "version.txt"));

            }

            catch (WebException) {

                MessageBox.Show("Unable to locate remote version. Please contact TinTime");

            }


            //Convert full numbers to decimals
            remote_version *= .001;
            local_version *= .001;


            //Check for updates
            if (local_version != remote_version) {

                return remote_version;

            }
            else {

                return 0;

            }

        }

        //Restarts the software to update it
        public static void restart() {

            String install_directory = Path.GetPathRoot(Environment.SystemDirectory) + "Games\\TinTimeStudios\\Trouble in TinTown\\";

            MessageBox.Show("Launcher must now restart to update.");
            System.Environment.CurrentDirectory = install_directory;
            Process.Start(install_directory + "llauncher.bat");
            Application.Exit();

        }






    }
}
