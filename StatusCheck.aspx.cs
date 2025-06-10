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
    public partial class WebForm8 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("SELECT * FROM IssuedChild WHERE UserID = @UserID", con);
                    cmd.Parameters.AddWithValue("@UserID", TextBox3.Text.Trim());
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    if (dt.Rows.Count > 0)
                    {
                        getName(TextBox3.Text.Trim());
                    }
                    else
                    {
                        TextBox1.Text = "";
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('No records found for the entered UserID.');", true);
                    }
                }
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('An error occurred while retrieving data.');", true);
            }
        }

        void getName(string UserID)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("SELECT * FROM Adopt_forms WHERE UserID = @UserID", con);
                    cmd.Parameters.AddWithValue("@UserID", UserID);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    if (dt.Rows.Count > 0)
                    {
                        TextBox1.Text = dt.Rows[0]["FullName"].ToString();
                    }
                    else
                    {
                        TextBox1.Text = "";
                    }
                }
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('An error occurred while retrieving name.');", true);
            }
        }


    }
}