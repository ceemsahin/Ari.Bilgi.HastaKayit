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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnGirisYap_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();

            conn.ConnectionString = ConfigurationManager.ConnectionStrings["HastaKayitDBConn"].ConnectionString;

            //Kullanıcı bilgilerini sql command nesnesi ile sql query yardımıyla kontrol ediyorum
            SqlCommand cmd = new SqlCommand("select * from Users where Email=@Email and Password=@Password", conn);

            cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
            cmd.Parameters.AddWithValue("@Password", txtPassword.Text.Trim());

            // bağlantı yapmadan önce sql bağlantısını açıyorum
            conn.Open();

            //datayı sql den okumaya olanak sağlayan reader kodu
            SqlDataReader rd = cmd.ExecuteReader();

            // eğer db den gönderdiğim parametreler ile ilgili bir kayıt var ise 
            if (rd.Read())
            {

                //Session veri transferi işlemi
                Session["Email"] = txtEmail.Text.Trim();
                Session["ID"] = rd["ID"].ToString();
                Session["Role"] = rd["RoleID"].ToString();

                // Eğer kullanıcı var ise dashboard a yönlendiriyoruz.
                Response.Redirect("Dashboard.aspx");

            }

            else
            {
                //eğer kullanıcı adı ve şifre hatalı ise kullanıcılacak kod bloğu
                DivAlert.Visible = true;
                DivAlert.InnerHtml = "Hatalı Kullanıcı Adı veya Şifre";

            }
        }
    }
}