namespace AoM_Launcher {
    partial class main {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing) {
            if (disposing && (components != null)) {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent() {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(main));
            this.btn_play = new System.Windows.Forms.Button();
            this.btn_download_updates = new System.Windows.Forms.Button();
            this.lbl_version = new System.Windows.Forms.Label();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.btn_exit = new System.Windows.Forms.Button();
            this.pic_title = new System.Windows.Forms.PictureBox();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pic_title)).BeginInit();
            this.SuspendLayout();
            // 
            // btn_play
            // 
            this.btn_play.FlatAppearance.MouseOverBackColor = System.Drawing.Color.Red;
            this.btn_play.Location = new System.Drawing.Point(208, 352);
            this.btn_play.Name = "btn_play";
            this.btn_play.Size = new System.Drawing.Size(96, 32);
            this.btn_play.TabIndex = 0;
            this.btn_play.Text = "Play!";
            this.btn_play.UseVisualStyleBackColor = true;
            this.btn_play.Click += new System.EventHandler(this.btn_play_Click);
            // 
            // btn_download_updates
            // 
            this.btn_download_updates.Enabled = false;
            this.btn_download_updates.Location = new System.Drawing.Point(208, 400);
            this.btn_download_updates.Name = "btn_download_updates";
            this.btn_download_updates.Size = new System.Drawing.Size(96, 32);
            this.btn_download_updates.TabIndex = 1;
            this.btn_download_updates.Text = "Update";
            this.btn_download_updates.UseVisualStyleBackColor = true;
            this.btn_download_updates.Click += new System.EventHandler(this.btn_download_updates_Click);
            // 
            // lbl_version
            // 
            this.lbl_version.AutoSize = true;
            this.lbl_version.Location = new System.Drawing.Point(25, 218);
            this.lbl_version.Name = "lbl_version";
            this.lbl_version.Size = new System.Drawing.Size(0, 13);
            this.lbl_version.TabIndex = 2;
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = global::AoM_Launcher.Properties.Resources.miller;
            this.pictureBox1.Location = new System.Drawing.Point(224, 192);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(64, 128);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.CenterImage;
            this.pictureBox1.TabIndex = 4;
            this.pictureBox1.TabStop = false;
            // 
            // btn_exit
            // 
            this.btn_exit.Location = new System.Drawing.Point(208, 448);
            this.btn_exit.Name = "btn_exit";
            this.btn_exit.Size = new System.Drawing.Size(96, 32);
            this.btn_exit.TabIndex = 5;
            this.btn_exit.Text = "Exit";
            this.btn_exit.UseVisualStyleBackColor = true;
            this.btn_exit.Click += new System.EventHandler(this.btn_exit_Click);
            // 
            // pic_title
            // 
            this.pic_title.Image = ((System.Drawing.Image)(resources.GetObject("pic_title.Image")));
            this.pic_title.InitialImage = ((System.Drawing.Image)(resources.GetObject("pic_title.InitialImage")));
            this.pic_title.Location = new System.Drawing.Point(0, 16);
            this.pic_title.Name = "pic_title";
            this.pic_title.Size = new System.Drawing.Size(512, 144);
            this.pic_title.TabIndex = 6;
            this.pic_title.TabStop = false;
            // 
            // main
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.InfoText;
            this.ClientSize = new System.Drawing.Size(512, 512);
            this.Controls.Add(this.pic_title);
            this.Controls.Add(this.btn_exit);
            this.Controls.Add(this.pictureBox1);
            this.Controls.Add(this.lbl_version);
            this.Controls.Add(this.btn_download_updates);
            this.Controls.Add(this.btn_play);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "main";
            this.Text = "Trouble in TinTown Launcher";
            this.Load += new System.EventHandler(this.Form1_Load);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pic_title)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btn_play;
        private System.Windows.Forms.Button btn_download_updates;
        private System.Windows.Forms.Label lbl_version;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Button btn_exit;
        private System.Windows.Forms.PictureBox pic_title;
    }
}

