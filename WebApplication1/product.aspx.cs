using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PayPal.Api;

namespace WebApplication1
{
    public partial class product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
            {
                string productId = Request.QueryString["ProductId"];
                string filename = productId + ".jpg";

                ProductImage.ImageUrl = "~/ProductImages/" + filename;
           
        }

        protected void btnPurchase_Click(object sender, EventArgs e)
        {
            decimal postagePackingCost = 3.95m;
            decimal productPrice = 10.00m;
            int quantityOfProduct = int.Parse(DDLQuantity.SelectedValue);
            decimal subtotal = (quantityOfProduct * productPrice);
            decimal total = subtotal + postagePackingCost;

            var config = ConfigManager.Instance.GetProperties();
            var accessToken = new OAuthTokenCredential(config).GetAccessToken();
            var apiContext = new APIContext(accessToken);

            var productItem = new Item();
            productItem.name = "Product 1";
            productItem.currency = "BND";
            productItem.price = productPrice.ToString();
            productItem.sku = "PRO1";
            productItem.quantity = quantityOfProduct.ToString();

           






        }
    }
}