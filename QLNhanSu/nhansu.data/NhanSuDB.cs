using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Text;

namespace nhansu.data
{
    class NhanSuDB
    {
        //public static int Insert(QLNhanSuModel model)
        //{
        //    try
        //    {
        //        model = HtmlSanitizer.ScriptXss<QLNhanSuModel>(model);
        //        using (var db = new DBHelper())
        //        {
        //            if (db != null && db.Connection != null)
        //            {
        //                var cmd = new SqlCommand("tgdd_news.PRODUCT_PRICELIST_ADD", db.Connection);
        //                cmd.CommandType = System.Data.CommandType.StoredProcedure;
        //                cmd.Parameters.Clear();
        //                cmd.BindByName = true;
        //                cmd.Parameters.Add("v_OUT", OracleDbType.Decimal, null, System.Data.ParameterDirection.Output);
        //                cmd.Parameters.Add("v_TAG", OracleDbType.Varchar2).Value = model.TagName;
        //                cmd.Parameters.Add("v_TITLE", OracleDbType.Varchar2).Value = model.Title;
        //                cmd.Parameters.Add("v_MARKET", OracleDbType.Varchar2).Value = model.Market;
        //                cmd.Parameters.Add("v_ACTIVEDUSER", OracleDbType.Varchar2).Value = model.ActiveUser;
        //                cmd.Parameters.Add("v_ISACTIVED", OracleDbType.Int32).Value = model.IsActicved;
        //                cmd.Parameters.Add("v_ACTIVEDDATE", OracleDbType.TimeStamp).Value = model.ActiveDate;
        //                cmd.Parameters.Add("v_CREATEDUSER", OracleDbType.Varchar2).Value = model.CreateUser;

        //                var result = cmd.ExecuteNonQuery();
        //                return Int32.Parse(cmd.Parameters["V_OUT"].Value.ToString());
        //            }
        //            return 0;
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        throw ex;
        //    }
        //}
    }
}
