<%@ Page Title="" Language="C#" MasterPageFile="~/en/site-sub.master" AutoEventWireup="true"
    CodeFile="chi-tiet-thuong-mai.aspx.cs" Inherits="chi_tiet_thuong_mai" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphSite" runat="Server">
    <asp:ListView ID="lstBreadcrum" runat="server" DataSourceID="odsBreadcrum" EnableModelValidation="True">
        <ItemTemplate>
            <%# "<a href='" + progressTitle(Eval("ProductCategoryNameEn")) + "-pci-" + Eval("ProductCategoryID") + ".aspx" + "'>" + Eval("ProductCategoryNameEn") + "</a> / "%>
        </ItemTemplate>
        <LayoutTemplate>
            <a href="thuong-mai.aspx">Commerce</a>/ <span runat="server" id="itemPlaceholder" />
        </LayoutTemplate>
    </asp:ListView>
    <asp:ObjectDataSource ID="odsBreadcrum" runat="server" SelectMethod="ProductCategoryHierarchyToTopSelectAll"
        TypeName="TLLib.ProductCategory">
        <SelectParameters>
            <asp:QueryStringParameter Name="CurrentProductCategoryID" QueryStringField="pci"
                Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:Label ID="lblTitle" runat="server"></asp:Label>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ListView ID="lstCommerceDetails" runat="server" DataSourceID="odsCommerceDetails"
        EnableModelValidation="True">
        <ItemTemplate>
            <div class="pro-MainPage">
                <h3>
                    <%# Eval("ProductNameEn") %></h3>
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("ContentEn") %>'></asp:Label>
            </div>
        </ItemTemplate>
        <LayoutTemplate>
            <span runat="server" id="itemPlaceholder" />
        </LayoutTemplate>
    </asp:ListView>
    <asp:ObjectDataSource ID="odsCommerceDetails" runat="server" SelectMethod="ProductSelectOne"
        TypeName="TLLib.Product">
        <SelectParameters>
            <asp:QueryStringParameter Name="ProductID" QueryStringField="pi" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
</asp:Content>
