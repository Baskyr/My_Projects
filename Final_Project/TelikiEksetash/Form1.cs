using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace TelikiEksetash
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            
        }

        private void rb1_CheckedChanged(object sender, EventArgs e)
        {
            if(rb1.Checked)
            {
                if (nuA.Value > lb.SelectedIndex)
                {
                    MessageBox.Show("to A einai megalytero tou B");
                }
                else
                    MessageBox.Show("to A>B den isxyei");
            }
        }

        private void rb2_CheckedChanged(object sender, EventArgs e)
        {
            if (rb2.Checked)
            {
                if (nuA.Value < lb.SelectedIndex)
                {
                    MessageBox.Show("To B einai megalytero");
                }
                else
                    MessageBox.Show("to A<B den isxyei");
            }
                
                
        }

        private void checkBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox1.Checked)
                groupBox1.Visible = false;
            else
                groupBox1.Visible = true;
        }

        private void exodosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Application.Exit();

        }
        decimal p = 0;
        private void plithosArithmitikwnPraksewnToolStripMenuItem_Click(object sender, EventArgs e)
        {
            
            while(tb.Text!=null)
            {
                p++;
            }
            MessageBox.Show("To plithos twn praksewn einai " + p);
        }

        private void bt_Click(object sender, EventArgs e)
        {
            tb.Clear();
            p = 0;
        }

        private void nuA_ValueChanged(object sender, EventArgs e)
        {
            if(rb1.Checked)
            {
                
                tb.Text = Convert.ToString(nuA.Value)+ "+" + Convert.ToString(lb.SelectedIndex) + "=";
            }
        }

        private void lb_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(rb2.Checked)
            {
                tb.Text = Convert.ToString(nuA.Value)+ "*"+ Convert.ToString(lb.SelectedIndex)+"=";
            }
        }
    }
}
