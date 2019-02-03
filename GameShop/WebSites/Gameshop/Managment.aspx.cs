using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Managment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Add_Click(object sender, EventArgs e)
    {
        p("game_id", Textid.Text);
        p("cat_id", Textcat.Text);
        p("name", Textname.Text);
        p("short_desc", Textdesc.Text);
        p("price", Textprice.Text);
        try
        {

            SqlDataSource1.Insert();

            lblmass.Text = "Added";
            Textid.Text = "";
            Textcat.Text = "";
            Textname.Text = "";
            Textdesc.Text = "";
            Textprice.Text = "";
        }
        catch (Exception)
        {
            lblmass.Text = "you can't";
        }


    }

    private void p(string name, string value)
    {
        SqlDataSource1.InsertParameters[name].DefaultValue = value;
    }
}