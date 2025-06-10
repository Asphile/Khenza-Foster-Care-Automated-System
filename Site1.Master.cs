using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Khenza_Foster_Care
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                string role = Session["role"]?.ToString();
                switch (role)
                {
                    case null:
                    case "":
                        // User is not logged in
                        LinkButton2.Visible = true; // User LogIn
                        LinkButton3.Visible = false; // Sign up
                        LinkButton4.Visible = false; // Logout
                        LinkButton5.Visible = false; // Hello user
                        LinkButton6.Visible = true; // CaseWorker LogIn
                        LinkButton11.Visible = false; // CaseWorker Management
                        LinkButton7.Visible = false; // Matching Manager
                        LinkButton8.Visible = false; // Child placement
                        LinkButton9.Visible = false; // Adopt child
                        LinkButton1.Visible = false; // Check Status
                        LinkButton10.Visible = false; // View my Profile
                        LinkButton12.Visible = true; // Admin Login
                        LinkButton13.Visible = false; // Child issued
                        break;
                    case "user":
                        // User is logged in
                        LinkButton2.Visible = false; // User LogIn
                        LinkButton3.Visible = false; // Sign up
                        LinkButton4.Visible = true; // Logout
                        LinkButton5.Visible = true; // Hello user
                        LinkButton5.Text = "Hello, " + Session["username"].ToString();
                        LinkButton6.Visible = false; // CaseWorker LogIn
                        LinkButton11.Visible = false; // CaseWorker Management
                        LinkButton7.Visible = false; // Matching Manager
                        LinkButton8.Visible = false; // Child placement
                        LinkButton9.Visible = true; // Adopt child
                        LinkButton1.Visible = true; // Check Status
                        LinkButton10.Visible = true; // View my Profile
                        LinkButton12.Visible = false; // Admin Login
                        LinkButton13.Visible = false; // Child issued
                        break;
                    case "CaseWorker":
                        // Admin is logged in
                        LinkButton2.Visible = false; // User LogIn
                        LinkButton3.Visible = false; // Sign up
                        LinkButton4.Visible = true; // Logout
                        LinkButton5.Visible = true; // Hello user
                        LinkButton5.Text = "Hello, CaseWorker";
                        LinkButton6.Visible = false; // CaseWorker LogIn
                        LinkButton11.Visible = false; // CaseWorker Management
                        LinkButton7.Visible = true; // Matching Manager
                        LinkButton8.Visible = true; // Child placement
                        LinkButton9.Visible = false; // Adopt child
                        LinkButton1.Visible = false; // Check Status
                        LinkButton10.Visible = false; // View my Profile
                        LinkButton12.Visible = false; // Admin Login
                        LinkButton13.Visible = false; // Child issued
                        break;
                    case "Admin":
                        // Admin is logged in
                        LinkButton2.Visible = false; // User LogIn
                        LinkButton3.Visible = false; // Sign up
                        LinkButton4.Visible = true; // Logout
                        LinkButton5.Visible = true; // Hello user
                        LinkButton5.Text = "Hello, Admin";
                        LinkButton6.Visible = false; // CaseWorker LogIn
                        LinkButton11.Visible = true; // CaseWorker Management
                        LinkButton7.Visible = false; // Matching Manager
                        LinkButton8.Visible = false; // Child placement
                        LinkButton9.Visible = false; // Adopt child
                        LinkButton1.Visible = false; // Check Status
                        LinkButton10.Visible = false; // View my Profile
                        LinkButton12.Visible = false; // Admin Login
                        LinkButton13.Visible = false; // Child issued
                        break;
                    default:
                        // Handle unknown role
                        break;
                }
            }
            catch (Exception ex)
            {
                // Log the exception or handle it properly
            }

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserLogin.aspx");
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("CaseWorker.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("CaseWorkerManagment.aspx"); 
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("MemberManager.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("ChildPlacement.aspx");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserProfile.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserSigIn.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("StatusCheck.aspx");
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdoptChild.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = "";
            Session["status"] = "";

            LinkButton2.Visible = true; // User LogIn
            LinkButton3.Visible = false; // Sign up
            LinkButton4.Visible = false; // Logout
            LinkButton5.Visible = false; // Hello user
            LinkButton6.Visible = true; // CaseWorker LogIn
            LinkButton11.Visible = false; // CaseWorker Management
            LinkButton7.Visible = false; // Matching Manager
            LinkButton8.Visible = false; // Child placement
            LinkButton9.Visible = false; // Adopt child
            LinkButton1.Visible = false; // Check Status
            LinkButton10.Visible = false; // View my Profile
            LinkButton12.Visible = true; // Admin Login
            LinkButton13.Visible = false; // Child issued

            Response.Redirect("homepage.aspx");

        }

        protected void LinkButton4_Click1(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = "";
            Session["status"] = "";

            LinkButton2.Visible = true; // User LogIn
            LinkButton3.Visible = false; // Sign up
            LinkButton4.Visible = false; // Logout
            LinkButton5.Visible = false; // Hello user
            LinkButton6.Visible = true; // CaseWorker LogIn
            LinkButton11.Visible = false; // CaseWorker Management
            LinkButton7.Visible = false; // Matching Manager
            LinkButton8.Visible = false; // Child placement
            LinkButton9.Visible = false; // Adopt child
            LinkButton1.Visible = false; // Check Status
            LinkButton10.Visible = false; // View my Profile
            LinkButton12.Visible = true; // Admin Login
            LinkButton13.Visible = false; // Child issued

            Response.Redirect("homepage.aspx");

        }

        protected void btnSubscribe_Click(object sender, EventArgs e)
        {
            //string email = txtEmail.Text.Trim();
            //if (!string.IsNullOrEmpty(email))
            //{
            //    try
            //    {
            //        MailMessage mail = new MailMessage();
            //        mail.To.Add("asphilelubanyana@gmail.com");
            //        mail.From = new MailAddress("asphilelubanyana@gmail.com");
            //        mail.Subject = "New Subscription";
            //        mail.Body = "Email: " + email;
            //        SmtpClient smtp = new SmtpClient();
            //        smtp.Host = "smtp.gmail.com";
            //        smtp.Port = 587;
            //        smtp.EnableSsl = true;
            //        smtp.Credentials = new NetworkCredential("asphilelubanyana@gmail.com", "As'phile003"); // replace with your password
            //        smtp.Send(mail);
            //        txtEmail.Text = string.Empty;
            //        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Subscribed successfully!');", true);
            //    }
            //    catch (Exception ex)
            //    {
            //        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Error: " + ex.Message + "');", true);
            //    }
            //}
            //else
            //{
            //    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Please enter your email!');", true);
            //}



        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminLogin.aspx");
        }

        protected void LinkButton13_Click(object sender, EventArgs e)
        {
            Response.Redirect("ChildIssued.aspx"); 
        }
    }
}