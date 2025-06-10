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
    public partial class WebForm7 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        //bool CheckMemberExists()
        //{
        //    try
        //    {
        //        using (SqlConnection con = new SqlConnection(strcon))
        //        {
        //            con.Open();
        //            SqlCommand cmd = new SqlCommand("SELECT * FROM Member_login WHERE member_id = @member_id", con);
        //            cmd.Parameters.AddWithValue("@member_id", TextBox3.Text.Trim());
        //            SqlDataAdapter da = new SqlDataAdapter(cmd);
        //            DataTable dt = new DataTable();
        //            da.Fill(dt);
        //            return dt.Rows.Count >= 1;
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('" + ex.Message + "');", true);
        //        return false;
        //    }
        //}

        protected void Button3_Click(object sender, EventArgs e)
        {
            //try
            //{
            //    using (SqlConnection con = new SqlConnection(strcon))
            //    {
            //        con.Open();
            //        SqlCommand cmd = new SqlCommand("UPDATE Member_login SET account_states = @status, WHERE member_id = @member_id", con);
            //        cmd.Parameters.AddWithValue("@status", TextBox9.Text.Trim());
            //        cmd.Parameters.AddWithValue("@member_id", TextBox3.Text.Trim());
            //        cmd.ExecuteNonQuery();
            //        GridView1.DataBind();
            //        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Member status updated successfully');", true);
            //    }
            //}
            //catch (Exception ex)
            //{
            //    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('" + ex.Message + "');", true);
            //}
        }

       

        protected void Button4_Click(object sender, EventArgs e)
        {
            //if (CheckMemberExists())
            //{
            //    try
            //    {
            //        using (SqlConnection con = new SqlConnection(strcon))
            //        {
            //            con.Open();
            //            SqlCommand cmd = new SqlCommand("SELECT account_states FROM Member_login WHERE member_id = @member_id", con);
            //            cmd.Parameters.AddWithValue("@member_id", TextBox3.Text.Trim());
            //            SqlDataReader dr = cmd.ExecuteReader();
            //            if (dr.Read() && !dr.IsDBNull(0))
            //            {
            //                TextBox9.Text = dr["account_states"].ToString();
            //            }
            //            else
            //            {
            //                TextBox9.Text = string.Empty;
            //            }
            //            dr.Close();
            //        }
            //    }
            //    catch (Exception ex)
            //    {
            //        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('" + ex.Message + "');", true);
            //    }
            //}
            //else
            //{
            //    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Invalid member details');", true);
            //}
        }


        protected void LinkButton1_Click(object sender, EventArgs e)
        {
           
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
          
        }

        void clearForm()
        {
            //TextBox3.Text = "";
            ////TextBox9.Text = "";
        }
    }
}