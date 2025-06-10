using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Khenza_Foster_Care
{
    public partial class WebForm11 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }
       

        bool CheckChildExists()
        {
            try
            {

                using (SqlConnection con = new SqlConnection(strcon))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM child_Placement WHERE ChildID = @ChildID", con);
                    cmd.Parameters.AddWithValue("@ChildID", txtChildID.Text.Trim());
                    int count = (int)cmd.ExecuteScalar();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    return count >= 1;
                }
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('" + ex.Message + "');", true);
                return false;
            }
        }
        void ChildAdd()
        {
            try
            {

                string filepath = "~/childpics/sign-in-icon-3.jpg";
                string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.SaveAs(Server.MapPath("childpics/" + filename));
                filepath = "~/childpics/" + filename;

                using (SqlConnection con = new SqlConnection(strcon))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("INSERT INTO child_Placement (ChildID, ChildImage, FullName, Surname, DateOfBirth, Ethnicity, Gender, Age, Religion, Height, Weight, HairColor, EyeColor, DistinguishingFeatures, KnownMedicalConditions, PersonalityTraits, Hobbies, Talents) VALUES (@ChildID, @ChildImage, @FullName, @Surname, @DateOfBirth, @Ethnicity, @Gender, @Age, @Religion, @Height, @Weight, @HairColor, @EyeColor, @DistinguishingFeatures, @KnownMedicalConditions, @PersonalityTraits, @Hobbies, @Talents)", con);
                    cmd.Parameters.AddWithValue("@ChildID", txtChildID.Text.Trim());
                    cmd.Parameters.AddWithValue("@ChildImage", filename);
                    cmd.Parameters.AddWithValue("@FullName", txtFullName.Text.Trim());
                    cmd.Parameters.AddWithValue("@Surname", txtSurname.Text.Trim());
                    cmd.Parameters.AddWithValue("@DateOfBirth", TextBox1.Text.Trim());
                    cmd.Parameters.AddWithValue("@Ethnicity", DropDownList3.SelectedValue);
                    cmd.Parameters.AddWithValue("@Gender", DropDownList1.SelectedValue);
                    cmd.Parameters.AddWithValue("@Age", TextBox6.Text.Trim());
                    cmd.Parameters.AddWithValue("@Religion", DropDownList2.SelectedValue);
                    cmd.Parameters.AddWithValue("@Height", DropDownList4.SelectedValue);
                    cmd.Parameters.AddWithValue("@Weight", DropDownList5.SelectedValue);
                    cmd.Parameters.AddWithValue("@HairColor", DropDownList6.SelectedValue);
                    cmd.Parameters.AddWithValue("@EyeColor", DropDownList7.SelectedValue);
                    cmd.Parameters.AddWithValue("@DistinguishingFeatures", DropDownList12.SelectedValue);
                    cmd.Parameters.AddWithValue("@KnownMedicalConditions", DropDownList8.SelectedValue);
                    cmd.Parameters.AddWithValue("@PersonalityTraits", DropDownList9.SelectedValue);
                    cmd.Parameters.AddWithValue("@Hobbies", DropDownList10.SelectedValue);
                    cmd.Parameters.AddWithValue("@Talents", DropDownList11.SelectedValue);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Child added successfully');", true);
                    clearForm();
                    GridView1.DataBind();
                }
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('An error occurred: " + ex.Message + "');", true);
            }



        }

        void ChildDelete()
        {
            try
            {
                if (CheckChildExists())
                {
                    using (SqlConnection con = new SqlConnection(strcon))
                    {
                        con.Open();
                        SqlCommand cmd = new SqlCommand("DELETE FROM child_Placement WHERE ChildID = @ChildID", con);
                        cmd.Parameters.AddWithValue("@ChildID", txtChildID.Text.Trim());
                        cmd.ExecuteNonQuery();
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Child deleted successfully');", true);
                        clearForm();

                    }
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Child ID does not exist.');", true);
                }
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('" + ex.Message + "');", true);
            }
        }
        void ChildUpdate()
        {
            try
            {
                string filepath = "~/childpics/sign-in-icon-3.jpg";
                string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.SaveAs(Server.MapPath("childpics/" + filename));
                filepath = "~/childpics/" + filename;

                using (SqlConnection con = new SqlConnection(strcon))
                {
                    con.Open();

                    // Check if child ID exists
                    SqlCommand checkCmd = new SqlCommand("SELECT COUNT(*) FROM child_Placement WHERE ChildID = @ChildID", con);
                    checkCmd.Parameters.AddWithValue("@ChildID", txtChildID.Text.Trim());
                    int count = (int)checkCmd.ExecuteScalar();

                    if (count > 0)
                    {
                        // Update existing record
                        SqlCommand cmd = new SqlCommand("UPDATE child_Placement SET ChildImage = @ChildImage, FullName = @FullName, Surname = @Surname, DateOfBirth = @DateOfBirth, Ethnicity = @Ethnicity, Gender = @Gender, Age = @Age, Religion = @Religion, Height = @Height, Weight = @Weight, HairColor = @HairColor, EyeColor = @EyeColor, DistinguishingFeatures = @DistinguishingFeatures, KnownMedicalConditions = @KnownMedicalConditions, PersonalityTraits = @PersonalityTraits, Hobbies = @Hobbies, Talents = @Talents WHERE ChildID = @ChildID", con);
                        cmd.Parameters.AddWithValue("@ChildID", txtChildID.Text.Trim());
                        cmd.Parameters.AddWithValue("@ChildImage", filename);
                        cmd.Parameters.AddWithValue("@FullName", txtFullName.Text.Trim());
                        cmd.Parameters.AddWithValue("@Surname", txtSurname.Text.Trim());
                        cmd.Parameters.AddWithValue("@DateOfBirth", TextBox1.Text.Trim());
                        cmd.Parameters.AddWithValue("@Ethnicity", DropDownList3.SelectedValue);
                        cmd.Parameters.AddWithValue("@Gender", DropDownList1.SelectedValue);
                        cmd.Parameters.AddWithValue("@Age", TextBox6.Text.Trim());
                        cmd.Parameters.AddWithValue("@Religion", DropDownList2.SelectedValue);
                        cmd.Parameters.AddWithValue("@Height", DropDownList4.SelectedValue);
                        cmd.Parameters.AddWithValue("@Weight", DropDownList5.SelectedValue);
                        cmd.Parameters.AddWithValue("@HairColor", DropDownList6.SelectedValue);
                        cmd.Parameters.AddWithValue("@EyeColor", DropDownList7.SelectedValue);
                        cmd.Parameters.AddWithValue("@DistinguishingFeatures", DropDownList12.SelectedValue);
                        cmd.Parameters.AddWithValue("@KnownMedicalConditions", DropDownList8.SelectedValue);
                        cmd.Parameters.AddWithValue("@PersonalityTraits", DropDownList9.SelectedValue);
                        cmd.Parameters.AddWithValue("@Hobbies", DropDownList10.SelectedValue);
                        cmd.Parameters.AddWithValue("@Talents", DropDownList11.SelectedValue);
                        cmd.ExecuteNonQuery();
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Child updated successfully');", true);
                        clearForm();
                        GridView1.DataBind();
                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Child ID does not exist.');", true);
                    }
                }
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('An error occurred:" + ex.Message + "');", true);
            }

        }
        void clearForm()
        {
            TextBox1.Text = ""; // DateOfBirth
            txtChildID.Text = ""; // ChildID
            txtFullName.Text = ""; // FullName
            txtSurname.Text = ""; // Surname
            TextBox6.Text = ""; // Age

            DropDownList1.SelectedIndex = 0; // Gender
            DropDownList2.SelectedIndex = 0; // Religion
            DropDownList3.SelectedIndex = 0; // Ethnicity
            DropDownList4.SelectedIndex = 0; // Height
            DropDownList5.SelectedIndex = 0; // Weight
            DropDownList6.SelectedIndex = 0; // HairColor
            DropDownList7.SelectedIndex = 0; // EyeColor
            DropDownList8.SelectedIndex = 0; // KnownMedicalConditions
            DropDownList9.SelectedIndex = 0; // PersonalityTraits
            DropDownList10.SelectedIndex = 0; // Hobbies
            DropDownList11.SelectedIndex = 0; // Talents
            DropDownList12.SelectedIndex = 0; // DistinguishingFeatures

            FileUpload1.Dispose();
        }

      
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (!CheckChildExists())
            {
                ChildAdd();
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('This Child ID already exists. Try another ID.');", true);
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (CheckChildExists())
            {
                ChildUpdate();
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('This Child ID does not exist. Try another ID.');", true);
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (CheckChildExists())
            {
                ChildDelete();
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('This Child ID does not exist.');", true);
            }
        }
       


    }



}
