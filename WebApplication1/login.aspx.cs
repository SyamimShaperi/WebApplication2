using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;

namespace WebApplication1
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnLogin_Click(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("IdentityConnectionString");
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var userManager = new UserManager<IdentityUser>(userStore);
            var user = userManager.Find(txtLoginEmail.Text, txtLoginPassword.Text);
            if (user != null)
            {
                LogUserIn(userManager, user);
                Response.Redirect("default.aspx");
            }
            else
            {
                LitLoginError.Text = "Invalid username or password";
            }

        }

        private void LogUserIn(UserManager<IdentityUser> usermanager, IdentityUser user)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            var userIdentity = usermanager.CreateIdentity(
                user, DefaultAuthenticationTypes.ApplicationCookie);
            authenticationManager.SignIn(new AuthenticationProperties() { }, userIdentity);

            if (Request.QueryString["~/login.aspx"] != null)
            {
                Response.Redirect(Request.QueryString["~/login.aspx"]);
            }
            else
            {
                String UserRoles = usermanager.GetRoles(user.Id).FirstOrDefault();
                if (UserRoles.Equals("Admin1"))
                {
                    Response.Redirect("~/admin/List.aspx");
                }
            }
        }
    }
}