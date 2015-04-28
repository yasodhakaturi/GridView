using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace GridView
{
    public partial class Grid1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ////this.BindGrid();
                //this.usetogo();
                this.run();
                this.loadDataTable();
                this.next();
            }
        }
        private void BindGrid()
        {
            string strconnection = ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
            using (SqlConnection con = new SqlConnection(strconnection))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "select * from Prof_Brach";
                    cmd.Connection = con;
                    con.Open();
                    GridView1.DataSource = cmd.ExecuteReader();
                    GridView1.DataBind();
                    con.Close();
                }

            }
        }
        private void usetogo()
        {
            string strconnection = ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
            using (SqlConnection con = new SqlConnection(strconnection))
            {
                using (SqlCommand cmd = new SqlCommand("Select Branch, [Student ID], [Student Name] from [Student Information]", con))
                {
                    con.Open();
                    SqlDataReader dr = cmd.ExecuteReader();
                    GridView1.DataSource = dr;
                    GridView1.DataBind();
                    con.Close();
                }

            }
        }

        private void run()
        {

            string strconnection = ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
            using (SqlConnection con = new SqlConnection(strconnection))
            {
                using (SqlCommand cmd = new SqlCommand("Select First_Name, Email_ID, Password from Registration", con))
                {
                    con.Open();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    GridView1.DataSource = ds;
                    GridView1.DataBind();
                    con.Close();

                }

            }
        }

        private void loadDataTable()
        {
            string strconnection = ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
            using (SqlConnection con = new SqlConnection(strconnection))
            {
                DataSet ds = new DataSet();
                DataTable dt;
                DataRow dr;
                DataColumn pName;
                DataColumn pQty;
                DataColumn pPrice;

                dt = new DataTable();
                pName = new DataColumn("Product_Name", Type.GetType("System.String"));
                pQty = new DataColumn("Quantity", Type.GetType("System.Int32"));
                pPrice = new DataColumn("Price", Type.GetType("System.Int32"));
                dt.Columns.Add(pName);
                dt.Columns.Add(pQty);
                dt.Columns.Add(pPrice);
                dr = dt.NewRow();
                dr["Product_Name"] = "Product 1";
                dr["Quantity"] = 2;
                dr["Price"] = 200;
                dt.Rows.Add(dr);
                dr = dt.NewRow();
                dr["Product_Name"] = "Product 2";
                dr["Quantity"] = 5;
                dr["Price"] = 480;
                dt.Rows.Add(dr);
                dr = dt.NewRow();
                dr["Product_Name"] = "Product 3";
                dr["Quantity"] = 8;
                dr["Price"] = 100;
                dt.Rows.Add(dr);
                dr = dt.NewRow();
                dr["Product_Name"] = "Product 4";
                dr["Quantity"] = 2;
                dr["Price"] = 500;
                dt.Rows.Add(dr);
                ds.Tables.Add(dt);
                GridView3.DataSource = ds.Tables[0];
                GridView3.DataBind();
            }
        }

        private void next()
        {
            string strconnection = ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
            using (SqlConnection con = new SqlConnection(strconnection))
            {
                SqlCommand cmd = new SqlCommand(" Select Branch, [Student ID], [Student Name] from [Student Information]; Select First_Name, Email_ID, Password from Registration", con);
                con.Open();

                using (SqlDataReader dr = cmd.ExecuteReader())
                {

                    GridView5.DataSource = dr;
                    GridView5.DataBind();
                    while (dr.NextResult())
                    {
                        GridView4.DataSource = dr;
                        GridView4.DataBind();
                    }




                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string strconnection = ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
            using (SqlConnection con = new SqlConnection(strconnection))
            {
                using (SqlCommand cmd = new SqlCommand("StdInfbyBranch", con))
                {
                    if (TextBox1.Text != "")
                    {
                        con.Open();
                        SqlDataAdapter da = new SqlDataAdapter(cmd);
                        da.SelectCommand.CommandType = CommandType.StoredProcedure;
                        da.SelectCommand.Parameters.AddWithValue("@branch", TextBox1.Text);
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        GridView2.DataSource = ds;
                        GridView2.DataBind();
                        con.Close();
                    }
                    
                        

                }
            }
        }

    }

}






