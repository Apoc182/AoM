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
            this.lbl_info = new System.Windows.Forms.Label();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // btn_play
            // 
            this.btn_play.Location = new System.Drawing.Point(85, 277);
            this.btn_play.Name = "btn_play";
            this.btn_play.Size = new System.Drawing.Size(75, 23);
            this.btn_play.TabIndex = 0;
            this.btn_play.Text = "Play!";
            this.btn_play.UseVisualStyleBackColor = true;
            this.btn_play.Click += new System.EventHandler(this.btn_play_Click);
            // 
            // btn_download_updates
            // 
            this.btn_download_updates.Enabled = false;
            this.btn_download_updates.Location = new System.Drawing.Point(243, 277);
            this.btn_download_updates.Name = "btn_download_updates";
            this.btn_download_updates.Size = new System.Drawing.Size(75, 23);
            this.btn_download_updates.TabIndex = 1;
            this.btn_download_updates.Text = "Update";
            this.btn_download_updates.UseVisualStyleBackColor = true;
            this.btn_download_updates.Click += new System.EventHandler(this.btn_download_updates_Click);
            // 
            // lbl_version
            // 
            this.lbl_version.AutoSize = true;
            this.lbl_version.Location = new System.Drawing.Point(82, 321);
            this.lbl_version.Name = "lbl_version";
            this.lbl_version.Size = new System.Drawing.Size(0, 13);
            this.lbl_version.TabIndex = 2;
            // 
            // lbl_info
            // 
            this.lbl_info.AutoSize = true;
            this.lbl_info.Location = new System.Drawing.Point(88, 342);
            this.lbl_info.Name = "lbl_info";
            this.lbl_info.Size = new System.Drawing.Size(230, 13);
            this.lbl_info.TabIndex = 3;
            this.lbl_info.Text = "Note: Please add to your antivirus exception list";
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = ((System.Drawing.Image)(resources.GetObject("pictureBox1.Image")));
            this.pictureBox1.Location = new System.Drawing.Point(174, 12);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(67, 131);
            this.pictureBox1.TabIndex = 4;
            this.pictureBox1.TabStop = false;
            // 
            // main
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(419, 460);
            this.Controls.Add(this.pictureBox1);
            this.Controls.Add(this.lbl_info);
            this.Controls.Add(this.lbl_version);
            this.Controls.Add(this.btn_download_updates);
            this.Controls.Add(this.btn_play);
            this.Name = "main";
            this.Text = "Trouble in TinTown Launcher";
            this.Load += new System.EventHandler(this.Form1_Load);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btn_play;
        private System.Windows.Forms.Button btn_download_updates;
        private System.Windows.Forms.Label lbl_version;
        private System.Windows.Forms.Label lbl_info;
        private System.Windows.Forms.PictureBox pictureBox1;
    }
}

