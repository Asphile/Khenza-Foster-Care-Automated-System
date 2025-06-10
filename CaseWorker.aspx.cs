using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace Khenza_Foster_Care
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("SELECT * from Admin_login where AdminID = @AdminID AND AdminPassword = @AdminPassword", con);
                    cmd.Parameters.AddWithValue("@AdminID", TextBox1.Text.Trim());
                    cmd.Parameters.AddWithValue("@AdminPassword", TextBox2.Text.Trim());
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            Session["username"] = dr["AdminID"].ToString();
                            Session["fullname"] = dr["AdminName"].ToString();
                            Session["role"] = "CaseWorker";
                        }
                        Response.Redirect("CaseWorkerHome.aspx");
                    }
                    else
                    {
                        Response.Write("<script>alert('Invalid credentials');</script>");
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }
    }
}