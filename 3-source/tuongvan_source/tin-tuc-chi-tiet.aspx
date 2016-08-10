<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true"
    CodeFile="tin-tuc-chi-tiet.aspx.cs" Inherits="gioi_thieu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="site" class="corner">
        <div class="container">
            <a id="A1" href="~/" runat="server"><span class="fa fa-home"></span></a>/<span><asp:Label
                ID="lblTitle" runat="server" Text=""></asp:Label></span>
        </div>
    </div>
    <asp:ListView ID="lstNewDetails" runat="server" DataSourceID="odsNewDetails" EnableModelValidation="True">
        <ItemTemplate>
            <div class="wrapper-text about-us">
                <div class="container">
                    <div class="row">
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
    <asp:ObjectDataSource ID="odsNewDetails" runat="server" SelectMethod="ArticleSelectOne"
        TypeName="TLLib.Article">
        <SelectParameters>
            <asp:QueryStringParameter Name="ArticleID" QueryStringField="tt" 
                Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
</asp:Content>
