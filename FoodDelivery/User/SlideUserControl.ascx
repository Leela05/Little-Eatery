<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SlideUserControl.ascx.cs" Inherits="FoodDelivery.User.SlideUserControl" %>

<!-- slider section -->

 <section class="slider_section ">
      <div id="customCarousel1" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
          <div class="carousel-item active">
            <div class="container ">
              <div class="row">
                <div class="col-md-7 col-lg-6 ">
                  <div class="detail-box">
                    <h1>
                      Order from top restaurants
                    </h1>
                    
                  </div>
                </div>
              </div>
            </div>
          </div>
          
          <div class="carousel-item">
            <div class="container ">
              <div class="row">
                <div class="col-md-7 col-lg-6 ">
                  <div class="detail-box">
                    <h1>
                      Super Fast Delivery
                    </h1>
                    
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="container">
          <ol class="carousel-indicators">
            <li data-target="#customCarousel1" data-slide-to="0" class="active"></li>
            <li data-target="#customCarousel1" data-slide-to="1"></li>
          </ol>
        </div>
      </div>
       </section>
