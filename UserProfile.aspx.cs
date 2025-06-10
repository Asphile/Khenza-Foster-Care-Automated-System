using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Reflection.Emit;

namespace Khenza_Foster_Care
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["username"].ToString() == "" || Session["username"].ToString() == null)
                {
                    Response.Write("<script>alert('Session Expired Login Again');</script>");
                    Response.Write("UserLogin.aspx");
                }
                else
                {
                    getUserData();

                    if(!Page.IsPostBack)
                    {
                        getUserPersonalD();
                    }
                }

            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('Session Expired Login Again');</script>");
                Response.Write("UserLogin.aspx");
            }
        }

        void getUserPersonalD()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("SELECT * FROM Member_login WHERE UserID = '"+ Session["username"].ToString() +"';", con);
                    cmd.Parameters.AddWithValue("@UserID", TextBox5.Text.Trim());
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    TextBox3.Text = dt.Rows[0]["FullName"].ToString();
                    TextBox4.Text = Convert.ToDateTime(dt.Rows[0]["DateOfBirth"]).ToString("yyyy-MM-dd");
                    TextBox1.Text = dt.Rows[0]["ContactNo"].ToString();
                    DropDownList1.SelectedValue = dt.Rows[0]["Province"].ToString();
                    TextBox2.Text = dt.Rows[0]["EmailID"].ToString();
                    TextBox6.Text = dt.Rows[0]["City"].ToString();
                    TextBox7.Text = dt.Rows[0]["PinCode"].ToString();
                    TextBox9.Text = dt.Rows[0]["FullAddress"].ToString();
                    TextBox5.Text = dt.Rows[0]["UserID"].ToString();
                    TextBox8.Text = dt.Rows[0]["Password"].ToString();

                    Label1.Text = dt.Rows[0]["account_status"].ToString().Trim();

                    if (dt.Rows[0]["account_status"].ToString().Trim() == "active")
                    {
                        Label1.CssClass = "badge badge-pill badge-success";
                    }
                    else if (dt.Rows[0]["account_status"].ToString().Trim() == "inactive")
                    {
                        Label1.CssClass = "badge badge-pill badge-danger";
                    }
                    else if (dt.Rows[0]["account_status"].ToString().Trim() == "pending")
                    {
                        Label1.CssClass = "badge badge-pill badge-warning";
                    }
                    else
                    {
                        Label1.CssClass = "badge badge-pill badge-secondary";
                    }


                }
            }
            catch (Exception ex)
            {
                // Log the exception
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('An error occurred while checking membership.');", true);
             
            }
        }

        void UpdateUserInfor()
        {
            string Password = TextBox10.Text.Trim();
            if (string.IsNullOrEmpty(Password))
            {
                // Assuming you have a method to get the existing password
                // Password = GetExistingPassword();
                // For demonstration purposes, I'll assume the existing password is stored in a session variable
                Password = Session["password"].ToString();
            }

            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("UPDATE Member_login SET FullName = @FullName, DateOfBirth = @DateOfBirth, ContactNo = @ContactNo, EmailID = @EmailID, Province = @Province, City = @City, PinCode = @PinCode, FullAddress = @FullAddress, Password = @Password, account_status = @account_status WHERE UserID = @UserID;", con);

                    cmd.Parameters.AddWithValue("@FullName", TextBox3.Text.Trim());
                    cmd.Parameters.AddWithValue("@DateOfBirth", TextBox4.Text.Trim());
                    cmd.Parameters.AddWithValue("@ContactNo", TextBox1.Text.Trim());
                    cmd.Parameters.AddWithValue("@EmailID", TextBox2.Text.Trim());
                    cmd.Parameters.AddWithValue("@Province", DropDownList1.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@City", TextBox6.Text.Trim());
                    cmd.Parameters.AddWithValue("@PinCode", TextBox7.Text.Trim());
                    cmd.Parameters.AddWithValue("@FullAddress", TextBox9.Text.Trim());
                    cmd.Parameters.AddWithValue("@UserID", TextBox5.Text.Trim());
                    cmd.Parameters.AddWithValue("@Password", Password);
                    cmd.Parameters.AddWithValue("@account_status", "pending");

                    int result = cmd.ExecuteNonQuery();
                    con.Close();

                    if (result > 0)
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('You have successfully updated your account.');", true);
                        getUserData();
                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('UserID does not exist');", true);
                    }
                }
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('An error occurred while updating your account.');", true);
            }
        }

        void getUserData()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    con.Open();

                    // Query 1
                    SqlCommand cmd = new SqlCommand("SELECT * from Member_login WHERE UserID = @UserID", con);
                    cmd.Parameters.AddWithValue("@UserID", TextBox5.Text.Trim());
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    GridView1.DataSource = dt;
                    GridView1.DataBind();


                }
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('" + ex.Message + "');", true);
            }
        }

      
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["username"].ToString() == "" || Session["username"].ToString() == null)
            {
                Response.Write("<script>alert('Session Expired Login Again');</script>");
                Response.Write("UserLogin.aspx");
            }
            else
            {
                UpdateUserInfor();
            }
        }

    }
}