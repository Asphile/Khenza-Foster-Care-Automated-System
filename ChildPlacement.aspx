<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ChildPlacement.aspx.cs" Inherits="Khenza_Foster_Care.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">

        $(document).ready(function () {
            $(",table").DataTable();
      });

       function readURL(input) {
           if (input.files && input.files[0]) {
               var reader = new FileReader();

               reader.onload = function (e) {
                   $('#imgview').attr(src, e.target.result);
               };
               reader.readAsDataURL(input.files[0]);
           }
       }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <div class="row">
        <div class="col-md-8 mx-auto">

                   <div class="card" style="background-color: #F7F7F7; border: 1px solid #87CEEB;">
              <div class="card-body">

                  <div class="row">
                      <div class="col">
                          <center>
                           <img id="imgview" Height="150" width="100" src="imgs/sign-in-icon-3.jpg"/>
                          </center>
                      </div>
                  </div>

                  <div class="row">
                      <div class="col">
                          <center>
                           <h3>Child Information</h3>
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
                         <span class="badge rounded-pill bg-info text-dark">Child Image</span>
                       </center>
                     </div>
             <div class="row">
                <div class="col-md-12">
                  <label>child image</label>
                    <div class="form-group">
                   <asp:FileUpload onchange="readURL(this);" CssClass="form-control" ID="FileUpload1" runat="server" />
                  </div>
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
    <div class="col-md-4">
        <label>ChildID</label>
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="txtChildID" runat="server" placeholder="ChildID"></asp:TextBox>
        </div>
    </div>
    <div class="col-md-4">
        <label>Full Name</label>
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="txtFullName" runat="server" placeholder="Full Name"></asp:TextBox>
        </div>
    </div>
    <div class="col-md-4">
        <label>Surname</label>
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="txtSurname" runat="server" placeholder="Surname"></asp:TextBox>
        </div>
    </div>
</div>


                  <div class="row">
                    <div class="col-md-6">
                     <label>Date of birth</label>
                       <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Contact No" TextMode="Date"></asp:TextBox>
                      </div>
                  </div>

             <div class="col-md-6">
  <label>Ethnicity</label>
  <div class="form-group">
    <asp:DropDownList CssClass="form-control" ID="DropDownList3" runat="server">
      <asp:ListItem Text="Select" value="Select"/>
      <asp:ListItem Text="African American" value="African American"/>
      <asp:ListItem Text="Asian" value="Asian"/>
      <asp:ListItem Text="Caucasian" value="Caucasian"/>
      <asp:ListItem Text="Hispanic" value="Hispanic"/>
      <asp:ListItem Text="Native American" value="Native American"/>
      <asp:ListItem Text="Pacific Islander" value="Pacific Islander"/>
      <asp:ListItem Text="Multiracial" value="Multiracial"/>
      <asp:ListItem Text="Other" value="Other"/>
    </asp:DropDownList>
  </div>
</div>

               

    <div class="row">
      <div class="col-md-4">
       <label>Gender</label>
         <div class="form-group">
             <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server">
                 <asp:ListItem Text="Select" value="Select"/>
                 <asp:ListItem Text="Male" value="Male"/>
                 <asp:ListItem Text="Female" value="Female"/>
                 <asp:ListItem Text="Other" value="Other"/>
                
             </asp:DropDownList>
        </div>
    </div>

     <div class="col-md-4">
     <label>Age</label>
         <div class="form-group">
            <asp:TextBox Class="form-control" ID="TextBox6" runat="server" placeholder="Age" TextMode="Number"></asp:TextBox>
           </div>
         </div>
      <div class="col-md-4">
  <label>Religion</label>
  <div class="form-group">
    <asp:DropDownList CssClass="form-control" ID="DropDownList2" runat="server">
      <asp:ListItem Text="Select" value="Select"/>
      <asp:ListItem Text="Christianity" value="Christianity"/>
      <asp:ListItem Text="Islam" value="Islam"/>
      <asp:ListItem Text="Hinduism" value="Hinduism"/>
      <asp:ListItem Text="Buddhism" value="Buddhism"/>
      <asp:ListItem Text="Judaism" value="Judaism"/>
      <asp:ListItem Text="Other" value="Other"/>
    </asp:DropDownList>
  </div>
