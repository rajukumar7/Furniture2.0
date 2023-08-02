<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Furniture2.User.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <!-- about section -->

    <section class="about_section layout_padding">
        <div class="container  ">

            <div class="row">
                <div class="col-md-6 ">
                    <div class="img-box">
                        <img src="../TemplateFiles/images/studyTable.jpg" alt="table-img" />
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="detail-box">
                        <div class="heading_container">
                            <h2>M/S Kumar Furniture Works & Saw Mill
                            </h2>
                        </div>
                        <p>
                            Furniture manufacturers companies specialize in designing, producing, and distributing high-quality furniture for homes,
                            offices, and public spaces. With a focus on quality craftsmanship, these companies employ skilled artisans and designers
                            to create furniture that is both beautiful and functional. They offer a wide range of styles, materials, and finishes to
                            suit every taste and budget, and often prioritize sustainability and environmental responsibility in their production processes.
                            Whether you're looking for custom pieces or ready-to-order furniture, manufacturers can provide expert guidance and support to 
                            help you create a comfortable and inviting living space.
                        </p>
                        <a href="#">Read More
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- end about section -->
</asp:Content>
