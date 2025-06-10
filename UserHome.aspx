<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserHome.aspx.cs" Inherits="Khenza_Foster_Care.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<section id="portfolio" class="portfolio section-padding" style="background-color: #f7f7f7;">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <h2 class="text-center mb-5" style="color: #333; font-weight: bold;">Our Foster Care Services</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-12 col-md-12 col-lg-4 mb-4">
                <div class="card text-center bg-white pb-2 shadow-sm" style="border-radius: 10px;">
                    <div class="card-body text-dark">
                        <div class="img-area mb-4">
                            <img src="pics/father-and-daughter-8059300_1280.jpg" height="300" width="300" alt="" class="img-fluid" style="border-radius: 10px 10px 0 0;" />
                        </div>
                        <h3 class="card-title" style="color: #337ab7;">Providing A Safe And Nurturing Home</h3>
                        <p class="card-text" style="color: #666;">Foster parents provide a stable, secure, and loving environment for children who have experienced trauma or instability, meeting their basic needs and offering emotional support.</p>
                        <button href="video.aspx" class="btn bg-warning text-dark" style="border-radius: 5px;">Learn More</button>
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-12 col-lg-4 mb-4">
                <div class="card text-center bg-white pb-2 shadow-sm" style="border-radius: 10px;">
                    <div class="card-body text-dark">
                        <div class="img-area mb-4">
                            <img src="pics/selfie-5219202_1280.jpg" alt="" class="img-fluid" style="border-radius: 10px 10px 0 0;" />
                        </div>
                        <h3 class="card-title" style="color: #337ab7;">Support Child's Development And Well Being</h3>
                        <p class="card-text" style="color: #666;">Foster parents support the child's development and well-being by addressing their emotional, physical, and social needs, and guiding them through their healing and personal growth.</p>
                        <button href="video.aspx" class="btn bg-warning text-dark" style="border-radius: 5px;">Learn More</button></>
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-12 col-lg-4 mb-4">
                <div class="card text-center bg-white pb-2 shadow-sm" style="border-radius: 10px;">
                    <div class="card-body text-dark">
                        <div class="img-area mb-4">
                            <img src="pic/family-3347049_1280.jpg" alt="" class="img-fluid" style="border-radius: 10px 10px 0 0;" />
                        </div>
                        <h3 class="card-title" style="color: #337ab7;">Cooperating With Caseworkers And Biological Families</h3>
                        <p class="card-text" style="color: #666;">Foster parents cooperate with caseworkers, social workers, and biological families to support the child's case plan, providing regular updates on the child's well-being and participating in meetings.</p>
                        <button href="video.aspx" class="btn bg-warning text-dark" style="border-radius: 5px;">Learn More</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="row mt-5">
            <div class="col-12">
                <h2 class="text-center mb-3" style="color: #333; font-weight: bold;">Why Choose Us?</h2>
                <p class="text-center" style="color: #666;">We provide a safe, loving, and supportive environment for children in need. Our experienced team works closely with foster parents and biological families to ensure the best possible outcomes for each child.</p>
                <div class="row justify-content-center">
        <div class="col-md-3">
            <div class="form-group">
                <a href="robot.aspx"><input class="btn btn-warning btn-block form-control btn-lg" id="Button1" type="button" value="View children we have" /></a>
            </div>
        </div>
        <div class="col-md-3">
            <div class="form-group">
                <a href="UserSigIn.aspx">
                   
                </a>
            </div>
        </div>
    </div>

         </div>
      </div>
</section>



</asp:Content>
