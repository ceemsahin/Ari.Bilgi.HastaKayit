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
    public partial class RoleEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                
            }


        }

        public void Ekle()
        {
            SqlConnection conn = new SqlConnection();

            conn.ConnectionString = ConfigurationManager.ConnectionStrings["HastaKayitDBConn"].ConnectionString;


            SqlCommand cmd = new SqlCommand("sp_insertRole", conn);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@RoleAdi", txtRoleAdi.Text.Trim());
            cmd.Parameters.AddWithValue("@Aciklama", txtAciklama.Text.Trim());
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

        protected void BtnKaydet_Click(object sender, EventArgs e)
        {
            Ekle();
        }
    }
}