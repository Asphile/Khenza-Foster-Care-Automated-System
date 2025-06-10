<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdoptChild.aspx.cs" Inherits="Khenza_Foster_Care.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div class="container">
    <div class="row">
        <div class="col-md-8 mx-auto">
          <div class="card" style="background-color:#F7F7F7; border: 1px solid #87CEEB;">
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
                           <h3>Adoption Form</h3>
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
                         <center>
                         <span class="badge rounded-pill bg-info text-dark">Child Profile</span>
                       </center>
                     </div>
                 </div>
                <div class="row">
                       <div class="col-md-6">
                         <label>User ID</label>
 
                          <div class="form-group">
                            <div class="input-group">
                            <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="User ID" ></asp:TextBox>
                            <asp:Button class="btn btn-success" ID="Button4" runat="server" Text="Go" OnClick="Button4_Click" />
                          </div>
                      </div>
                   </div>
               <div class="col-md-6">
                    <label>Full Name</label>
                     <div class="form-group">
                         <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Full Name" ReadOnly="True"></asp:TextBox>
                  </div>
               </div>
                   </div>

              <div class="row">
                <div class="col-md-6">
                  <label>Date of birth</label>
                     <div class="form-group">
                         <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Date of birth" TextMode="Date" ReadOnly="True"></asp:TextBox>
                   </div>
              </div>

          <div class="col-md-6">
              <label>Contact No</label>
                   <div class="form-group">
                       <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Contact No" TextMode="Phone" ReadOnly="True"></asp:TextBox>
                  </div>
                   </div>
                </div>
           

<div class="row">
  <div class="col-md-7">
    <label>Email ID</label>
     <div class="form-group">
         <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Email ID" TextMode="Email" ReadOnly="True"></asp:TextBox>
        
       </div>
</div>
    </div>
          <br />

     <div class="row">
         <div class="col">
           <center>
             <span class="badge rounded-pill bg-info text-dark">Marital Status</span>
          </center>
       </div>
   </div>

    <div class="row">
    <div class="col-md-6">
         <label>Marital Status</label>
        <div class="form-group">
           <asp:DropDownList Class="form-control" ID="DropDownList2" runat="server">
            <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
            <asp:ListItem Text="Single" Value="Single"></asp:ListItem>
             <asp:ListItem Text="Married" Value="Married"></asp:ListItem>
              <asp:ListItem Text="Divorced" Value="Divorced"></asp:ListItem>
               <asp:ListItem Text="Widowed" Value="Widowed"></asp:ListItem>
             </asp:DropDownList>
        </div>
     </div>
      <div class="col-md-6">
         <label>There Is Children in the Home</label>
        <div class="form-group">
           <asp:DropDownList Class="form-control" ID="DropDownList5" runat="server">
            <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
            <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
             <asp:ListItem Text="No" Value="No"></asp:ListItem>
             </asp:DropDownList>
        </div>
     </div>
  </div><br />

  <div class="row">
      <div class="col">
        <center>
          <span class="badge rounded-pill bg-info text-dark">Financial Information</span>
       </center>
    </div>
</div>
  <div class="row">
  <div class="col-md-4">
       <label>Income</label>
      <div class="form-group">
       <asp:TextBox Class="form-control" ID="TextBox10" runat="server" placeholder="Income" TextMode="Number"></asp:TextBox>
      </div>
   </div>
<div class="col-md-4">
    <label>Employer</label>
    <div class="form-group">
        <asp:DropDownList CssClass="form-control" ID="DropDownListEmployer" runat="server">
            <asp:ListItem Text="Select Employer" Value=""></asp:ListItem>
            <asp:ListItem Text="Government" Value="Government"></asp:ListItem>
            <asp:ListItem Text="Private Sector" Value="Private Sector"></asp:ListItem>
            <asp:ListItem Text="Non-Profit" Value="Non-Profit"></asp:ListItem>
            <asp:ListItem Text="Self-Employed" Value="Self-Employed"></asp:ListItem>
            <asp:ListItem Text="Other" Value="Other"></asp:ListItem>
        </asp:DropDownList>
    </div>
</div>

    <div class="col-md-4">
       <label>Occupation</label>
      <div class="form-group">
         <asp:TextBox Class="form-control" ID="TextBox11" runat="server" placeholder="Occupation" TextMode="SingleLine"></asp:TextBox>
      </div>
   </div>
</div><br />

    <div class="row">
        <div class="col">
           <center>
            <span class="badge rounded-pill bg-info text-dark">Medical Condition</span>
          </center>
       </div>
   </div>
  <div class="row">
  <div class="col-md-6">
       <label>Medical Condition</label>
      <div class="form-group">
       <asp:DropDownList Class="form-control" ID="DropDownList3" runat="server">
        <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
         <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
          <asp:ListItem Text="No" Value="No"></asp:ListItem>
           </asp:DropDownList>
      </div>
   </div>
    <div class="col-md-6">
       <label>Medications</label>
      <div class="form-group">
         <asp:TextBox Class="form-control" ID="TextBox13" runat="server" placeholder="Medications" TextMode="SingleLine"></asp:TextBox>
      </div>
   </div>
</div><br />

    <div class="row">
        <div class="col">
           <center>
            <span class="badge rounded-pill bg-info text-dark">Criminal History</span>
          </center>
       </div>
   </div>
  <div class="row">
  <div class="col-md-6">
       <label>Have you ever been convicted of a crime?</label>
      <div class="form-group">
       <asp:DropDownList Class="form-control" ID="DropDownList4" runat="server">
        <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
         <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
          <asp:ListItem Text="No" Value="No"></asp:ListItem>
           </asp:DropDownList>
      </div>
   </div>
    <div class="col-md-6">
       <label>If yes, please explain</label>
      <div class="form-group">
         <asp:TextBox Class="form-control" ID="TextBox12" runat="server" placeholder="If yes, please explain" TextMode="SingleLine"></asp:TextBox>
      </div>
   </div>
</div><br />
  <div class="row">
      <div class="col">
        <center>
          <span class="badge rounded-pill bg-info text-dark">Adoption Information</span>
       </center>
    </div>
</div>
  <div class="row">
  <div class="col-md-6">
       <label>Why do you want to adopt this child?</label>
      <div class="form-group">
       <asp:TextBox Class="form-control" ID="TextBox14" runat="server" placeholder="Reason" TextMode="SingleLine"></asp:TextBox>
      </div>
   </div>
    <div class="col-md-6">
       <label>How will you provide for the child's physical, emotional, and educational needs?</label>
      <div class="form-group">
         <asp:TextBox Class="form-control" ID="TextBox15" runat="server" placeholder="Reason" TextMode="SingleLine"></asp:TextBox>
      </div>
   </div>
</div>
    <div class="row">
      <div class="col">
        <center>
          <span class="badge rounded-pill bg-info text-dark">Child want to adopt</span>
       </center>
    </div>
</div>
  <br />
   <div class="row">
     <div class="col">
       <div class="form-group">
         <asp:Button class="btn btn-primary btn-block form-control btn-lg btn-success" ID="Button1" runat="server" Text="Submit Adoption form" OnClick="Button1_Click"/>
           </div>

          </div>
     </div>
 </div>

</div>
                     <a href="UserHome.aspx"> << Exit to home><br /><br />   
      </div>
  </div>
 </div>

    </a>

</asp:Content>
