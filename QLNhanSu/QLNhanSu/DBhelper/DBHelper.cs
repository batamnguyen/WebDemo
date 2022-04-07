using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace QLNhanSu.DBhelper
{
    public class DBHelper
    {
        /// <summary>
        /// lớp dùng chung để xử lý dữ liệu database
        /// </summary>

        private SqlConnection _con;

        public SqlConnection Connection => _con;

        public DBHelper()
        {
            var constr = "";
            if (System.Configuration.ConfigurationManager.AppSettings["Env"] == "beta")
            {
                constr = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString1"].ConnectionString;
            }
            else
            {
                constr = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            }
            _con = new SqlConnection(constr);
            _con.Open();
        }
        public void Dispose()
        {
            if (_con != null)
            {
                _con.Close();
                _con.Dispose();
                _con = null;
            }
        }

    }
}