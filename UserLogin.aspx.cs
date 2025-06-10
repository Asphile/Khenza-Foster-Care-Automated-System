using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Khenza_Foster_Care
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("SELECT * FROM Member_login WHERE UserID = @UserID AND Password = @Password", con);
                    cmd.Parameters.AddWithValue("@UserID", TextBox3.Text.Trim());
                    cmd.Parameters.AddWithValue("@Password", TextBox1.Text.Trim());

                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect", "alert('Login successful'); window.location.href='UserHome.aspx';", true);
                            Session["username"] = dr["UserID"].ToString();
                            Session["fullname"] = dr["FullName"].ToString();
                            Session["role"] = "user";
                            Session["status"] = dr["account_states"].ToString();
                        }

                       
                    }
                    else
                    {
                       
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Invalid credentials. Please try to sign up and get an account.');", true);
                    }
                }
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('" + ex.Message + "');", true);
            }

        }
    }
}