</div>

      </div><br /><br />
  <div class="row">
      <div class="col">
        <center>
          <span class="badge rounded-pill bg-info text-dark">Physical Characteristics</span>
       </center>
    </div>
</div>
        
 <div class="row">
  <div class="col-md-6">
    <label>Height</label>
    <div class="form-group">
      <asp:DropDownList CssClass="form-control" ID="DropDownList4" runat="server">
        <asp:ListItem Value="">Select</asp:ListItem>
        <asp:ListItem Value="60cm">60cm</asp:ListItem>
        <asp:ListItem Value="65cm">65cm</asp:ListItem>
        <asp:ListItem Value="70cm">70cm</asp:ListItem>
        <asp:ListItem Value="75cm">75cm</asp:ListItem>
        <asp:ListItem Value="80cm">80cm</asp:ListItem>
        <asp:ListItem Value="85cm">85cm</asp:ListItem>
        <asp:ListItem Value="90cm">90cm</asp:ListItem>
        <asp:ListItem Value="95cm">95cm</asp:ListItem>
        <asp:ListItem Value="1m">1m</asp:ListItem>
      </asp:DropDownList>
    </div>
  </div>
  <div class="col-md-6">
    <label>Weight</label>
    <div class="form-group">
      <asp:DropDownList CssClass="form-control" ID="DropDownList5" runat="server">
        <asp:ListItem Value="">Select</asp:ListItem>
        <asp:ListItem Value="10kg">10kg</asp:ListItem>
        <asp:ListItem Value="15kg">15kg</asp:ListItem>
        <asp:ListItem Value="20kg">20kg</asp:ListItem>
        <asp:ListItem Value="25kg">25kg</asp:ListItem>
        <asp:ListItem Value="30kg">30kg</asp:ListItem>
        <asp:ListItem Value="35kg">35kg</asp:ListItem>
        <asp:ListItem Value="40kg">40kg</asp:ListItem>
        <asp:ListItem Value="45kg">45kg</asp:ListItem>
        <asp:ListItem Value="50kg">50kg</asp:ListItem>
        <asp:ListItem Value="55kg">55kg</asp:ListItem>
        <asp:ListItem Value="60kg">60kg</asp:ListItem>
      </asp:DropDownList>
    </div>
  </div>
</div>
<div class="row">
  <div class="col-md-6">
    <label>Hair Color</label>
    <div class="form-group">
      <asp:DropDownList CssClass="form-control" ID="DropDownList6" runat="server">
        <asp:ListItem Value="">Select</asp:ListItem>
        <asp:ListItem Value="Black">Black</asp:ListItem>
        <asp:ListItem Value="Brown">Brown</asp:ListItem>
        <asp:ListItem Value="Blonde">Blonde</asp:ListItem>
        <asp:ListItem Value="Red">Red</asp:ListItem>
        <asp:ListItem Value="Other">Other</asp:ListItem>
      </asp:DropDownList>
    </div>
  </div>
  <div class="col-md-6">
    <label>Eye Color</label>
    <div class="form-group">
      <asp:DropDownList CssClass="form-control" ID="DropDownList7" runat="server">
        <asp:ListItem Value="">Select</asp:ListItem>
        <asp:ListItem Value="Blue">Blue</asp:ListItem>
        <asp:ListItem Value="Brown">Brown</asp:ListItem>
        <asp:ListItem Value="Green">Green</asp:ListItem>
        <asp:ListItem Value="Hazel">Hazel</asp:ListItem>
        <asp:ListItem Value="Other">Other</asp:ListItem>
      </asp:DropDownList>
    </div>
  </div>
</div>


<div class="row">
  <div class="col-md-6">
    <label>Distinguishing Features</label>
    <div class="form-group">
      <asp:DropDownList CssClass="form-control" ID="DropDownList12" runat="server">
        <asp:ListItem Value="">Select</asp:ListItem>
        <asp:ListItem Value="Scars">Scars</asp:ListItem>
        <asp:ListItem Value="Birthmarks">Birthmarks</asp:ListItem>
        <asp:ListItem Value="Tattoos">Tattoos</asp:ListItem>
        <asp:ListItem Value="Piercings">Piercings</asp:ListItem>
        <asp:ListItem Value="Other">Other</asp:ListItem>
      </asp:DropDownList>
     
    </div>
  </div>
