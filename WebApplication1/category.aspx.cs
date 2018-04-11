using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace WebApplication1
{
    public partial class contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSendEmail_Click(object sender, EventArgs e)
        {
            //Sends email using a mail server that requires login credentials and a secure connections, e.g. gmail

            //create mail client and message with to and from address, and set message subject and body

            //create mail client and message with to and from address, and set message subject and body
            SmtpClient smtpClient = new SmtpClient();
            MailMessage msg = new MailMessage("syamim28@gmail.com", "syamim28@gmail.com");
            msg.Subject = txtSubject.Text;
            msg.Body = txtBody.Text;

            //settings specific to the mail service, e.g. server location, port number and that ssl is required
            smtpClient.Host = "smtp.gmail.com";
            smtpClient.Port = 587;
            smtpClient.EnableSsl = true;

            //create credentials - e.g. username and password for the account
            System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("syamim28@gmail.com", "YOUR PASSWORD");
            smtpClient.Credentials = credentials;
            msg = new MailMessage("syamim28@gmail.com", "syamim28@gmail.com");

            try
            {
                smtpClient.Send(msg);
                Literal1.Text = "<p>Success, mail sent using SMTP with secure connection and credentials</p>";
            }
            catch (Exception ex)
            {
                //display the full error to the user
                Literal1.Text = "<p>Send failed:" + ex.Message + ":" + ex.InnerException + "</p>";
            }
        }
    }
}