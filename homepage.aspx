<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="Khenza_Foster_Care.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <!-- Bootstrap Carousel Section -->
<div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="images/woman-538396_640.jpg" class="d-block w-100" alt="Woman smiling with child">
      <div class="carousel-caption">
        <h5>Streamlining the path to Adoption</h5>
        <p>Simplifying Foster Care Processes</p>
        <p><a href="UserSigIn.aspx" class="btn btn-warning mt-3">Learn More</a></p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="images/kite-1666816_1280.jpg" class="d-block w-100" alt="Child flying a kite">
      <div class="carousel-caption">
        <h5>Efficiently Managing Foster Care</h5>
        <p>A Seamless Experience For Families And Caseworkers</p>
        <p><a href="UserLogin.aspx" class="btn btn-warning mt-3">Learn More</a></p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="images/father-and-son-2258681_640.jpg" class="d-block w-100" alt="Father and son smiling">
      <div class="carousel-caption">
        <h5>Empowering Foster Families</h5>
        <p>Automating Care, Support, And Adoption</p>
        <p><a href="UserSigIn.aspx" class="btn btn-warning mt-3">Learn More</a></p>
      </div>
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

<!-- Mission Section -->
<section id="mission" class="section-padding bg-light">
  <div class="container">
    <div class="row text-center mb-5">
      <div class="col-md-12">
        <h2>Our Mission in Action</h2>
        <p class="lead">We go beyond placement—we build futures filled with love, stability, and purpose.</p>
      </div>
    </div>
    <div class="row align-items-center">
      <div class="col-lg-6">
        <h3 class="mb-4">Transforming Lives, One Child at a Time</h3>
        <p>Every child deserves a safe, nurturing environment to grow and thrive. Our mission is to ensure that no child is left behind in a system—they're welcomed into a story of hope and belonging.</p>
        <ul class="list-unstyled mt-4">
          <li class="mb-3"><i class="bi bi-heart-fill text-warning me-2"></i> Holistic care with emotional & therapeutic support</li>
          <li class="mb-3"><i class="bi bi-people-fill text-warning me-2"></i> Strong partnerships with foster families</li>
            <li class="mb-3"><i class="bi bi-shield-lock-fill text-warning me-2"></i> Safe, secure processes that put children first</li>
        </ul>
        <a href="About.aspx" class="btn btn-warning mt-3">Discover Our Impact</a>
      </div>
      <div class="col-lg-6 text-center mt-4 mt-lg-0">
        <img src="icons/child-8807446_1280.jpg" alt="Happy family illustration" class="img-fluid rounded shadow" style="max-height: 400px;">
      </div>
    </div>
  </div>
</section>

<!-- How We Help Section -->
<section id="portfolio" class="portfolio section-padding">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="section-header text-center pb-5">
          <h2>How We Help</h2>
          <p>We provide comprehensive support to children and families through every step of the foster and adoption journey.</p>
        </div>
      </div>
    </div>
    <div class="row align-items-center">
      <div class="col-lg-6 mb-4 text-center">
        <img src="icons/selfie-5219202_1280.jpg" alt="Supportive foster family illustration" class="img-fluid rounded shadow" style="max-height: 400px;">
      </div>
      <div class="col-lg-6">
        <h3 class="mb-3">Comprehensive Care and Support</h3>
        <p>Our services are tailored to empower families and uplift every child through a supportive, compassionate process.</p>
        <ul style="list-style: none; padding-left: 0;">
          <li>✅ Personalized foster placement and matching</li>
          <li>✅ Trauma-informed counseling & therapy</li>
          <li>✅ Educational and recreational enrichment</li>
          <li>✅ Ongoing family mentorship and support</li>
        </ul>
        <a href="Terms.aspx" class="btn btn-warning mt-3">Learn More</a>
      </div>
    </div>
  </div>
</section>
<!-- About Section -->
<section id="about" class="section-padding">
  <div class="container">
    <div class="row text-center mb-5">
      <div class="col-md-12">
        <h2>About Us</h2>
        <p class="lead">Meet our team of dedicated foster parents and learn about our mission.</p>
      </div>
    </div>
    <div class="row align-items-center">
      <div class="col-lg-6 mb-4 text-center">
        <img src="imgs/WhatsApp Image 2025-05-22 at 10.46.42_c5ba6d4c.jpg" alt="Foster parents with child" class="img-fluid rounded shadow" style="max-height: 400px;">
      </div>
      <div class="col-lg-6">
        <h3 class="mb-3">Our Story</h3>
        <p>We are a team of experienced foster parents who have dedicated our lives to providing a safe and nurturing environment for children in need.</p>
        <ul style="list-style: none; padding-left: 0;">
          <li><i class="bi bi-heart-fill text-danger me-2"></i> Providing love and care to children in need</li>
          <li><i class="bi bi-house-fill text-primary me-2"></i> Creating a safe and stable home environment</li>
          <li><i class="bi bi-person-fill text-success me-2"></i> Supporting children through every step of their journey</li>
        </ul>
        <a href="About.aspx" class="btn btn-warning mt-3">Learn More</a>
      </div>
    </div>
    <div class="row mt-5">
      <div class="col-lg-4 col-md-6 mb-4 text-center">
        <div class="card shadow">
          <div class="card-body">
            <i class="bi bi-people-fill text-primary" style="font-size: 40px;"></i>
            <h5 class="card-title mt-3">Meet Our Team</h5>
            <p class="card-text">Learn more about our team of dedicated foster parents.</p>
            <a href="Terms.aspx" class="btn btn-primary">Learn More</a>
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
      <div class="col-lg-4 col-md-6 mb-4 text-center">
        <div class="card shadow">
          <div class="card-body">
            <i class="bi bi-heart-fill text-danger" style="font-size: 40px;"></i>
            <h5 class="card-title mt-3">Support Our Cause</h5>
            <p class="card-text">Learn how you can support our mission.</p>
            <a href="robot.aspx" class="btn btn-danger">see Now</a>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>



</asp:Content>
