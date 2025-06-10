﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="Khenza_Foster_Care.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
           <div class="container-fuild">
    <div class="row">
        <div class="col-md-5">

                <div class="card" style="background-color: #F7F7F7; border: 1px solid #87CEEB;">
              <div class="card-body">

                  <div class="row">
                      <div class="col">
                          <center>
                           <img src="imgs/sign-in-icon-3.jpg" width="100" />
                          </center>
                      </div>
                  </div>

                  <div class="row">
                      <div class="col">
                          <center>
                           <h3>User Profile</h3>
                              <span>Account status - </span>
                              <asp:Label class="badge badge-pill badge-info text-dark" ID="Label1" runat="server" Text="Your Status"></asp:Label>
                          </center>
                      </div>
                  </div>

                  <div class="row">
                     <div class="col">
                         <hr>
                     </div>
                 </div>

                   <div class="row">
                   <div class="col-md-6">
                         <label>Full Name</label>
                         <div class="form-group">
                             <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Full Name" ></asp:TextBox>
                      </div>
                   </div>

                        <div class="col-md-6">
                          
                         <label>Date of birth</label>
                         <div class="form-group">
                             <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Date of birth" TextMode="Date"></asp:TextBox>
                       </div>
                     </div>
                       </div>

                  <div class="row">
                    <div class="col-md-6">
                     <label>Contact No</label>
                       <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Contact No" TextMode="Phone"></asp:TextBox>
                      </div>
                  </div>

              <div class="col-md-6">
                   <label>Email ID</label>
                       <div class="form-group">
                          <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Email ID" TextMode="Email"></asp:TextBox>
                         </div>
                       </div>
                    </div>
               

    <div class="row">
      <div class="col-md-4">
       <label>Province</label>
         <div class="form-group">
             <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server">
                 <asp:ListItem Text="Select" value="Select"/>
                 <asp:ListItem Text="Eastern Cape" value="Eastern Cape"/>
                 <asp:ListItem Text="Free State" value="Free State"/>
                 <asp:ListItem Text="Gauteng" value="Gauteng"/>
                 <asp:ListItem Text="KwaZulu-Natal" value="KwaZulu-Natal"/>
                 <asp:ListItem Text="Limpopo" value="Limpopo"/>
                 <asp:ListItem Text="Mpumalanga" value="Mpumalanga"/>
                 <asp:ListItem Text="North West" value="North West"/>
                 <asp:ListItem Text="Northern Cape" value="Northern Cape"/>
                 <asp:ListItem Text="Western Cape" value="Western Cape"/>

             </asp:DropDownList>
        </div>
    </div>

     <div class="col-md-4">
     <label>City</label>
         <div class="form-group">
            <asp:TextBox Class="form-control" ID="TextBox6" runat="server" placeholder="City" TextMode="SingleLine"></asp:TextBox>
           </div>
         </div>
        <div class="col-md-4">
     <label>Pin Code</label>
         <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Pin Code" TextMode="Number"></asp:TextBox>
           </div>
         </div>
      </div>
     <div class="row">
     <div class="col">
      <label>Full Address</label>
      <div class="form-group">
          <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
        </div>
       </div><br />

         <div class="row">
             <div class="col">
               <center>
                 <span class="badge rounded-pill bg-info text-dark">Login credetials</span>
              </center>
           </div>
       </div>

               
         </div>
    <div class="row">
        <div class="col-md-4">
       <label>User ID</label>
       <div class="form-group">
           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="User ID" TextMode="Number" ReadOnly="True"></asp:TextBox>
        </div>
     </div>

      <div class="col-md-4">
        
       <label>Old Password</label>
       <div class="form-group">
           <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Password" TextMode="Password" CausesValidation="False" ReadOnly="True"></asp:TextBox>
     </div>
   </div>
      <div class="col-md-4">
        
       <label> New Password</label>
       <div class="form-group">
           <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
     </div>
   </div>
     </div><br />

        <div class="row">
            <div class="col-md-8">
                <center>
       <div class="form-group">
         <asp:Button class="btn btn-primary btn-block form-control btn-lg" ID="Button1" runat="server" Text="Update" OnClick="Button1_Click" />
           </div>
            </center>
        </div>
      </div>
     </div>
  </div>         
     </div>
    <div class="col-md-12">
         <div class="card">
      <div class="card-body">

  
    <div class="row">
        <div class="col">
           <center>
             <h3>Your Profile</h3>
                 <asp:Label class="badge rounded-pill bg-info text-dark" ID="Label2" runat="server" Text="Your Profile Information"></asp:Label>
            </center>
        </div>
        </div>
                   <a href="UserHome.aspx"> << Go Back To Home</a><br /><br />
    </div>
    </div>
    </div>

        <div class="row">
            <div class="col">
                <hr />
            </div>
         <div class="row">
            <div class="col">
                <asp:GridView Class="table table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>
            </div>
             </div> 
       </div>
  </div>
</div>
</asp:Content>
