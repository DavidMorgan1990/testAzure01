using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Test100Hours3
{
    public partial class Contact : Page
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
            GridView3.DataSource = SqlDataSource2;
            GridView3.DataBind();
            LabelSearch.Text = "Search Results:";
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            GridView3.DataSource = SqlDataSource16;
            GridView3.DataBind();
            LabelSearch.Text = "Search Results:";
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            GridView3.DataSource = SqlDataSource17;
            GridView3.DataBind();
            LabelSearch.Text = "Search Results:";
        }

        protected void Button6_Click(object sender, EventArgs e)
        {           
            GridView3.DataSource = SqlDataSource18;
            GridView3.DataBind();
            LabelSearch.Text = "Search Results:";
        }

        protected void ddDateLastUpdated_SelectedIndexChanged(object sender, EventArgs e)
        {
            LabelDd.Text = "Dropdown Search Results:";
        }

        protected void ddUpdatedBy_SelectedIndexChanged(object sender, EventArgs e)
        {
            LabelDd.Text = "Dropdown Search Results:";
        }

        protected void ddJobFunction_SelectedIndexChanged(object sender, EventArgs e)
        {
            LabelDd.Text = "Dropdown Search Results:";
        }

        protected void ddContactStatus_SelectedIndexChanged(object sender, EventArgs e)
        {
            LabelDd.Text = "Dropdown Search Results:";
        }

        protected void ddOrganization_SelectedIndexChanged(object sender, EventArgs e)
        {
            LabelDd.Text = "Dropdown Search Results:";
        }

        protected void ddCity_SelectedIndexChanged(object sender, EventArgs e)
        {
            LabelDd.Text = "Dropdown Search Results:";
        }

        protected void ddContactName_SelectedIndexChanged(object sender, EventArgs e)
        {
            LabelDd.Text = "Dropdown Search Results:";
        }

        protected void ddRelationshipType_SelectedIndexChanged(object sender, EventArgs e)
        {
            LabelDd.Text = "Dropdown Search Results:";
        }

        protected void ddCountry_SelectedIndexChanged(object sender, EventArgs e)
        {
            LabelDd.Text = "Dropdown Search Results:";
        }

        protected void ddContactType_SelectedIndexChanged(object sender, EventArgs e)
        {
            LabelDd.Text = "Dropdown Search Results:";
        }

        protected void ddJobTitle_SelectedIndexChanged(object sender, EventArgs e)
        {
            LabelDd.Text = "Dropdown Search Results:";
        }

        protected void ddEmail_SelectedIndexChanged(object sender, EventArgs e)
        {
            LabelDd.Text = "Dropdown Search Results:";
        }
    }
}