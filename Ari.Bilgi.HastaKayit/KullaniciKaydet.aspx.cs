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
    public partial class KullaniciKaydet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnKaydet_Click(object sender, EventArgs e)
        {

            string mail = txtEmail.Text.Trim();

            if (MailAdresivarmi(mail)!=0)
            {
                lblmesaj.Text = "Böyle bir kullanıcı mevcut";
            }
            else
            {
                Ekle();

            }

           
        }


        public int MailAdresivarmi(string email)
        {
            int sonuc;

            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["HastaKayitDBConn"].ConnectionString;

            string sorgu = "select count(ID) from Users where Email=@Email";
            SqlCommand cmd = new SqlCommand(sorgu, conn);

            cmd.Parameters.AddWithValue("@Email", email);

            conn.Open();
            sonuc = Convert.ToInt32(cmd.ExecuteScalar());

            conn.Close();
            return sonuc;

        }



        public void Ekle()
        {
            SqlConnection conn = new SqlConnection();

            conn.ConnectionString = ConfigurationManager.ConnectionStrings["HastaKayitDBConn"].ConnectionString;


            SqlCommand cmd = new SqlCommand("sp_insertUser", conn);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
            cmd.Parameters.AddWithValue("@Password",txtPassword.Text.Trim());
            cmd.Parameters.AddWithValue("@RoleID", Convert.ToInt32(DDLRole.SelectedValue));
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