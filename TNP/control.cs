using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace TNP
{
    public partial class control : Form
    {
        public control()
        {
            InitializeComponent();
        }

        public string conn = "Server=localhost;Port=3306;Database=admins;Uid=root";

        variable var = new variable();
        private void control_Load(object sender, EventArgs e)
        {
            comboBox3.Items.AddRange(    ///  backlocks                
                var.obj3
                );
            comboBox2.Items.AddRange(    ///  backlocks                
                var.obj2
               );




            comboBox1.Items.AddRange(  // branch
            var.obj1
              );
            
        }

     protected string filter(ComboBox a, ref string replaces, ref string by)
        {
            return a.Text.Replace(replaces,by);
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string select = ("more than 2");
            string set = "";
            Console.WriteLine(filter(comboBox3,ref select,ref set));
            label1.ResetText();
            comboBox3.Items.AddRange(    ///  backlocks                
                var.obj3
                 );
            comboBox2.Items.AddRange(    ///  backlocks                
                var.obj2
               );

            comboBox1.Items.AddRange(  // branch
            var.obj1
              );

            string sql = "SELECT * FROM student_record";
            MySqlConnection grid = new MySqlConnection(conn);
            grid.Open();
            DataSet ds = new DataSet();
            MySqlDataAdapter ada = new MySqlDataAdapter(sql, grid);
            ada.Fill(ds);
            dataGridView1.DataSource = ds.Tables[0];
            grid.Close();
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

            label1.Text += " " + comboBox1.Text;
            comboBox1.Items.RemoveAt(comboBox1.SelectedIndex);
        }
    }
}