</div><br /><br />

<div class="row">
  <div class="col">
    <center>
      <span class="badge rounded-pill bg-info text-dark">Medical Information</span>
    </center>
  </div>
</div>
<div class="row">
  <div class="col-md-6">
    <label>Known Medical Conditions or Special Needs</label>
    <div class="form-group">
      <asp:DropDownList CssClass="form-control" ID="DropDownList8" runat="server">
        <asp:ListItem Value="">Select</asp:ListItem>
        <asp:ListItem Value="None">None</asp:ListItem>
        <asp:ListItem Value="Allergies">Allergies</asp:ListItem>
        <asp:ListItem Value="Chronic Illnesses">Chronic Illnesses</asp:ListItem>
        <asp:ListItem Value="Disabilities">Disabilities</asp:ListItem>
        <asp:ListItem Value="Other">Other</asp:ListItem>
      </asp:DropDownList>
    </div>
  </div>
</div><br /><br />
<div class="row">
  <div class="col">
    <center>
      <span class="badge rounded-pill bg-info text-dark">Personality and Interests</span>
    </center>
  </div>
</div>
<div class="row">
  <div class="col-md-4">
    <label>Personality Traits</label>
    <div class="form-group">
      <asp:DropDownList CssClass="form-control" ID="DropDownList9" runat="server">
        <asp:ListItem Value="">Select</asp:ListItem>
        <asp:ListItem Value="Outgoing">Outgoing</asp:ListItem>
        <asp:ListItem Value="Shy">Shy</asp:ListItem>
        <asp:ListItem Value="Introverted">Introverted</asp:ListItem>
        <asp:ListItem Value="Extroverted">Extroverted</asp:ListItem>
        <asp:ListItem Value="Other">Other</asp:ListItem>
      </asp:DropDownList>
    </div>
  </div>
  <div class="col-md-4">
    <label>Hobbies or Interests</label>
    <div class="form-group">
      <asp:DropDownList CssClass="form-control" ID="DropDownList10" runat="server">
        <asp:ListItem Value="">Select</asp:ListItem>
        <asp:ListItem Value="Sports">Sports</asp:ListItem>
        <asp:ListItem Value="Music">Music</asp:ListItem>
        <asp:ListItem Value="Art">Art</asp:ListItem>
        <asp:ListItem Value="Reading">Reading</asp:ListItem>
        <asp:ListItem Value="Other">Other</asp:ListItem>
      </asp:DropDownList>
    </div>
  </div>
  <div class="col-md-4">
    <label>Talents or Skills</label>

    <div class="form-group">
      <asp:DropDownList CssClass="form-control" ID="DropDownList11" runat="server">
        <asp:ListItem Value="">Select</asp:ListItem>
        <asp:ListItem Value="Singing">Singing</asp:ListItem>
        <asp:ListItem Value="Dancing">Dancing</asp:ListItem>
        <asp:ListItem Value="Playing an Instrument">Playing an Instrument</asp:ListItem>
        <asp:ListItem Value="Writing">Writing</asp:ListItem>
        <asp:ListItem Value="Other">Other</asp:ListItem>
      </asp:DropDownList>
    </div>
      </div>
  </div>
</div>
<br /><br />
 <div class="row">
    <div class="col-md-4">
           <div class="form-group">
             <asp:Button class="btn btn-success btn-block form-control btn-lg" ID="Button1" runat="server" Text="Add" OnClick="Button1_Click"/>
          </div>
     </div>
     <div class="col-md-4">
          <div class="form-group">
             <asp:Button class="btn btn-primary btn-block form-control btn-lg" ID="Button2" runat="server" Text="Update" OnClick="Button2_Click" />
           </div>
      </div>
       <div class="col-md-4">
          <div class="form-group">
              <asp:Button class="btn btn-danger btn-block form-control btn-lg" ID="Button3" runat="server" Text="Delete" OnClick="Button3_Click"/>
          </div>
       </div>
    </div>


  </div>
  </div>
      
