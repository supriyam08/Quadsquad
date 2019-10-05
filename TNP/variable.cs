using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TNP
{
    class variable
    {
      public   string user = "";
      public  string pass = "";
      public   string db = "";
      public  string table = "";
        public string attach_con = "";

        public string insert_data__ = " INSERT INTO ";
        public string start = " ( ";
        public string end = " ) ";
        public string value = " VALUES ";
        public string path = Environment.CurrentDirectory+"log_file.txt";
        
          public string select_pannel = " SELECT ";
         public string  from=  " FROM " ;
          public string  where=" WHERE " ;
       
            public string  temp_comma(string data)
        {
            return   " \" " + data+" \" ";
        }

         public void log_data(string  address,  string log)
        {
            if (!File.Exists(path))
                File.Create(path);
                File.WriteAllText(path, "New Log Error is detected : " + DateTime.Now.Day +
                DateTime.Now.Month
                + File.ReadAllText(path)+system_lines(10)+log); 
         }

        // combobox 1 ;
        public object[] obj1 =
              new object[]
              {
                  "ECE",
                  "CSE",
                  "IT",
                  "ME",
                  "CE",
                  "EE",
                  "PE"
              };

        public object[] obj2 =
          
              new object[]
              {
                  "less then 60 %",
"60%",
"70%",
"80%",
"90%",
"100%"              };
        public object[] obj3 =new object[]
                            {
"0",
"1",
"2",
"more than 2"
                };


        string system_lines(int how_much)
        {
            string local = "";
            for (int a = 0; a < how_much; a++)
            {
                local = local + " -";
            }
            return local;
        }
    }
   
}
