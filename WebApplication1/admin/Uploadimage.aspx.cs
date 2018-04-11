using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.admin
{
    public partial class Uploadimage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string ProductId = Request.QueryString["Id"];

            string filename = ProductId + ".jpg";
            string saveLocation = Server.MapPath("~/ProductImages/" + filename);

            imageFileUploadControl.SaveAs(saveLocation);
        }
    }
}