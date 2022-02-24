using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Drp_ProductCat();
            string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            SqlDataAdapter sda = new SqlDataAdapter("Select * from ItemMst", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            DataList1.DataSourceID = null;
            DataList1.DataSource = dt;
            DataList1.DataBind();

        }

    }



    protected void DataList1_ItemCommand1(object source, DataListCommandEventArgs e)
    {
        Response.Redirect("View.aspx?idd=" + e.CommandArgument.ToString());

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
        SqlConnection con = new SqlConnection(connStr);
        SqlDataAdapter sda = new SqlDataAdapter("Select * from ItemMst where (IName like '%" + TextBox1.Text + "%') or (CName like '%" + TextBox1.Text + "%')", con);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        DataList1.DataSourceID = null;
        DataList1.DataSource = dt;
        DataList1.DataBind();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        Session["name"] = "cate";
        Response.Redirect("Search.aspx?name=" + e.CommandArgument.ToString());
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void btnsearc_Click(object sender, EventArgs e)
    {
        //Session["name"] = txtsearch.Text;
        Response.Redirect("Search.aspx");

    }

    protected void Button3_Click(object sender, EventArgs e)
    {

    }

    protected void Timer1_Tick(object sender, EventArgs e)
    {
        Random ran = new Random();
        int i = ran.Next(1, 6);
        Image1.ImageUrl = "~/images/" + i.ToString() + ".jpg";
    }

    private void Drp_ProductCat()
    {
        string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
        SqlConnection con = new SqlConnection(connStr);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from CateMas", con);
        product_cat.DataSource = cmd.ExecuteReader();
        product_cat.DataTextField = "CName";
        product_cat.DataValueField = "Id";
        product_cat.DataBind();
        product_cat.Items.Insert(0, "Product Category");
        con.Close();
    }
    protected void product_cat_SelectedIndexChanged(object sender, EventArgs e)
    {
        string strQuery = "";
        string selectedProduct = product_cat.SelectedItem.Text;
        if (selectedProduct == "Product Category")
        {
            strQuery = "";
        }
        else
        {
            strQuery = "where CName = '" + selectedProduct + "' ";
        }
        string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
        SqlConnection con = new SqlConnection(connStr);
        SqlDataAdapter sda = new SqlDataAdapter("Select * from ItemMst where CName = '" + strQuery + " ' ", con);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        try
        {
            if (selectedProduct == dt.Rows[0][8].ToString())
            {

            }
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('No Product found')</script>");
        }
        DataList1.DataSourceID = null;
        DataList1.DataSource = dt;
        DataList1.DataBind();

    }

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
