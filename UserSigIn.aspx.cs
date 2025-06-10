using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Drawing.Drawing2D;

namespace Khenza_Foster_Care
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkMemberExists())
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('You already have an account.');", true);
            }
            else
            {
                signUpNewMember();
            }
        }
    bool checkMemberExists()
    {
        try
        {
            using (SqlConnection con = new SqlConnection(strcon))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM Member_login WHERE UserID = @UserID", con);
                cmd.Parameters.AddWithValue("@UserID", TextBox5.Text.Trim());
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt.Rows.Count >= 1;
            }
        }
        catch (Exception ex)
        {
            // Log the exception
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('An error occurred while checking membership.');", true);
            return false;
        }
    }

    void signUpNewMember()
    {
        try
        {
            if (!DateTime.TryParse(TextBox4.Text.Trim(), out DateTime dob))
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Invalid date format.');", true);
                return;
            }

            if (!int.TryParse(TextBox7.Text.Trim(), out int pinCode))
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Invalid pin code.');", true);
                return;
            }

            using (SqlConnection con = new SqlConnection(strcon))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("INSERT INTO Member_login (FullName, DateOfBirth, ContactNo, EmailID, Province, City, PinCode, FullAddress, UserID, Password) VALUES (@FullName, @DateOfBirth, @ContactNo, @EmailID, @Province, @City, @PinCode, @FullAddress, @UserID, @Password)", con);
                cmd.Parameters.AddWithValue("@FullName", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@DateOfBirth", dob);
                cmd.Parameters.AddWithValue("@ContactNo", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@EmailID", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@Province", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@City", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@PinCode", pinCode);
                cmd.Parameters.AddWithValue("@FullAddress", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@UserID", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@Password", TextBox8.Text.Trim());
                cmd.ExecuteNonQuery();
                con.Close();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('You have successfully made an account.');", true);
            }
        }
        catch (Exception ex)
        {
            // Log the exception
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('An error occurred while creating your account.');", true);
        }
    }


}
}