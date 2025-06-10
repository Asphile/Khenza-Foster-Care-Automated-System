<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MemberManager.aspx.cs" Inherits="Khenza_Foster_Care.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <script type="text/javascript">
    $(document).ready(function() {
        $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        //$(".table").DataTable();
    });
        </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                     <div class="container-fuild">
<div class="row justify-content-center">
    <div class="col-md-5">

<div class="card" style="background-color: #F7F7F7; border: 1px solid #87CEEB;">
          <div class="card-body">

              <div class="row">
                  <div class="col">
                      <center>
                       <h3>Parent Details</h3>
                      </center>
                  </div>
              </div>

           <div class="row">
                  <div class="col">
                      <center>
                       <img src="imgs/sign-in-icon-3.jpg" width="100" />
                      </center>
                  </div>
              </div>

              <div class="row">
                 <div class="col">
                     <hr>
                 </div>
             </div>

               <div class="row">
            <%--   <div class="col-md-7">
                     <label>Member ID</label>
                     <div class="form-group">
                         <div class="input-group">
                         <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Member ID" ></asp:TextBox>
                             <asp:Button class="btn btn-primary" ID="Button4" runat="server" Text="Go" OnClick="Button4_Click" />
                       </div>
                   </div>
               </div>--%>
                  <%-- <div class="col-md-8">
                        <label>Account Status</label>
                              <div class="form-group">
                                 <div class="input-group">
                                   <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Account Status" ReadOnly="True"></asp:TextBox>
                                     <asp:LinkButton class="btn btn-success" ID="LinkButton1" runat="server" Text="S" OnClick="LinkButton1_Click"><i class="fa fa-check-circle" aria-hidden="true"></i></asp:LinkButton><br />
                                     <asp:LinkButton class="btn btn-warning" ID="LinkButton2" runat="server" Text="W" OnClick="LinkButton2_Click"><i class="fa fa-times-circle" aria-hidden="true"></i></asp:LinkButton><br />
                                     <asp:LinkButton class="btn btn-danger"  ID="LinkButton3" runat="server" Text="D" OnClick="LinkButton3_Click"><i class="fa fa-window-close" aria-hidden="true"></i></asp:LinkButton>
                                  
                                </div>
                              </div>
                         </div>--%>
                   </div>
                    </div>
                  </div>
         <a href="ChildIssued.aspx"> Match</a><br /><br />
              </div>

         <div class="col-md-12">
    <div class="card">
        <div class="card-body">
            <div class="row">
                <div class="col">
                    <center>
                        <h3>Matching List</h3>
                    </center>
                    </div>
                </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Khenza_Foster_careConnectionString6 %>" SelectCommand="SELECT * FROM [Adopt_forms]"></asp:SqlDataSource>
            <asp:GridView Class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="UserID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="UserID" HeaderText="UserID" ReadOnly="True" SortExpression="UserID" />
                  
                    <asp:TemplateField>
                        <ItemTemplate>
                                  <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div class="row">
                      <div class="col-12">
                    <asp:Label ID="Label1" runat="server"  Font-Bold="True" Font-Size="X-Large" Text='<%# Eval("FullName") %>'></asp:Label>
                    </div>
                    </div>
                    <div class="row">
                      <div class="col-12">
                    
                          UserID-<asp:Label ID="Label3" runat="server"  Font-Bold="True" Text='<%# Eval("UserID") %>'></asp:Label>
                          &nbsp;| DateOfBirth-<asp:Label ID="Label4" runat="server" Font-Bold="True" Text='<%# Eval("DateOfBirth") %>'></asp:Label>
                          &nbsp;| ContactNo-<asp:Label ID="Label5" runat="server" Font-Bold="True" Text='<%# Eval("ContactNo") %>'></asp:Label>
                    </div>
                   </div>
                    <div class="row">
                    <div class="col-12">

                        EmailID-<asp:Label ID="Label6" runat="server" Font-Bold="True" Text='<%# Eval("EmailID") %>' ></asp:Label>
                        &nbsp;| MaritalStatus-<asp:Label ID="Label7" runat="server" Font-Bold="True" Text='<%# Eval("MaritalStatus") %>' ></asp:Label>
                        &nbsp;| ChildrenInHome-<asp:Label ID="Label8" runat="server" Font-Bold="True" Text='<%# Eval("ChildrenInHome") %>' ></asp:Label>

                     </div>
                    </div>
                      <div class="row">
                    <div class="col-12">

                        Income-<asp:Label ID="Label9" runat="server" Font-Bold="True" Text='<%# Eval("Income") %>'></asp:Label>
                        &nbsp;| Employer-<asp:Label ID="Label10" runat="server" Font-Bold="True" Text='<%# Eval("Employer") %>'></asp:Label>
                        &nbsp;| Occupation-<asp:Label ID="Label11" runat="server" Font-Bold="True" Text='<%# Eval("Occupation") %>'></asp:Label>

                     </div>
                    </div>
                      <div class="row">
                    <div class="col-12">

                        MedicalCondition-<asp:Label ID="Label12" runat="server" Font-Bold="True" Text='<%# Eval("MedicalCondition") %>' ></asp:Label>
                        &nbsp;| Medications-<asp:Label ID="Label13" runat="server" Font-Bold="True" Text='<%# Eval("Medications") %>'></asp:Label>

                     </div>
                    </div>
                     <div class="row">
                    <div class="col-12">

                        CriminalConviction-<asp:Label ID="Label14" runat="server" Font-Bold="True" Text='<%# Eval("CriminalConviction") %>' ></asp:Label>
                        &nbsp;| CriminalExplanation-<asp:Label ID="Label15" runat="server" Font-Bold="True" Text='<%# Eval("CriminalExplanation") %>'></asp:Label>
                        &nbsp;| AdoptionReason-<asp:Label ID="Label16" runat="server" Font-Bold="True" Text='<%# Eval("AdoptionReason") %>'></asp:Label>

                        &nbsp;| ChildCarePlan-<asp:Label ID="Label17" runat="server" Font-Bold="True" Text='<%# Eval("ChildCarePlan") %>'></asp:Label>

                     </div>
                    </div>
                  </div>
            </div>
                </div>
                        </ItemTemplate>
                    </asp:TemplateField>
                  
                </Columns>
            </asp:GridView>
            </div>
        </div>
     </div>
    </div>
    </div>
</asp:Content>
