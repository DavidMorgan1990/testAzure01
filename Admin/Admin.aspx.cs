using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace Test100Hours3.Admin
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
        {
            System.Web.Security.Roles.AddUserToRole(CreateUserWizard1.UserName, "ADMIN");
        }

        protected void CreateUserWizard2_CreatedUser(object sender, EventArgs e)
        {
            System.Web.Security.Roles.AddUserToRole(CreateUserWizard2.UserName, "OWNER");
        }

        protected void CreateUserWizard3_CreatedUser(object sender, EventArgs e)
        {
            System.Web.Security.Roles.AddUserToRole(CreateUserWizard3.UserName, "AUTHOR");
        }

        protected void CreateUserWizard4_CreatedUser(object sender, EventArgs e)
        {
            System.Web.Security.Roles.AddUserToRole(CreateUserWizard4.UserName, "VIEWER");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            System.Web.Security.Membership.DeleteUser(DropDownList1.SelectedItem.Text);            
        }

        protected void DropDownList1_DataBound(object sender, EventArgs e)
        {

        }
                        
    }
}