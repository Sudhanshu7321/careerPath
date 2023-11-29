<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    Admin
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <!-- Start inner Page hero-->
    <section class="d-flex align-items-center page-hero  inner-page-hero " id="page-hero">
      <div class="overlay-photo-image-bg parallax" data-bg-img="assets/images/hero/inner-page-hero.jpg" data-bg-opacity="1"></div>
      <div class="overlay-color" data-bg-opacity=".75"></div>
      <div class="container">
        <div class="hero-text-area centerd">
          <h1 class="hero-title  wow fadeInUp" data-wow-delay=".2s">Admin Panel</h1>
               </div>
      </div>
    </section>
    <!-- End inner Page hero-->
    <div class="container mt-1 pb-5 " > 
           <div class="row">
            <div class="col-md-4"></div>
                        <div class="col-md-4">
                            <div class="card p-4" style="margin-top:120px;margin-bottom:100px;">
                                <h3>
                                    <asp:Label ID="Label1" runat="server" Text="Upload Courses"></asp:Label></h3>
                                <br />
                                 <asp:TextBox id="email" placeholder="Title" CssClass="form-control" runat="server" required></asp:TextBox>
                                <br />
                                <asp:TextBox id="password"  placeholder="Short Description"  CssClass="form-control"  runat="server" required></asp:TextBox>
                                <br />
                               <textarea id="TextArea1" placeholder="Long description" class="form-control" cols ="20" rows="2" required></textarea>
                                  <br />
                                <asp:Button id="login" runat="server" CssClass="btn btn-success" Text="Upload"  />
                                <br />   
        <br />
                                <p>
                                    View User List : <a class="text-primary" href="./userList.aspx">Click Here.</a>
                                </p>
                            </div>
                        </div>
            <div class="col-md-4"></div>

        </div>
           
    </div>
</asp:Content>

