<%@ Page Title="" Language="C#" MasterPageFile="~/en/site-dichvu.master" AutoEventWireup="true"
    CodeFile="chi-tiet-dich-vu.aspx.cs" Inherits="chi_tiet_dich_vu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphSite" runat="Server">
    <a href="dich-vu.aspx">Services</a>/<span><asp:Label ID="lblTitle" runat="server"
        Text=""></asp:Label></span>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="pro-MainPage">
        <h3>
            <asp:Label ID="lblTitle1" runat="server" Text=""></asp:Label></h3>
        <div class="car-big-card alt">
            <div class="row">
                <div class="col-md-8">
                    <div class="slider-for">
                        <asp:ListView ID="lstPhotoBig" runat="server" DataSourceID="odsPhoto" EnableModelValidation="True">
                            <ItemTemplate>
                                <div>
                                    <img alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/product/album/" + Eval("ImageName") : "~/assets/images/range-rove.jpg" %>' runat="server" /></div>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <span runat="server" id="itemPlaceholder" />
                            </LayoutTemplate>
                        </asp:ListView>
                    </div>
                    <div class="slider-nav">
                        <asp:ListView ID="lstPhotoSmall" runat="server" DataSourceID="odsPhoto" EnableModelValidation="True">
                            <ItemTemplate>
                                <div>
                                    <img id="Img1" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/product/album/" + Eval("ImageName") : "~/assets/images/range-rove.jpg" %>' runat="server" /></div>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <span runat="server" id="itemPlaceholder" />
                            </LayoutTemplate>
                        </asp:ListView>
                    </div>
                </div>
                <div class="col-md-4">
                    <asp:ListView ID="lstServiceDetails" runat="server" DataSourceID="odsServiceDetails"
                        EnableModelValidation="True">
                        <ItemTemplate>
                            <div class="car-details">
                                <div class="list">
                                    <h2 class="title">
                                        <%# Eval("ProductNameEn") %></h2>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("ContentEn") %>'></asp:Label>
                                </div>
                                <div class="price">
                                    <strong>Contact price: <span>Phone number</span></strong> <i class="fa fa-info-circle">
                                    </i>
                                </div>
                            </div>
                        </ItemTemplate>
                        <EmptyDataTemplate>
                            <ul>
                                <li><b>Hãng</b>: Land Rover</li>
                                <li><b>Màu xe</b>: Trắng</li>
                                <li><b>Đời xe</b>: 2015</li>
                                <li><b>Số chỗ</b>: 4</li>
                                <li><b>Kiểu xe</b>: VIP</li>
                            </ul>
                        </EmptyDataTemplate>
                        <LayoutTemplate>
                            <span runat="server" id="itemPlaceholder" />
                        </LayoutTemplate>
                    </asp:ListView>
                    <asp:ObjectDataSource ID="odsServiceDetails" runat="server" SelectMethod="ProductSelectOne"
                        TypeName="TLLib.Product">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="ProductID" QueryStringField="dv" Type="String" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                    <asp:ObjectDataSource ID="odsPhoto" runat="server" 
                        SelectMethod="ProductImageSelectAll" TypeName="TLLib.ProductImage">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="ProductID" QueryStringField="dv" 
                                Type="String" />
                            <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                            <asp:Parameter Name="Priority" Type="String" />
                            <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
