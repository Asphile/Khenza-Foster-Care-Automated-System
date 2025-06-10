<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ChildIssued.aspx.cs" Inherits="Khenza_Foster_Care.WebForm15" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <div class="container-fuild">
<div class="row">
    <div class="col-md-5">

      <div class="card">
          <div class="card-body">

              <div class="row">
                  <div class="col">
                      <center>
                       <h3>Child Issued</h3>
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
               <div class="col-md-6">
                     <label>Member ID</label>
                     <div class="form-group">
                         <div class="input-group">
                         <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Member ID" TextMode="SingleLine"></asp:TextBox>
                             
                       </div>
                   </div>
               </div>

                    <div class="col-md-6">
                      
                     <label>Child ID</label>
                     <div class="form-group">
                         <div class="input-group">
                         <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Child ID" TextMode="SingleLine"></asp:TextBox>
                         <asp:Button class="btn btn-primary" ID="Button4" runat="server" Text="Go" OnClick="Button4_Click" />
                         </div>
                   </div>
                 </div>
                   </div>
               <div class="row">
               <div class="col-md-6">
                     <label>Member Name</label>
                     <div class="form-group">
                         <div class="input-group">
                         <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Member Name" TextMode="SingleLine"  CausesValidation="False" ReadOnly="True"></asp:TextBox>
                             
                       </div>
                   </div>
               </div>

                    <div class="col-md-6">
                      
                     <label>Child Name</label>
                     <div class="form-group">
                         <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Child Name"  CausesValidation="False" ReadOnly="True"></asp:TextBox>
                   </div>
                 </div>
                   </div>
         
             <div class="row">
               <div class="col-md-6">
                     <label>Date</label>
                     <div class="form-group">
                         <div class="input-group">
                         <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Date"  CausesValidation="False" TextMode="Date"></asp:TextBox>
                             
                       </div>
                   </div>
               </div>
                 <div class="col-md-6">
      <label>Account_status</label>
      <div class="form-group">
          <div class="input-group">
         <asp:DropDownList ID="DropDownList1" runat="server">
    <asp:ListItem Value="Accepted">Accepted</asp:ListItem>
    <asp:ListItem Value="Rejected">Rejected</asp:ListItem>
    <asp:ListItem Value="Pending">Pending</asp:ListItem>
    <asp:ListItem Value="Approved">Approved</asp:ListItem>
    <asp:ListItem Value="Denied">Denied</asp:ListItem>
</asp:DropDownList>

              
        </div>
    </div>
</div>

             </div>
         <div class="col-md-6">
    <label>reasons</label>
    <div class="form-group">
        <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="reasons"  CausesValidation="False" ReadOnly="False"></asp:TextBox>
  </div>
</div>
                  
            
       <br />

            <div class="row justify-content-center">
               <div class="col-md-6">
                  <div class="form-group text-center">
                   <asp:Button class="btn btn-primary btn-block form-control btn-lg" ID="Button1" runat="server" Text="Issued" OnClick="Button1_Click" />
                 </div>
              </div>
           </div>
        </div>
          
      </div>
        <a href="AdminHome.aspx"> << Exit to home</a><br /><br /> 
    </div>

               <div class="col-md-7">
    <div class="card">
        <div class="card-body">
            <div class="row">
                <div class="col">
                    <center>
                        <h3>Child Issued</h3>
                    </center>
                </div>
            </div>
                             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Khenza_Foster_careConnectionString6 %>" SelectCommand="SELECT * FROM [IssuedChild]"></asp:SqlDataSource>
                           <asp:GridView Class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" Width="557px" CellPadding="4" ForeColor="#333333" GridLines="None" DataKeyNames="UserID" DataSourceID="SqlDataSource1">
                               <AlternatingRowStyle BackColor="White" />
                               <Columns>
                                   <asp:BoundField DataField="UserID" HeaderText="UserID" ReadOnly="True" SortExpression="UserID" />
                                   <asp:BoundField DataField="ChildID" HeaderText="ChildID" SortExpression="ChildID" />
                                   <asp:BoundField DataField="Member_Name" HeaderText="Member_Name" SortExpression="Member_Name" />
                                   <asp:BoundField DataField="Child_Name" HeaderText="Child_Name" SortExpression="Child_Name" />
                                   <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
                                   <asp:BoundField DataField="Account_status" HeaderText="Account_status" SortExpression="Account_status" />
                                   <asp:BoundField DataField="reasons" HeaderText="reasons" SortExpression="reasons" />
                               </Columns>
                               <EditRowStyle BackColor="#2461BF" />
                               <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                               <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                               <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                               <RowStyle BackColor="#EFF3FB" />
                               <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                               <SortedAscendingCellStyle BackColor="#F5F7FB" />
                               <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                               <SortedDescendingCellStyle BackColor="#E9EBEF" />
                               <SortedDescendingHeaderStyle BackColor="#4870BE" />
                             </asp:GridView>
                         </div>
                      </div> 
                   </div> 
               </div>
         </div>
</asp:Content>
