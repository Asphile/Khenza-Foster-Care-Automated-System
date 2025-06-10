<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="robot.aspx.cs" Inherits="Khenza_Foster_Care.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container">
    <div class="row">
        <div class="col-md-6 mx-auto">
            <div class="card" style="background-color: #F7F7F7; border: 1px solid #87CEEB; box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);">
                <div class="card-body">
                    <div class="row">
                        <div class="col">
                            <center>
                                <h2 style="font-weight: bold; color: #337ab7;">Verify You're Human</h2>
                            </center>
                        </div>
                    </div><br />
                     <div class="row">
                        <div class="col">
                            <p style="font-size: 16px; text-align: center;">This website requires verification to ensure that you're a real person and not a robot. This helps us prevent spam and keep our website secure.</p>
                        </div>
                    </div><br />

                    <div class="row">
                        <div class="col">
                            <div class="form-group" style="display: flex; align-items: center; justify-content: center;">
                                <img src="imgs/robot-assistant.png" alt="Robot icon" style="width: 40px; height: 40px; margin-right: 10px;" />
                                <input type="checkbox" id="notRobot" name="notRobot" onclick="redirectToHomepage()" style="width: 20px; height: 20px; margin-right: 10px;">
                                <label for="notRobot" style="font-size: 18px;">I am not a robot</label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    function redirectToHomepage() {
        window.location.href = 'childrenProfile.aspx';
    }
</script>
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br />


</asp:Content>
