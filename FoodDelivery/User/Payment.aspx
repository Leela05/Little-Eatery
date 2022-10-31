<%@ Page Title="" Language="C#" MasterPageFile="~/User/Home.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="FoodDelivery.User.Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="book_section layout_padding">
    <div class="container">
      <div class="heading_container">
        <h2>
          Payment
        </h2>
      </div>
         <div class="col-50">
            <label for="fname">Accepted Cards</label>
            <div class="icon-container">
              <i class="fa fa-cc-visa" style="color:navy;"></i>
              <i class="fa fa-cc-amex" style="color:blue;"></i>
              <i class="fa fa-cc-mastercard" style="color:red;"></i>
              <i class="fa fa-cc-discover" style="color:orange;"></i>
            </div>
             <br />
      <div class="row">
        <div class="col-md-6">
          <div class="form_container">
            <form action="Invoice.aspx">
              <div>
                <input type="number" class="form-control" placeholder="Enter card Number" />
              </div>
              <div>
                <input type="month" class="form-control" placeholder="Enter Expiry month" />
              </div>
                <div>
                <input type="number" class="form-control" placeholder="Enter CVV" />
              </div>
              <div class="btn_box">
               <asp:Button ID="btnPay" runat="server" Text="Confirm Payment" CssClass="btn btn-success rounded-pill pl-4 pr-4 text-white" 
                   OnClick="btnPay_Click"/>          
              
              </div>

      
            </form>
            </div>
          </div>
        </div>
      </div>
  </section>
</asp:Content>
