<%@ Page Language="C#" MasterPageFile="~/User/Home.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="FoodDelivery.User.About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- about section -->

  <section class="about_section layout_padding">
    <div class="container  ">

      <div class="row">
        <div class="col-md-6 ">
          <div class="img-box">
            <img src="../Templates/images/main.jpg" alt="">
          </div>
        </div>
        <div class="col-md-6">
          <div class="detail-box">
            <div class="heading_container">
              <h2>
                We Are The Little Eatery
              </h2>
            </div>
            <p>
              Constantly supplying our customers in discovering new tastes and experiences across locations. We are leaving no stone unturned when it comes to making food more accessible and improving on quality.
            </p>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- end about section -->



</asp:Content>
