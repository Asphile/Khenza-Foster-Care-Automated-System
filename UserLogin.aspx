<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="Khenza_Foster_Care.WebForm4" %>
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
                           <img src="imgs/sign-in-icon-3.jpg" width="150" />
                          </center>
                      </div>
                  </div>

                  <div class="row">
                      <div class="col">
                          <center>
                           <h3>Parent login</h3>
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

                         <label>Parent ID</label>
                         <div class="form-group">
                             <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Parent ID" TextMode="SingleLine"></asp:TextBox>
                         </div><br />

                        <label>Password</label>
                         <div class="form-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                         </div><br />

                         <div class="form-group">
                             <asp:Button class="btn btn-primary btn-block form-control btn-lg btn-success" ID="Button3" runat="server" Text="Login" OnClick="Button3_Click"/>
                         </div><br />

                         <div class="form-group">
                             <a href="UserSigIn.aspx"><input class="btn btn-info btn-block form-control btn-lg" id="Button2" type="button" value="Sign Up" /></a>
                         </div>

                     </div>
                 </div>

              </div>
          </div>

            <a href="homepage.aspx"> << Exit to home</a><br /><br />
        </div>
    </div>
</div>
</asp:Content>
