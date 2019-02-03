using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string game_id = GridView1.SelectedValue.ToString().Trim();
      
        Response.Redirect("games.aspx?game_idPass=" + game_id );

    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string game_id = DataList1.SelectedValue.ToString().Trim();
       
        Response.Redirect("games.aspx?game_idPass=" + game_id );
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
      
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click1(object sender, EventArgs e)
    {

    }
}