using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;

namespace WebApplication1
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnReg_Click(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("IdentityConnectionString");
            var roleStore = new RoleStore<IdentityRole>(identityDbContext);
            var roleManager = new RoleManager<IdentityRole>(roleStore);
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var manager = new UserManager<IdentityUser>(userStore);


            IdentityRole adminRole = new IdentityRole("RegisteredUser");
            roleManager.Create(adminRole);
            var user = new IdentityUser()
            {
                UserName = txtRegEmail.Text,
                Email = txtRegEmail.Text
            };

            IdentityResult result = manager.Create(user, txtRegPassword.Text);
            if (result.Succeeded)
            {
                manager.AddToRole(user.Id, "RegisteredUser");
                manager.Update(user);
                LitRegisterError.Text = "Registration succesfully"; //todo: Log in Then
            }
            else
            {
                LitRegisterError.Text = "An error has occured: " + result.Errors.FirstOrDefault();
            }
        }
    }
}