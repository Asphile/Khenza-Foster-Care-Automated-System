<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="StatusCheck.aspx.cs" Inherits="Khenza_Foster_Care.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container-fuild h-100">
    <div class="row justify-content-center h-100">
        <div class="col-md-6 my-auto">
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col">
                            <center>
                                <h3>Check Your Status</h3>
                            </center>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <center>
                                <img src="icons/Adoption.png" width="100" />
                            </center>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <hr />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <label>Member ID</label>
                            <div class="form-group">
                                <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Member ID" TextMode="SingleLine"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <label>Member Name</label>
  
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Member Name" CausesValidation="False" ReadOnly="True"></asp:TextBox>
                            </div>
                        </div>
                    </div><br />
                    <div class="row justify-content-center">
                        <div class="col-md-12">
                            <div class="form-group text-center">
                                <asp:Button class="btn btn-primary btn-block form-control btn-lg" ID="Button4" runat="server" Text="Check" OnClick="Button4_Click" />
                            </div>
                        </div>
                    </div>
                    <a href="AdminHome.aspx"> << Exit to home<br /><br />
                </div>
            </div>
            <div class="row">
               <div class="col-md-12">
                 <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped table-bordered" AutoGenerateColumns="true">
                 </asp:GridView>
               </div>
            </div>
        </div>
    </div>
</div>


</asp:Content>
