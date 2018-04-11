using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.admin
{
    public partial class Edit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string productId = Request.QueryString["ProductId"];
            string filename = productId + ".jpg";

            CurrentImage.ImageUrl = "~/ProductImages/" + filename;
        }
    }
}