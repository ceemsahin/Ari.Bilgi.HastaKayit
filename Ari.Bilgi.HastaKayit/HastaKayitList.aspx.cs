using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ari.Bilgi.HastaKayit
{
    public partial class HastaKayitList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            GetHastakaydi();


        }

        public void GetHastakaydi()
        {

            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["HastaKayitDBConn"].ConnectionString;

            string sqlsorgu = "  select ID,AdiSoyadi,TCNo,Telefon,Cinsiyet,Semptom from PatientInsert";

            SqlCommand cmd = new SqlCommand(sqlsorgu, conn);
            SqlDataReader reader;

            conn.Open();
            reader = cmd.ExecuteReader();

            RptHasta.DataSource = reader;
            RptHasta.DataBind();

            reader.Close();
            conn.Close();


        }
    }
}