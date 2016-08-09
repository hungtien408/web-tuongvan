<%@ Page Title="" Language="C#" MasterPageFile="~/site-dichvu.master" AutoEventWireup="true" CodeFile="dich-vu.aspx.cs" Inherits="dich_vu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphSite" runat="Server">
    <span>Dịch vụ</span>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="dich-vu-cate row">
        <div class="col-md-4">
            <div class="thumbnail no-border no-padding thumbnail-car-card">
                <div class="media">
                    <img src="assets/images/range-rove.jpg">
                </div>
                <div class="caption text-center">
                    <h4 class="caption-title"><a href="chi-tiet-dich-vu.aspx">Range Rover</a></h4>
                    <div class="caption-text">Giá liên hệ</div>
                    <div class="caption-type">4 chỗ</div>
                    <div class="buttons">
                        <a class="btn btn-theme " href="chi-tiet-dich-vu.aspx">Chi tiết</a>
                        <a class="btn btn-theme " href="bang-gia.aspx">Bảng giá</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="thumbnail no-border no-padding thumbnail-car-card">
                <div class="media">
                    <img src="assets/images/ford.jpg">
                </div>
                <div class="caption text-center">
                    <h4 class="caption-title"><a href="chi-tiet-dich-vu.aspx">Ford D-Car Limousine</a></h4>
                    <div class="caption-text">Giá liên hệ</div>
                    <div class="caption-type">16 chỗ</div>
                    <div class="buttons">
                        <a class="btn btn-theme " href="chi-tiet-dich-vu.aspx">Chi tiết</a>
                        <a class="btn btn-theme " href="bang-gia.aspx">Bảng giá</a>
                    </div>
                </div>
            </div>

        </div>
        <div class="col-md-4">
            <div class="thumbnail no-border no-padding thumbnail-car-card">
                <div class="media">
                    <img src="assets/images/lexus.jpg">
                </div>
                <div class="caption text-center">
                    <h4 class="caption-title"><a href="chi-tiet-dich-vu.aspx">Lexus RX 305</a></h4>
                    <div class="caption-text">Giá liên hệ</div>
                    <div class="caption-type">8 chỗ</div>
                    <div class="buttons">
                        <a class="btn btn-theme " href="chi-tiet-dich-vu.aspx">Chi tiết</a>
                        <a class="btn btn-theme " href="bang-gia.aspx">Bảng giá</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

