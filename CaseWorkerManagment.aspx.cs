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
    public partial class WebForm3 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }
        bool CheckAdminExists()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("SELECT * FROM Admin_login WHERE AdminID = @AdminID", con);
                    cmd.Parameters.AddWithValue("@AdminID", TextBox1.Text.Trim());
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    return dt.Rows.Count >= 1;
                }
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('" + ex.Message + "');", true);
                return false;
            }
        }

        void clearForm()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
        }

        void AdminAdd()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("INSERT INTO Admin_login (AdminID, AdminName, AdminPassword) VALUES (@AdminID, @AdminName, @AdminPassword)", con);
                    cmd.Parameters.AddWithValue("@AdminID", TextBox1.Text.Trim());
                    cmd.Parameters.AddWithValue("@AdminName", TextBox2.Text.Trim());
                    cmd.Parameters.AddWithValue("@AdminPassword", TextBox3.Text.Trim());
                    cmd.ExecuteNonQuery();
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Admin added successfully');", true);
                    clearForm();
                    GridView1.DataBind();
                }
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('" + ex.Message + "');", true);
            }
        }

        void AdminDelete()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("DELETE FROM Admin_login WHERE AdminID = @AdminID", con);
                    cmd.Parameters.AddWithValue("@AdminID", TextBox1.Text.Trim());
                    cmd.ExecuteNonQuery();
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Admin deleted successfully');", true);
                    clearForm();
                    GridView1.DataBind();
                }
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('" + ex.Message + "');", true);
            }
        }

        void UpdateAdmin()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("UPDATE Admin_login SET AdminName = @AdminName, AdminPassword = @AdminPassword WHERE AdminID = @AdminID", con);
                    cmd.Parameters.AddWithValue("@AdminName", TextBox2.Text.Trim());
                    cmd.Parameters.AddWithValue("@AdminPassword", TextBox3.Text.Trim());
                    cmd.Parameters.AddWithValue("@AdminID", TextBox1.Text.Trim());
                    cmd.ExecuteNonQuery();
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Admin updated successfully');", true);
                    clearForm();
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
            if (!CheckAdminExists())
            {
                AdminAdd();
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('This Admin ID already exists. Try another ID.');", true);
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (CheckAdminExists())
            {
                UpdateAdmin();
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('This Admin ID does not exist. Try another ID.');", true);
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (CheckAdminExists())
            {
                AdminDelete();
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('This Admin ID does not exist.');", true);
            }
        }
    }
}