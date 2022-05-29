using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ari.Bilgi.HastaKayit
{
    public partial class OdaKaydet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnKaydet_Click(object sender, EventArgs e)
        {
            Ekle();
        }


        public void Ekle()
        {
            SqlConnection conn = new SqlConnection();

            conn.ConnectionString = ConfigurationManager.ConnectionStrings["HastaKayitDBConn"].ConnectionString;


            SqlCommand cmd = new SqlCommand("sp_insertRoom", conn);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@OdaAdi", txtOdaAdi.Text.Trim());
            cmd.Parameters.AddWithValue("@OdaNumarasi",Convert.ToInt32(txtOdaNumarasi.Text));
            cmd.Parameters.AddWithValue("@IsDeleted", 0);

            conn.Open();
            int i = cmd.ExecuteNonQuery();

            if (i > 0)
            {
                lblmesaj.Text = "Kayıt İşlemi Başarılı";

            }
            else
            {
                lblmesaj.Text = "Kayıt İşlemi Başarısız";

            }

            conn.Close();
            cmd.Dispose();


        }
    }
}