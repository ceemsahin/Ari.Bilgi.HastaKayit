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
    public partial class HastaKayit : System.Web.UI.Page
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

            int CreateUserID = 0;

            SqlConnection conn = new SqlConnection();

            conn.ConnectionString = ConfigurationManager.ConnectionStrings["HastaKayitDBConn"].ConnectionString;


            SqlCommand cmd = new SqlCommand("sp_insertPatientInsert", conn);
            cmd.CommandType = CommandType.StoredProcedure;



            cmd.Parameters.AddWithValue("@AdiSoyadi", txtAdSoyad.Text.Trim());
            
            
            if (txtTCNo.Text.Length!=11)
            {
                txtMesaj.Visible = true;
                txtMesaj.InnerText = "Tc Numarası Hatalı";

            }else
            {
                cmd.Parameters.AddWithValue("@TCNo", txtTCNo.Text.Trim());
            }

            cmd.Parameters.AddWithValue("@Telefon", txtTelefon.Text.Trim());
            cmd.Parameters.AddWithValue("@Email", txtemail.Text.Trim());
            cmd.Parameters.AddWithValue("@DogumTarihi", Convert.ToDateTime(txtDogumTarihi.Text));
            
            if (RdyErkek.Checked==true)
            {
                cmd.Parameters.AddWithValue("@Cinsiyet", "E");
            }
            if (RdyKadin.Checked == true)
            {
                cmd.Parameters.AddWithValue("@Cinsiyet", "K");
            }

            cmd.Parameters.AddWithValue("@Adres", txtAdres.Text.Trim());
            cmd.Parameters.AddWithValue("@Il", txtIl.Text.Trim());
            cmd.Parameters.AddWithValue("@Ilce", txtIlce.Text.Trim());
            cmd.Parameters.AddWithValue("@HastalikAciklama", txtHastaAciklama.Text.Trim());
            cmd.Parameters.AddWithValue("@Semptom", txtSemptom.Text.Trim());
            cmd.Parameters.AddWithValue("@DoktorID", Convert.ToInt32(DDLDoktor.SelectedValue));
            cmd.Parameters.AddWithValue("@OdaID", Convert.ToInt32(DDLOda.SelectedValue));

            cmd.Parameters.AddWithValue("@GirisTarihi", Convert.ToDateTime(txtGirisTarihi.Text));
            cmd.Parameters.AddWithValue("@CikisTarihi", Convert.ToDateTime(txtCikisTarih.Text));
            cmd.Parameters.AddWithValue("@CreateUserID", CreateUserID);

            cmd.Parameters.AddWithValue("@IsDeleted", 0);

            conn.Open();
            int i = cmd.ExecuteNonQuery();

            txtMesaj.Visible = true;
            if (i > 0)
            {
              
                txtMesaj.InnerText = "Kayıt İşlemi Başarılı";

            }
            else
            {
                txtMesaj.InnerText = "Kayıt İşlemi Başarısız";

            }

            conn.Close();
            cmd.Dispose();


        }
    }
}