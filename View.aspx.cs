using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class View : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            

                string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
                SqlConnection con = new SqlConnection(connStr);
                string id = Request.QueryString["Id"].ToString();
                string sql = "SELECT * FROM ItemMst where id = '" + id + "' ";
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.CommandText = sql;
                cmd.Connection = con;
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                lblname.Text = dt.Rows[0]["iname"].ToString();
                lbldetil.Text = dt.Rows[0]["detail"].ToString();
                lblprice.Text = dt.Rows[0]["price"].ToString();
                lblqnt.Text = dt.Rows[0]["aqnt"].ToString();
                Image3.ImageUrl = dt.Rows[0]["image"].ToString();
                Image4.ImageUrl = dt.Rows[0]["image"].ToString();
                Image5.ImageUrl = dt.Rows[0]["image1"].ToString();
                Image6.ImageUrl = dt.Rows[0]["image2"].ToString();
                Image7.ImageUrl = dt.Rows[0]["image3"].ToString();
                lblram.Text = dt.Rows[0]["ram"].ToString();
                lblmemory.Text = dt.Rows[0]["memory"].ToString();
                lbldisplay.Text = dt.Rows[0]["display"].ToString();
                lblcamera.Text = dt.Rows[0]["camera"].ToString();
                lblbattry.Text = dt.Rows[0]["battery"].ToString();
                lblcolor.Text = dt.Rows[0]["color"].ToString();

                lblscreen.Text = dt.Rows[0]["type"].ToString();
                lblmodel.Text = dt.Rows[0]["model"].ToString();
                lblsim.Text = dt.Rows[0]["sim"].ToString();
            }
        
    }
    protected void Button3_Click(object sender, EventArgs e)
    {

    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        Response.Redirect("View.aspx?Id=" + e.CommandArgument.ToString());
    }
    protected void DataList1_ItemCommand1(object source, DataListCommandEventArgs e)
    {
        Response.Redirect("View.aspx?Id=" + e.CommandArgument.ToString());

    }
}