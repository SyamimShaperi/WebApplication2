using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.admin
{
    public partial class List : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Btn_Logout_Click(object sender, EventArgs e)
        {
            HttpContext.Current.GetOwinContext().Authentication.SignOut(Microsoft.AspNet.Identity.DefaultAuthenticationTypes.ApplicationCookie);
            Response.Redirect("~/login.aspx");
        }
    }
}