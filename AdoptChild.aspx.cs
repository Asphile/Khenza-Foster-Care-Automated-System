using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Khenza_Foster_Care
{
    public partial class WebForm12 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        void getNames()
        {
            using (SqlConnection con = new SqlConnection(strcon))
            {
                con.Open();

                // Query 1
                SqlCommand cmd = new SqlCommand("SELECT FullName ,DateOfBirth, ContactNo, EmailID from Member_login WHERE UserID = @UserID", con);
                cmd.Parameters.AddWithValue("@UserID", TextBox5.Text.Trim());
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count > 0)
                {
                    TextBox3.Text = dt.Rows[0]["FullName"].ToString();
                    TextBox4.Text = Convert.ToDateTime(dt.Rows[0]["DateOfBirth"]).ToString("yyyy-MM-dd");
                    TextBox1.Text = dt.Rows[0]["ContactNo"].ToString();
                    TextBox2.Text = dt.Rows[0]["EmailID"].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Wrong Member ID');</script>");
                }

               
            }
        }

        bool checkIfUserExits()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("SELECT * from Member_login WHERE UserID = @UserID", con);
                    cmd.Parameters.AddWithValue("@UserID", TextBox5.Text.Trim());
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    if (dt.Rows.Count > 0)
                    {
                        TextBox3.Text = dt.Rows[0]["FullName"].ToString();
                        TextBox4.Text = Convert.ToDateTime(dt.Rows[0]["DateOfBirth"]).ToString("yyyy-MM-dd");
                        TextBox1.Text = dt.Rows[0]["ContactNo"].ToString();
                        TextBox2.Text = dt.Rows[0]["EmailID"].ToString();
                    }
                    else
                    {
                        Response.Write("<script>alert('Wrong Member ID');</script>");
                    }
                }
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('" + ex.Message + "');", true);
            }
            return false;
        }

        

        void Adoptionform()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("INSERT INTO Adopt_forms (UserID, FullName, DateOfBirth, ContactNo, EmailID, MaritalStatus, ChildrenInHome, Income, Employer, Occupation, MedicalCondition, Medications, CriminalConviction, CriminalExplanation, AdoptionReason, ChildCarePlan) values (@UserID,  @FullName, @DateOfBirth, @ContactNo, @EmailID, @MaritalStatus, @ChildrenInHome, @Income, @Employer, @Occupation, @MedicalCondition, @Medications, @CriminalHistory, @CriminalExplanation, @AdoptionReason, @ChildCarePlan )", con);
                    cmd.Parameters.AddWithValue("@UserID", TextBox5.Text.Trim());
                    cmd.Parameters.AddWithValue("@FullName", TextBox3.Text.Trim());
                    cmd.Parameters.AddWithValue("@DateOfBirth", TextBox4.Text.Trim());
                    cmd.Parameters.AddWithValue("@ContactNo", TextBox1.Text.Trim());
                    cmd.Parameters.AddWithValue("@EmailID", TextBox2.Text.Trim());
                    //cmd.Parameters.AddWithValue("@Province", TextBox3.Text.Trim());
                    //cmd.Parameters.AddWithValue("@City", TextBox4.Text.Trim());
                    //cmd.Parameters.AddWithValue("@FullAddress", TextBox1.Text.Trim());
                    cmd.Parameters.AddWithValue("@MaritalStatus", DropDownList2.Text.Trim());
                    cmd.Parameters.AddWithValue("@ChildrenInHome", DropDownList5.Text.Trim());
                    cmd.Parameters.AddWithValue("@Income", TextBox10.Text.Trim());
                    cmd.Parameters.AddWithValue("@Employer", DropDownListEmployer.Text.Trim());
                    cmd.Parameters.AddWithValue("@Occupation", TextBox11.Text.Trim());
                    cmd.Parameters.AddWithValue("@MedicalCondition", DropDownList3.Text.Trim());
                    cmd.Parameters.AddWithValue("@Medications", TextBox13.Text.Trim());
                    cmd.Parameters.AddWithValue("@CriminalHistory", DropDownList4.Text.Trim());
                    cmd.Parameters.AddWithValue("@CriminalExplanation", TextBox12.Text.Trim());
                    cmd.Parameters.AddWithValue("@AdoptionReason", TextBox14.Text.Trim());
                    cmd.Parameters.AddWithValue("@ChildCarePlan", TextBox15.Text.Trim());


                    cmd.ExecuteNonQuery();
                    clearForm();
                    con.Close();
                    Response.Write("<script>alert('Record inserted successfully'); window.location.href='UserHome.aspx';</script>");


                    //Response.Write("<script>alert('Record inserted successfully');</script>");
                    //Response.Redirect("UserHome.aspx");

                }
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('" + ex.Message + "');", true);
            }



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkIfUserExits())
            {
               Response.Write("<script>alert('Both Member ID and Child ID are incorrect');</script>");
            }
            else
            {
                  Adoptionform();

            }
        }
       
        protected void Button4_Click(object sender, EventArgs e)
        {
            getNames();
        }
        void clearForm()
        {
            TextBox5.Text = TextBox3.Text = TextBox4.Text = TextBox1.Text = TextBox2.Text =
            TextBox10.Text = TextBox11.Text = TextBox12.Text = TextBox13.Text = TextBox15.Text = string.Empty;

            DropDownList2.SelectedIndex = 0;
            DropDownList3.SelectedIndex = 0;
            DropDownList4.SelectedIndex = 0;
            DropDownList5.SelectedIndex = 0;
            DropDownListEmployer.SelectedIndex = 0;
        }

    }

}