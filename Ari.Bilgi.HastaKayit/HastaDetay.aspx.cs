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
    public partial class HastaDetay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            int ID = Convert.ToInt32(Request.QueryString["ID"]);

            if (!IsPostBack)
            {
                GetHastaDetay(ID);
            }

            
        }

        protected void BtnKaydet_Click(object sender, EventArgs e)
        {

        }


        public void GetHastaDetay(int ID)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["HastaKayitDBConn"].ConnectionString;

            string sqlsorgu = "select * from PatientInsert where ID=@ID";


            SqlCommand cmd = new SqlCommand(sqlsorgu, conn);
            
            cmd.Parameters.AddWithValue("@ID", ID);

            SqlDataReader reader;

            conn.Open();

            reader = cmd.ExecuteReader();

            if (reader.Read())
            {

                txtAdSoyad.Text= reader["AdiSoyadi"].ToString();
                txtTCNo.Text = reader["TCNo"].ToString();
                txtTelefon.Text = reader["Telefon"].ToString();
                txtemail.Text = reader["Email"].ToString();
                txtDogumTarihi.Text = Convert.ToDateTime(reader["DogumTarihi"]).ToString("dd/MM/yyyy");
                
                string cinsiyet= reader["Cinsiyet"].ToString();

                if(cinsiyet=="E")
                {
                    RdyErkek.Checked = true;
                }

                if (cinsiyet == "K")
                {
                    RdyKadin.Checked = true;
                }

                txtAdres.Text = reader["Adres"].ToString();
                txtIl.Text = reader["Il"].ToString();
                txtIlce.Text = reader["Ilce"].ToString();
                txtHastaAciklama.Text = reader["HastalikAciklama"].ToString();
                txtSemptom.Text = reader["Semptom"].ToString();
                DDLDoktor.SelectedValue = reader["DoktorID"].ToString();
                DDLOda.SelectedValue = reader["OdaID"].ToString();


                txtGirisTarihi.Text =Convert.ToDateTime (reader["GirisTarihi"]).ToString("dd/MM/yyyy");
                txtCikisTarih.Text = Convert.ToDateTime(reader["CikisTarihi"]).ToString("dd/MM/yyyy");


            }

            cmd.Dispose();
            conn.Close();



        }
    }
}