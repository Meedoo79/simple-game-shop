using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class games : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnback_Click(object sender, EventArgs e)
    {
        string cat_id = Request.QueryString["Catpass"];
        Response.Redirect("Default,aspx?cat=" + cat_id);
    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
    {
        
            

        
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}