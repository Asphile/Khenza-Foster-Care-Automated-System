<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="Khenza_Foster_Care.WebForm16" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container">
    <div class="row">
        <div class="col-md-6 mx-auto">

<div class="card" style="background-color: #F7F7F7; border: 1px solid #87CEEB;">
              <div class="card-body">

                  <div class="row">
                      <div class="col">
                          <center>
                           <img src="imgs/Admin.jpeg" width="150" />
                          </center>
                      </div>
                  </div>

                  <div class="row">
                      <div class="col">
                          <center>
                           <h3>Admin login</h3>
                          </center>
                      </div>
                  </div>

                  <div class="row">
                     <div class="col">
                         <hr>
                     </div>
                 </div>

                  <div class="row">
                     <div class="col">

                         <label>Admin ID</label>
                         <div class="form-group">
                             <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Admin ID" ></asp:TextBox>
                         </div>

                        <label>Password</label>
                         <div class="form-group">
                             <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                         </div><br />

                         <div class="form-group">
                             <asp:Button class="btn btn-primary btn-block form-control btn-lg btn-success" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click"/>
                        </div>
                    </div>  
                </div>
             </div>
          </div> 
           <a href="Homepage.aspx"> << Exit to home</a><br /><br />
      </div>
   </div>
</div>
</asp:Content>
