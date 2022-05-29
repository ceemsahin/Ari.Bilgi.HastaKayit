using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ari.Bilgi.HastaKayit
{
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                string SessionID = Session["ID"].ToString();

                if (string.IsNullOrEmpty(SessionID))
                {
                    Response.Redirect("Login.aspx");
                }
            }
            catch (Exception ex)
            {

                Response.Redirect("Login.aspx?"+ex.Message);
               
            }


        }
    }
}