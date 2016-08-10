<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true"
    CodeFile="gioi-thieu.aspx.cs" Inherits="gioi_thieu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Giới Thiệu</title>
    <meta name="description" content="Giới Thiệu" />
</asp:Content>
<%--<asp:Content ID="Content3" ContentPlaceHolderID="cphSite" Runat="Server">
    <span>Giới thiệu</span>
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="site" class="corner">
        <div class="container">
            <a id="A1" href="~/" runat="server"><span class="fa fa-home"></span></a>/<span>Giới
                thiệu</span>
        </div>
    </div>
    <asp:ListView ID="lstAboutUs" runat="server" DataSourceID="odsAboutUs" EnableModelValidation="True">
        <ItemTemplate>
            <div class="wrapper-text about-us">
                <div class="container">
                    <div class="row">
                        <%--<div class="about-img">
            <img class="img-responsive" src="assets/images/about-img.jpg" alt="" /></div>--%>
                        <h4 class="text-uppercase title tit-640">
                            <%# Eval("ArticleTitle") %></h4>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Content") %>'></asp:Label>
                    </div>
                </div>
            </div>
        </ItemTemplate>
        <LayoutTemplate>
            <span runat="server" id="itemPlaceholder" />
        </LayoutTemplate>
    </asp:ListView>
    <asp:ObjectDataSource ID="odsAboutUs" runat="server" SelectMethod="ArticleSelectAll"
        TypeName="TLLib.Article">
        <SelectParameters>
            <asp:Parameter DefaultValue="1" Name="StartRowIndex" Type="String" />
            <asp:Parameter DefaultValue="1" Name="EndRowIndex" Type="String" />
            <asp:Parameter Name="Keyword" Type="String" />
            <asp:Parameter Name="ArticleTitle" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter DefaultValue="1" Name="ArticleCategoryID" Type="String" />
            <asp:Parameter Name="Tag" Type="String" />
            <asp:Parameter Name="IsShowOnHomePage" Type="String" />
            <asp:Parameter Name="IsHot" Type="String" />
            <asp:Parameter Name="IsNew" Type="String" />
            <asp:Parameter Name="FromDate" Type="String" />
            <asp:Parameter Name="ToDate" Type="String" />
            <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
            <asp:Parameter Name="Priority" Type="String" />
            <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
</asp:Content>
