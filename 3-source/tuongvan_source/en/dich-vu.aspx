<%@ Page Title="" Language="C#" MasterPageFile="~/en/site-dichvu.master" AutoEventWireup="true"
    CodeFile="dich-vu.aspx.cs" Inherits="dich_vu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphSite" runat="Server">
    <span>Services</span>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="dich-vu-cate row">
        <asp:ListView ID="lstService" runat="server" DataSourceID="odsService" EnableModelValidation="True">
            <ItemTemplate>
                <div class="col-md-4">
                    <div class="thumbnail no-border no-padding thumbnail-car-card">
                        <div class="media">
                            <img alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/product/" + Eval("ImageName") : "~/assets/images/range-rove.jpg" %>' runat="server" />
                        </div>
                        <div class="caption text-center">
                            <h4 class="caption-title">
                                <a href='<%# progressTitle(Eval("ProductNameEn")) + "-dv-" + Eval("ProductID") + ".aspx" %>'><%# Eval("ProductNameEn") %></a></h4>
                            <div class="caption-text">
                                Price contact</div>
                            <div class="caption-type">
                                <%# Eval("TagEn") %></div>
                            <div class="buttons">
                                <a class="btn btn-theme " href='<%# progressTitle(Eval("ProductNameEn")) + "-dv-" + Eval("ProductID") + ".aspx" %>'>Details</a> <%--<a class="btn btn-theme "
                                    href='<%# progressTitle(Eval("ProductNameEn")) + "-bg-" + Eval("ProductID") + ".aspx" %>'>Price list</a>--%>
                                    <a class="btn btn-theme "
                                    href="bang-gia-xe.aspx">Price list</a>
                            </div>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
            <LayoutTemplate>
                <span runat="server" id="itemPlaceholder" />
            </LayoutTemplate>
        </asp:ListView>
        <asp:ObjectDataSource ID="odsService" runat="server" SelectMethod="ProductSelectAll"
            TypeName="TLLib.Product">
            <SelectParameters>
                <asp:Parameter Name="StartRowIndex" Type="String" />
                <asp:Parameter Name="EndRowIndex" Type="String" />
                <asp:Parameter Name="Keyword" Type="String" />
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="PriceFrom" Type="String" />
                <asp:Parameter Name="PriceTo" Type="String" />
                <asp:Parameter DefaultValue="2" Name="CategoryID" Type="String" />
                <asp:Parameter Name="ManufacturerID" Type="String" />
                <asp:Parameter Name="OriginID" Type="String" />
                <asp:Parameter Name="Tag" Type="String" />
                <asp:Parameter Name="InStock" Type="String" />
                <asp:Parameter Name="IsHot" Type="String" />
                <asp:Parameter Name="IsNew" Type="String" />
                <asp:Parameter Name="IsBestSeller" Type="String" />
                <asp:Parameter Name="IsSaleOff" Type="String" />
                <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                <asp:Parameter Name="FromDate" Type="String" />
                <asp:Parameter Name="ToDate" Type="String" />
                <asp:Parameter Name="Priority" Type="String" />
                <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
    </div>
</asp:Content>
