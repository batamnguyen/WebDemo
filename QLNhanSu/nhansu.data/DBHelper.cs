using System;
using System.Data.SqlTypes;
using System.Configuration.Assemblies;
using System.Data.SqlClient;
namespace nhansu.data
{
    public class DBHelper : IDisposable
    {
        private SqlConnection _con;

        public SqlConnection Connection => _con;

        public DBHelper()
        {
            var constr = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString1"].ConnectionString;
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
        static void Main(string[] args)
        {
            Console.WriteLine("Hello World!");
        }

    }

};
