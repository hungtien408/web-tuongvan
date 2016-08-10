<%@ Page Title="" Language="C#" MasterPageFile="~/en/site-sub.master" AutoEventWireup="true"
    CodeFile="thuong-mai.aspx.cs" Inherits="thuong_mai" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphSite" runat="Server">
    <span>
        <asp:Label ID="lblTitle" runat="server" Text=""></asp:Label></span>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="art-postcontent row">
        <asp:ListView ID="lstCommerceCategory" runat="server" DataSourceID="odsCommerceCategory"
            EnableModelValidation="True">
            <ItemTemplate>
                <div class="col-md-4">
                    <div class="items">
                        <h4>
                            <a href='<%# progressTitle(Eval("ProductCategoryNameEn")) + "-pci-" + Eval("ProductCategoryID") + ".aspx" %>'>
                                <%# Eval("ProductCategoryNameEn") %></a></h4>
                        <a href='<%# progressTitle(Eval("ProductCategoryNameEn")) + "-pci-" + Eval("ProductCategoryID") + ".aspx" %>'>
                            <img id="Img1" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/productcategory/" + Eval("ImageName") : "~/assets/images/sp1.png" %>'
                                runat="server" /></a>
                    </div>
                </div>
            </ItemTemplate>
            <LayoutTemplate>
                <span runat="server" id="itemPlaceholder" />
            </LayoutTemplate>
        </asp:ListView>
        <asp:ObjectDataSource ID="odsCommerceCategory" runat="server" SelectMethod="ProductCategorySelectAll"
            TypeName="TLLib.ProductCategory">
            <SelectParameters>
                <asp:Parameter DefaultValue="1" Name="parentID" Type="Int32" />
                <asp:Parameter DefaultValue="1" Name="increaseLevelCount" Type="Int32" />
                <asp:Parameter Name="IsShowOnMenu" Type="String" />
                <asp:Parameter Name="IsShowOnHomePage" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
    </div>
</asp:Content>
