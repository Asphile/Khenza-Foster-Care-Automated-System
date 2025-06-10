<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CaseWorkerManagment.aspx.cs" Inherits="Khenza_Foster_Care.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        let table = new DataTable('#myTable');
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <div class="container-fluid">
  <div class="row">
    <div class="col-md-5">
<div class="card" style="background-color: #F7F7F7; border: 1px solid #87CEEB;">
        <div class="card-body">
          <div class="row">
            <div class="col">
              <center>
                <h3>    CaseWorker Details</h3>
              </center>
            </div>
          </div>
          <div class="row">
            <div class="col">
              <center>
                <img src="imgs/AdminD.jpg" width="100" />
              </center>
            </div>
          </div>
          <div class="row">
            <div class="col">
              <hr />
            </div>
          </div>
          <div class="row">
            <div class="col-md-4">
              <label>Caseworker ID</label>
              <div class="form-group">
                <div class="input-group">
                  <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Admin ID"></asp:TextBox>
                  <asp:Button class="btn btn-primary" ID="Button4" runat="server" Text="Go" />
                </div>
              </div>
            </div>
            <div class="col-md-8">
              <label>CaseWorker Name</label>
              <div class="form-group">
                <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Admin Name" TextMode="SingleLine"></asp:TextBox>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-8">
              <label>CaseWorker Password</label>
              <div class="form-group">
                <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Admin Password" TextMode="Password"></asp:TextBox>
              </div>
            </div>
          </div>
          <br />
          <div class="row">
            <div class="col-md-4">
              <div class="form-group">
                <asp:Button class="btn btn-success btn-block form-control btn-lg" ID="Button1" runat="server" Text="Add" OnClick="Button1_Click"/>
              </div>
            </div>
            <div class="col-md-4">
              <div class="form-group">
                <asp:Button class="btn btn-warning btn-block form-control btn-lg" ID="Button2" runat="server" Text="Update" OnClick="Button2_Click"/>
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
    </div><br /><br />
      

<div class="col-md-6">
    <div class="card">
        <div class="card-body">
            <div class="row">
                <div class="col">
                    <center>
                        <h3>CaseWorker Details</h3>
                    </center>
                </div>
            </div>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Khenza_Foster_careConnectionString %>" ProviderName="<%$ ConnectionStrings:Khenza_Foster_careConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Admin_login]"></asp:SqlDataSource>
            <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" DataSourceID="SqlDataSource1" GridLines="None" CellPadding="4" ForeColor="#333333" Width="600px">
                <AlternatingRowStyle BackColor="White" />
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
