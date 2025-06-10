<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Khenza_Foster_Care.WebForm18" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- About Section -->
<section id="about" class="section-padding">
  <div class="container">
    <div class="row text-center mb-5">
      <div class="col-md-12">
        <h2>About Us</h2>
        <p class="lead">We are a team of dedicated professionals working together to make a difference.</p>
      </div>
    </div>
    <div class="row align-items-center">
      <div class="col-lg-6 mb-4 text-center">
        <img src="imgs/WhatsApp Image 2025-05-22 at 00.33.38_d5002174.jpg" alt="About Us" class="img-fluid rounded shadow" style="max-height: 400px;">
      </div>
      <div class="col-lg-6">
        <h3 class="mb-3">Our Mission</h3>
        <p>Our mission is to provide high-quality services that make a positive impact on our clients' lives.</p>
        <ul style="list-style: none; padding-left: 0;">
          <li><i class="bi bi-check-circle-fill text-success me-2"></i> Expert team</li>
          <li><i class="bi bi-heart-fill text-danger me-2"></i> Passionate about our work</li>
          <li><i class="bi bi-graph-up-arrow text-info me-2"></i> Committed to excellence</li>
        </ul>
      </div>
    </div>
    <div class="row mt-5">
      <div class="col-lg-4 col-md-6 mb-4 text-center">
        <div class="card shadow">
          <div class="card-body">
            <i class="bi bi-people-fill text-primary" style="font-size: 40px;"></i>
            <h5 class="card-title mt-3">Our Team</h5>
            <p class="card-text">Meet our team of experienced professionals.</p>
            <a href="#" class="btn btn-primary">Learn More</a>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-6 mb-4 text-center">
        <div class="card shadow">
          <div class="card-body">
            <i class="bi bi-award-fill text-warning" style="font-size: 40px;"></i>
            <h5 class="card-title mt-3">Our Values</h5>
            <p class="card-text">Learn about our core values and mission.</p>
            <a href="#" class="btn btn-warning">Learn More</a>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-6 mb-4 text-center">
        <div class="card shadow">
          <div class="card-body">
            <i class="bi bi-chat-dots-fill text-info" style="font-size: 40px;"></i>
            <h5 class="card-title mt-3">Get in Touch</h5>
            <p class="card-text">Contact us to learn more about our services.</p>
            <a href="#" class="btn btn-info">Contact Us</a>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>


</asp:Content>
