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

            var transactionDetails = new Details();
            transactionDetails.tax = "0";
            transactionDetails.shipping = postagePackingCost.ToString();
            transactionDetails.subtotal = subtotal.ToString("0.00");

            var transactionAmount = new Amount();
            transactionAmount.currency = "BND";
            transcationAmount.total = total.ToString("0.00");
            transactionAmount.details = TransactionDetails;

            var transaction = new Transaction();
            transaction.description = "Product 1 description";
            transaction.invoice_number = Guid.NewGuid().ToString();
            transaction.amount = transactionAmount;
            transaction.item_list = new ItemList
            {
                items = new List<Item> { productItem }
            };

            var payer = new Payer();
            payer.payment_method = "paypal";

            var redirectUrls = new RedirectUrls();
            redirectUrls.cancel_url = 
            redirectUrls.return_url =

            var payment = Payment.Create(apiContext, new Payment
            {
                intent = "sale",
                payer = payer,
                transactions = new List<Transcation> { transaction },
                redirect_urls = redirectUrls
            });

            Session["paymentId"] = new Payment.id;

            foreach (var link in Payment.link)
            {
                if (link.rel.ToLower().Trim().Equals("approval_url"))
                {
                    Response.Redirect(link.href);
                }
            }

            var PayerId = Request.QueryString["PayerID"].ToString();
            var paymentExecution = new PaymentExecution() { payer_id = payerId };

            var executedPayment = payment.Execute(apiContext, paymentExecution);

            litInformation.Text = "<p> Your Order has been completed</p>";
            btnConfirmPurchase.Visible = false;






        }
    }
}