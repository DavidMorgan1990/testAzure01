using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Test100Hours3.Viewer
{
    public partial class ViewerNotes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void dropdown_DataBound(object sender, EventArgs e)
        {
            DropDownList list = sender as DropDownList;
            if (list != null)
                list.Items.Insert(0, "--Select One--");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Viewer.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewerNotes.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            LabelDate.Text = "Date Search Results:";
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label9.Text = "Dropdown Search Results:";
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label9.Text = "Dropdown Search Results:";
        }

    }
}