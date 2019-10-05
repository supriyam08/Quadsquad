using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
//using MySql.Data.MySqlClient;
namespace TNP
{
    class Sql:variable
    {
        
        public object MySqlAdapter { get; private set; }
        public object Datatable { get; private set; }

        public   string insert(string table_name = "student", string column_name = "id", string data = "1")
        {
            return "INSERT INTO " + table_name + "(" + column_name + ") VALUES(" + data + ")";
        }

       
        public   string update(string table_name = "student", string column_name_equal_data = "id=2",string where_colum_name="1",string data="",bool with_where=true)            
        {
            string update = " UPDATE " + table_name +
                      " SET " + column_name_equal_data +
                      " WHERE "+where_colum_name+"=" +"'"+data+"'";

           string  update_exp= " UPDATE " + table_name +
                      " SET " + column_name_equal_data +
                      " WHERE "+where_colum_name;
            if(!with_where) // !without_where = true 
            return update_exp;
            else
            return update;
        }



        public string delete(string table_name,string column_name,string data="")
        {
            return "DELETE FROM "+table_name+" WHERE "+column_name+"="+data;
        }

          public  string select(string column_name="*",string table_name="",string where="",string find="")
        {
            return "SELECT "+column_name+" FROM "+table_name+" WHERE "+where+"="+"'"+find+"'"+" ;";
        }
        public string select_exp(string column_name = "*", string table_name = "", string where = "", string find = "")
        {
            return "SELECT " + column_name + " FROM " + table_name + " WHERE " + where  + "" + find + "" + " ;";
        }

        public bool query(string q)
        {
            try
            {
              //  MySqlConnection con = new MySqlConnection(conn);
             ///   con.Open();               
               /// MySqlCommand a = new MySqlCommand(q, con);
              //  a.ExecuteNonQuery();
              //  con.Close();
                return true;
            }
            catch(Exception a)
            {
                System.Windows.Forms.MessageBox.Show(a.Message);
            
                return false;
            }
        }
        public string read(string selection_name="*",string table="")
        {
            string sql = " SELECT "+selection_name+" FROM "+table;
            string store_data = "";
            try
            {
          //      MySqlConnection con = new MySqlConnection(conn);
              //  con.Open();
               ///MySqlCommand cmd = new MySqlCommand(sql, con);
              ///  MySqlDataReader reader = cmd.ExecuteReader();
              ///  while (reader.Read())
              //  {
             //       store_data = reader.GetString(selection_name);
             //   }
            }
            catch (Exception a)
            {
                Console.WriteLine(a);
            }
            return store_data;
        }
        
    }
}
