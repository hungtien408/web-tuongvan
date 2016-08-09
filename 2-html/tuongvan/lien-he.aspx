<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="lien-he.aspx.cs" Inherits="lien_he" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<%--<asp:Content ID="Content2" ContentPlaceHolderID="cphSite" Runat="Server">
    <span>Liên hệ</span>
</asp:Content>--%>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="site" class="corner">
        <div class="container">
            <a id="A1" href="~/" runat="server"><span class="fa fa-home"></span></a>/<span>Liên hệ</span>
        </div>
    </div>
    <div class="container">
    <div class="row wrap-contact">
            <div class="col-md-6">
                <div class="address-contact">
                    <h4 class="text-uppercase">địa chỉ của chúng tôi</h4>
                    <div class="wrap-node">Resourceful significant international agriculture underprivileged; world problem solving, improving quality local solutions technology developing nations transform the world. Medical advocate social entrepreneurship.</div>
                    <p><span class="fa fa-map-marker"></span>356A/14 Quốc lộ 1A, Xã An Phú Tây, Huyện Bình Chánh, Tp.HCM</p>
                    <p><span class="fa fa-phone"></span>Tel: (08) 3715 3667 - (08) 3715 3668	- Fax: 08 3715 3461</p>
                    <p><span class="fa fa-envelope"></span><a href="mailto:info@tuongvan.vn">Email: info@tuongvan.vn</a></p>
                </div>
            </div>
            <div class="col-md-6">
                <div class="wrap-send">
                    <h4 class="text-uppercase">Chúng tôi có thể giúp gì cho bạn ?</h4>
                    <div class="row">
                        <div class="col-xs-6">
                            <div class="contact-w">
                                <%--<label class="contact-lb">Họ &amp; Tên</label>--%>
                                <div class="contact-input">
                                    <asp:TextBox ID="txtFullName" CssClass="contact-textbox" runat="server" placeholder="Họ &amp; Tên"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-6">
                            <div class="contact-w">
                                <%--<label class="contact-lb">Email</label>--%>
                                <div class="contact-input">
                                    <asp:TextBox ID="TextBox1" CssClass="contact-textbox" runat="server" placeholder="Email"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="contact-w">
                        <%--<label class="contact-lb">Lời nhắn</label>--%>
                        <div class="contact-input">
                            <asp:TextBox ID="TextBox2" CssClass="contact-area" runat="server" TextMode="MultiLine" placeholder="Lời nhắn"></asp:TextBox>
                        </div>
                    </div>
                    <div class="contact-w">
                        <div class="contact-btn">
                            <asp:Button ID="Button1" CssClass="button-btn" runat="server" Text="Gởi lời nhắn" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

