
namespace TelikiEksetash
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.nuA = new System.Windows.Forms.NumericUpDown();
            this.comboBox1 = new System.Windows.Forms.ComboBox();
            this.lb = new System.Windows.Forms.ListBox();
            this.rb1 = new System.Windows.Forms.RadioButton();
            this.rb2 = new System.Windows.Forms.RadioButton();
            this.checkBox1 = new System.Windows.Forms.CheckBox();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.tb = new System.Windows.Forms.TextBox();
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.menuToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.plithosArithmitikwnPraksewnToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.exodosToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.bt = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.nuA)).BeginInit();
            this.groupBox1.SuspendLayout();
            this.menuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // nuA
            // 
            this.nuA.Increment = new decimal(new int[] {
            2,
            0,
            0,
            0});
            this.nuA.Location = new System.Drawing.Point(18, 33);
            this.nuA.Maximum = new decimal(new int[] {
            10,
            0,
            0,
            0});
            this.nuA.Minimum = new decimal(new int[] {
            10,
            0,
            0,
            -2147483648});
            this.nuA.Name = "nuA";
            this.nuA.Size = new System.Drawing.Size(120, 22);
            this.nuA.TabIndex = 0;
            this.nuA.Value = new decimal(new int[] {
            10,
            0,
            0,
            -2147483648});
            this.nuA.ValueChanged += new System.EventHandler(this.nuA_ValueChanged);
            // 
            // comboBox1
            // 
            this.comboBox1.FormattingEnabled = true;
            this.comboBox1.Items.AddRange(new object[] {
            "+",
            "-",
            "*",
            "/"});
            this.comboBox1.Location = new System.Drawing.Point(159, 31);
            this.comboBox1.Name = "comboBox1";
            this.comboBox1.Size = new System.Drawing.Size(121, 24);
            this.comboBox1.TabIndex = 1;
            this.comboBox1.Tag = "";
            this.comboBox1.Text = "*";
            // 
            // lb
            // 
            this.lb.FormattingEnabled = true;
            this.lb.ItemHeight = 16;
            this.lb.Items.AddRange(new object[] {
            "-5",
            "-2",
            "3",
            "5",
            "7"});
            this.lb.Location = new System.Drawing.Point(286, 35);
            this.lb.Name = "lb";
            this.lb.Size = new System.Drawing.Size(120, 20);
            this.lb.TabIndex = 2;
            this.lb.SelectedIndexChanged += new System.EventHandler(this.lb_SelectedIndexChanged);
            // 
            // rb1
            // 
            this.rb1.AutoSize = true;
            this.rb1.Location = new System.Drawing.Point(428, 66);
            this.rb1.Name = "rb1";
            this.rb1.Size = new System.Drawing.Size(55, 21);
            this.rb1.TabIndex = 3;
            this.rb1.TabStop = true;
            this.rb1.Text = "Α>Β";
            this.rb1.UseVisualStyleBackColor = true;
            this.rb1.CheckedChanged += new System.EventHandler(this.rb1_CheckedChanged);
            // 
            // rb2
            // 
            this.rb2.AutoSize = true;
            this.rb2.Location = new System.Drawing.Point(428, 33);
            this.rb2.Name = "rb2";
            this.rb2.Size = new System.Drawing.Size(55, 21);
            this.rb2.TabIndex = 4;
            this.rb2.TabStop = true;
            this.rb2.Text = "Α<Β";
            this.rb2.UseVisualStyleBackColor = true;
            this.rb2.CheckedChanged += new System.EventHandler(this.rb2_CheckedChanged);
            // 
            // checkBox1
            // 
            this.checkBox1.AutoSize = true;
            this.checkBox1.Location = new System.Drawing.Point(481, 195);
            this.checkBox1.Name = "checkBox1";
            this.checkBox1.Size = new System.Drawing.Size(88, 21);
            this.checkBox1.TabIndex = 6;
            this.checkBox1.Text = "Apokripsi";
            this.checkBox1.UseVisualStyleBackColor = true;
            this.checkBox1.CheckedChanged += new System.EventHandler(this.checkBox1_CheckedChanged);
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.nuA);
            this.groupBox1.Controls.Add(this.comboBox1);
            this.groupBox1.Controls.Add(this.rb1);
            this.groupBox1.Controls.Add(this.rb2);
            this.groupBox1.Controls.Add(this.lb);
            this.groupBox1.Location = new System.Drawing.Point(193, 27);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(518, 150);
            this.groupBox1.TabIndex = 7;
            this.groupBox1.TabStop = false;
            // 
            // tb
            // 
            this.tb.Location = new System.Drawing.Point(13, 50);
            this.tb.Multiline = true;
            this.tb.Name = "tb";
            this.tb.Size = new System.Drawing.Size(164, 338);
            this.tb.TabIndex = 8;
            // 
            // menuStrip1
            // 
            this.menuStrip1.ImageScalingSize = new System.Drawing.Size(20, 20);
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.menuToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(800, 28);
            this.menuStrip1.TabIndex = 9;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // menuToolStripMenuItem
            // 
            this.menuToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.plithosArithmitikwnPraksewnToolStripMenuItem,
            this.exodosToolStripMenuItem});
            this.menuToolStripMenuItem.Name = "menuToolStripMenuItem";
            this.menuToolStripMenuItem.Size = new System.Drawing.Size(60, 24);
            this.menuToolStripMenuItem.Text = "Menu";
            // 
            // plithosArithmitikwnPraksewnToolStripMenuItem
            // 
            this.plithosArithmitikwnPraksewnToolStripMenuItem.Name = "plithosArithmitikwnPraksewnToolStripMenuItem";
            this.plithosArithmitikwnPraksewnToolStripMenuItem.Size = new System.Drawing.Size(290, 26);
            this.plithosArithmitikwnPraksewnToolStripMenuItem.Text = "Plithos Arithmitikwn praksewn";
            this.plithosArithmitikwnPraksewnToolStripMenuItem.Click += new System.EventHandler(this.plithosArithmitikwnPraksewnToolStripMenuItem_Click);
            // 
            // exodosToolStripMenuItem
            // 
            this.exodosToolStripMenuItem.Name = "exodosToolStripMenuItem";
            this.exodosToolStripMenuItem.Size = new System.Drawing.Size(290, 26);
            this.exodosToolStripMenuItem.Text = "Exodos";
            this.exodosToolStripMenuItem.Click += new System.EventHandler(this.exodosToolStripMenuItem_Click);
            // 
            // bt
            // 
            this.bt.Location = new System.Drawing.Point(354, 195);
            this.bt.Name = "bt";
            this.bt.Size = new System.Drawing.Size(75, 23);
            this.bt.TabIndex = 10;
            this.bt.Text = "Clear";
            this.bt.UseVisualStyleBackColor = true;
            this.bt.Click += new System.EventHandler(this.bt_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(15, 12);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(76, 17);
            this.label1.TabIndex = 5;
            this.label1.Text = "Arithmos A";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(158, 12);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(47, 17);
            this.label2.TabIndex = 11;
            this.label2.Text = "Praksi";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(285, 11);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(76, 17);
            this.label3.TabIndex = 5;
            this.label3.Text = "Arithmos B";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(425, 13);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(62, 17);
            this.label4.TabIndex = 12;
            this.label4.Text = "Synthikh";
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.bt);
            this.Controls.Add(this.tb);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.checkBox1);
            this.Controls.Add(this.menuStrip1);
            this.MainMenuStrip = this.menuStrip1;
            this.Name = "Form1";
            this.Text = "Form1";
            this.Load += new System.EventHandler(this.Form1_Load);
            ((System.ComponentModel.ISupportInitialize)(this.nuA)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.NumericUpDown nuA;
        private System.Windows.Forms.ComboBox comboBox1;
        private System.Windows.Forms.ListBox lb;
        private System.Windows.Forms.RadioButton rb1;
        private System.Windows.Forms.RadioButton rb2;
        private System.Windows.Forms.CheckBox checkBox1;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.TextBox tb;
        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem menuToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem plithosArithmitikwnPraksewnToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem exodosToolStripMenuItem;
        private System.Windows.Forms.Button bt;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
    }
}

