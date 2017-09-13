using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data.SqlClient;

namespace OIMS.BLogic
{
    public class GConnection
    {
        public SqlConnection cn;
        public GConnection() {
            string strCon = System.Configuration.ConfigurationManager.AppSettings.Get("MyConnection").ToString();
            cn = new SqlConnection(strCon);
            cn.Open();
        }
    }
}