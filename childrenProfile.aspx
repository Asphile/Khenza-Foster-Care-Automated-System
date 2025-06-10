<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="childrenProfile.aspx.cs" Inherits="Khenza_Foster_Care.WebForm14" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
</asp:Content>
