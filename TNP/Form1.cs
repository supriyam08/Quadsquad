//using MySql.Data.MySqlClient;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace TNP
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
     
        variable function = new variable();

        public string conn = "Server=localhost;Port=3306;Database=admins;Uid=root";

       void my_funtion()
        {
            control a = new control();
            a.ShowDialog();
        }
        void pannel_activate()
        {
            MessageBox.Show("Congratulation !");
            Thread a = new Thread(my_funtion);
            a.SetApartmentState(ApartmentState.STA);
            a.Start();
            Close();
        }
        private void button2_Click(object sender, EventArgs e)
        {
            variable a = new variable();
            string data_ = "";
            string colum = "";
            string q = a.insert_data__ + " " + a.table + a.start + colum
                + a.end + a.value + a.start + data_ + a.end;
            string table_name = "admins_table";
            string column_name =
                "*"
        ;
            string where =
                       ""
        ;
            ///   find from selection value
            ///   

            string find =
                 ""
                 ;

            string selection_proces =
          "SELECT " + column_name + " FROM " + table_name;///+ " WHERE " + where  + "" + find + "" + " ;"
            //;
            bool v = false;
            try
            {
                MySqlConnection con = new MySqlConnection(conn);
                con.Open();
                MySqlCommand cmd = new MySqlCommand(selection_proces, con);
                MySqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {

                    Console.WriteLine(reader.GetString("username"));
                    if (reader.GetString("username").Equals(textBox1.Text)
                         &&
                         reader.GetString("password").Equals(textBox2.Text)
                         )
                    {
                        pannel_activate();
                        v = true;
                        break;

                    }
                    
                }
if(!v)
                MessageBox.Show("Username or password is invalid !");
                textBox2.Text = "";
                textBox1.Text = textBox2.Text;

                con.Close();
            }
            catch (Exception a2)
            {
                function.log_data("Form 1 : line  78 : submit_button", a2.Message);
            }
            try
            {
               /* MySqlConnection con = new MySqlConnection(conn);
                con.Open();
                MySqlCommand a1 = new MySqlCommand(a.insert_data__, con);
                a1.ExecuteNonQuery();
                con.Close();*/
            }
            catch (Exception a2)
            {
                function.log_data("Form 1 : line 50 : submit_button", a2.Message);
            }
        }
    }
}