</div>
 <a href="CaseWorkerHome.aspx"> << Exit to home></a><br /><br />
      </div>
        <div class="col-md-12">
    <div class="card">
        <div class="card-body">
            <div class="row">
                <div class="col">
                    <center>
                        <h3>Children Details</h3>
                    </center>
                </div>
            </div> 
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Khenza_Foster_careConnectionString6 %>" SelectCommand="SELECT * FROM [child_Placement]" ProviderName="<%$ ConnectionStrings:Khenza_Foster_careConnectionString6.ProviderName %>"></asp:SqlDataSource>
        <asp:GridView Class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ChildId" DataSourceID="SqlDataSource1" Width="1077px" Height="156px">
            <Columns>
                <asp:BoundField DataField="ChildId" HeaderText="ID" ReadOnly="True" SortExpression="ChildId" >
              
              
                <ControlStyle Font-Bold="True" />
                </asp:BoundField>
              
              
               <asp:TemplateField>
    <ItemTemplate>
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-10">
                    <div class="row">
                      <div class="col-12">
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("FullName") %>' Font-Bold="True" Font-Size="X-Large"></asp:Label>
                     <asp:Label ID="Label2" runat="server" Text='<%# Eval("Surname") %>' Font-Bold="True" Font-Size="X-Large"></asp:Label>
                    </div>
                    </div>
                    <div class="row">
                      <div class="col-12">
                    
                          Date Of Birth-<asp:Label ID="Label3" runat="server" Text='<%# Eval("DateOfBirth") %>' Font-Bold="True"></asp:Label>
                          &nbsp;| Ethnicity-<asp:Label ID="Label4" runat="server" Text='<%# Eval("Ethnicity") %>' Font-Bold="True"></asp:Label>
                          &nbsp;| Gender-<asp:Label ID="Label5" runat="server" Text='<%# Eval("Gender") %>' Font-Bold="True"></asp:Label>
                    </div>
                   </div>
                    <div class="row">
                    <div class="col-12">

                        Age-<asp:Label ID="Label6" runat="server" Font-Bold="True" Text='<%# Eval("Age") %>'></asp:Label>
                        &nbsp;| Religion-<asp:Label ID="Label7" runat="server" Font-Bold="True" Text='<%# Eval("Religion") %>'></asp:Label>
                        &nbsp;| Height-<asp:Label ID="Label8" runat="server" Font-Bold="True" Text='<%# Eval("Height") %>'></asp:Label>

                     </div>
                    </div>
                      <div class="row">
                    <div class="col-12">

                        Weight-<asp:Label ID="Label9" runat="server" Font-Bold="True" Text='<%# Eval("Weight") %>'></asp:Label>
                        &nbsp;| Hair Color-<asp:Label ID="Label10" runat="server" Font-Bold="True" Text='<%# Eval("HairColor") %>'></asp:Label>
                        &nbsp;| Eye Color-<asp:Label ID="Label11" runat="server" Font-Bold="True" Text='<%# Eval("EyeColor") %>'></asp:Label>

                     </div>
                    </div>
                      <div class="row">
                    <div class="col-12">

                        Distinguishing Features-<asp:Label ID="Label12" runat="server" Font-Bold="True" Text='<%# Eval("DistinguishingFeatures") %>'></asp:Label>
                        &nbsp;| Known Medical Conditions-<asp:Label ID="Label13" runat="server" Font-Bold="True" Text='<%# Eval("KnownMedicalConditions") %>'></asp:Label>

                     </div>
                    </div>
                     <div class="row">
                    <div class="col-12">

                        Personality Traits-<asp:Label ID="Label14" runat="server" Font-Bold="True" Text='<%# Eval("PersonalityTraits") %>'></asp:Label>
                        &nbsp;| Hobbies-<asp:Label ID="Label15" runat="server" Font-Bold="True" Text='<%# Eval("Hobbies") %>'></asp:Label>
                        &nbsp;| Talents-<asp:Label ID="Label16" runat="server" Font-Bold="True" Text='<%# Eval("Talents") %>'></asp:Label>

                     </div>
                    </div>
                  </div>


            </div>
                </div>
            </div>
        </div>
    </ItemTemplate>
</asp:TemplateField>

                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%#"childpics/" + Eval("ChildImage") %>' Height="150" Width="150" />
                    </ItemTemplate>
                    <ItemStyle Font-Names="image" />
                </asp:TemplateField>

              
            </Columns>
            
            </asp:GridView>
            </div>
        </div>
        </div>
        </div>
        </div><br /><br />

</asp:Content>
