<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="RegistrationForm.aspx.cs" Inherits="Furniture2.User.RegistrationForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script>
        /* For disappearing alert message*/
        window.onload = function () {
            var seconds = 5;
            setTimeout(function () {
                document.getElementById("<%=lblMsg.ClientID %>").style.display = "none";
            }, seconds * 10000);
        };
    </script>
    <script>
        function ImagePreview(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#<%=imgUser.ClientID%>').prop('src', e.target.result)
                        .width(200)
                        .height(200)
                };
                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class=" book_section layout_padding">
        <div class="container">
            <div class="heading_container">
                <div class="align-self-end">
                    <asp:Label ID="lblMsg" runat="server" Visible="false"></asp:Label>
                </div>
                <asp:Label ID="lblHeaderMsg" runat="server" Text="<h2>User Registration</h2>"></asp:Label>
            </div>
            <div class="row">  
                <div class="col-md-6">
                    <div class="form-container">

                        <div>
                            <asp:RequiredFieldValidator ID="rvfName" runat="server" ErrorMessage="Name is required" ControlToValidate="txtName"
                                ForeColor="Red" Display="Dynamic" SetFocusOnError="false"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revName" runat="server" ErrorMessage="Name must be in character only"
                                ForeColor="Red" Display="Dynamic" SetFocusOnError="false" ValidationExpression="^[a-zA-Z\s]+$"
                                ControlToValidate="txtName"></asp:RegularExpressionValidator>
                             <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Enter Full Name"
                                ToolTip="Full Name"></asp:TextBox>
                        </div>
                        <br />

                        <div>
                            <asp:RequiredFieldValidator ID="rvfUsername" runat="server" ErrorMessage="Username is required"
                                ControlToValidate="txtUsername" ForeColor="Red" Display="Dynamic" SetFocusOnError="false"></asp:RequiredFieldValidator>
                             <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" placeholder="Enter Username"
                                ToolTip="Username"></asp:TextBox>
                        </div>
                        <br />

                        <div>
                            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="Email is required"
                                ControlToValidate="txtEmail" ForeColor="Red" Display="Dynamic" SetFocusOnError="false"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Enter Email Id"
                                ToolTip="Email" TextMode="Email"></asp:TextBox>
                        </div>
                        <br />

                        <div>
                            <asp:RequiredFieldValidator ID="rfvMobile" runat="server" ErrorMessage="Mobile No. is required"
                                ControlToValidate="txtMobile" ForeColor="Red" Display="Dynamic" SetFocusOnError="false"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revMobile" runat="server" ErrorMessage="Name No. must have 10 digits"
                                ForeColor="Red" Display="Dynamic" SetFocusOnError="false" ValidationExpression="^[0-9]{10}$"
                                ControlToValidate="txtMobile"></asp:RegularExpressionValidator>
                            <asp:TextBox ID="txtMobile" runat="server" CssClass="form-control" placeholder="Enter Mobile Number"
                                ToolTip="Mobile Number" TextMode="Number"></asp:TextBox>
                        </div>

                    </div>
                </div>

                 <div class="col-md-6">
                <div class="form-container">

                    <div>
                        <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ErrorMessage="Name is required"
                            ControlToValidate="txtAddress" ForeColor="Red" Display="Dynamic" SetFocusOnError="false"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" placeholder="Enter Address"
                            ToolTip="Address" TextMode="MultiLine"></asp:TextBox>
                    </div>
                    <br />

                    <div>
                        <asp:RequiredFieldValidator ID="rfvPinCode" runat="server" ErrorMessage="Pin/Zip Code is required"
                            ControlToValidate="txtPinCode" ForeColor="Red" Display="Dynamic" SetFocusOnError="false"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revPinCode" runat="server" ErrorMessage="Pin/Zip Code must be of 6 digits"
                                ForeColor="Red" Display="Dynamic" SetFocusOnError="false" ValidationExpression="^[0-9]{6}$"
                                ControlToValidate="txtPinCode"></asp:RegularExpressionValidator>
                        <asp:TextBox ID="txtPinCode" runat="server" CssClass="form-control" placeholder="Enter Pin/Zip Code"
                            ToolTip="Pin/Zip Code" TextMode="Number"></asp:TextBox>
                    </div>
                    <br />

                    <div>
                        <asp:FileUpload ID="fuUserImage" runat="server" CssClass="form-control" ToolTip="User Image" 
                            onchange="ImagePreview(this);" />
                    </div>
                    <br />

                    <div>
                        <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="Password is required"
                            ControlToValidate="txtPassword" ForeColor="Red" Display="Dynamic" SetFocusOnError="false"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" placeholder="Enter Password"
                            ToolTip="Mobile Number" TextMode="Password"></asp:TextBox>
                    </div>
                    <br />

                </div>
            </div>

                <div class="row pl-4">
                    <div class="btn-box">
                        <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btn btn-success rounded-pill pl-4 pr-4 text-white"
                            OnClick="btnRegister_Click"/>
                        <asp:Label ID="lblAlreadyUser" runat="server" CssClass="pl-3 text-black-100" 
                            Text="Already Registerd? <a href='Login.aspx' class='badge badge-info'>Login here.</a>">
                        </asp:Label>
                    </div>
                </div>

                <div class="row p-5">
                    <div style="align-items:center">
                        <asp:Image ID="imgUser" runat="server" CssClass="img-thumbnail" />
                    </div>
                </div>

            </div>
        </div>
    </section>

</asp:Content>
