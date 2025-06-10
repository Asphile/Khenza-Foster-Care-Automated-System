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
    public partial class WebForm15 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }
        void getNames()
        {
            using (SqlConnection con = new SqlConnection(strcon))
            {
                con.Open();

                // Query 1
                SqlCommand cmd = new SqlCommand("SELECT FullName from Member_login WHERE UserID = @UserID", con);
                cmd.Parameters.AddWithValue("@UserID", TextBox3.Text.Trim());
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count > 0)
                {
                    TextBox1.Text = dt.Rows[0]["FullName"].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Wrong Member ID');</script>");
                }

                // Query 2
                cmd = new SqlCommand("SELECT FullName from child_Placement WHERE ChildId = @ChildId", con);
                cmd.Parameters.AddWithValue("@ChildId", TextBox4.Text.Trim());
                da = new SqlDataAdapter(cmd);
                dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count > 0)
                {
                    TextBox2.Text = dt.Rows[0]["FullName"].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Wrong Child ID');</script>");
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
                    cmd.Parameters.AddWithValue("@UserID", TextBox3.Text.Trim());
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    if (dt.Rows.Count > 0)
                    {
                        TextBox1.Text = dt.Rows[0]["FullName"].ToString();
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

        bool checkIfChildExits()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    con.Open();

                    // Query 1
                    SqlCommand cmd = new SqlCommand("SELECT * from child_Placement WHERE ChildId = @ChildId", con);
                    cmd.Parameters.AddWithValue("@ChildId", TextBox4.Text.Trim());
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    if (dt.Rows.Count > 0)
                    {
                        TextBox2.Text = dt.Rows[0]["FullName"].ToString();
                    }
                    else
                    {
                        Response.Write("<script>alert('Wrong Child ID');</script>");
                    }
                }
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('" + ex.Message + "');", true);
            }
            return false;
        }

        void issuedChild()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("INSERT INTO IssuedChild (UserID, ChildID, Member_Name, Child_Name, time, Account_status, reasons) values (@UserID, @ChildID, @Member_Name, @Child_Name, @time, @Account_status, @reasons)", con);
                    cmd.Parameters.AddWithValue("@UserID", TextBox3.Text.Trim());
                    cmd.Parameters.AddWithValue("@ChildID", TextBox4.Text.Trim());
                    cmd.Parameters.AddWithValue("@Member_Name", TextBox1.Text.Trim());
                    cmd.Parameters.AddWithValue("@Child_Name", TextBox2.Text.Trim());
                    cmd.Parameters.AddWithValue("@time", TextBox5.Text.Trim());
                    cmd.Parameters.AddWithValue("@Account_status", DropDownList1.SelectedValue);
                    cmd.Parameters.AddWithValue("@reasons", TextBox6.Text.Trim());

                    cmd.ExecuteNonQuery();
                    clearForm();
                    con.Close();

                    Response.Write("<script>alert('Record inserted successfully');</script>");

                    GridView1.DataBind();
                }
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('" + ex.Message + "');", true);
            }
        }

        //protected void updateMemberStatusByID(string status)
        //{
        //    try
        //    {
        //        using (SqlConnection con = new SqlConnection(strcon))
        //        {
        //            con.Open();
        //            using (SqlCommand cmd = new SqlCommand("UPDATE IssuedChild SET Account_status = @status WHERE UserID = @UserID", con))
        //            {
        //                cmd.Parameters.AddWithValue("@status", status);
        //                cmd.Parameters.AddWithValue("@UserID", TextBox3.Text.Trim());
        //                cmd.ExecuteNonQuery();
        //                clearForm();
        //            }
        //        }
        //        GridView1.DataBind();
        //        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Member status updated successfully');", true);
        //    }
        //    catch (Exception ex)
        //    {
        //        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('" + ex.Message + "');", true);
        //    }
        //}

        //issued
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (!checkIfUserExits() && !checkIfChildExits())
            {
                issuedChild();
            }
            else
            {
                
               Response.Write("<script>alert('Both Member ID and Child ID are incorrect');</script>"); 
            }



        }
        void clearForm()
        {
            TextBox3.Text = "";
            DropDownList1.Text = "";
            TextBox4.Text = "";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";


        }

        //go
        protected void Button4_Click(object sender, EventArgs e)
        {
            getNames();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            //updateMemberStatusByID("Active");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            //updateMemberStatusByID("Pending");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            //updateMemberStatusByID("Deactive");
        }
    }
}