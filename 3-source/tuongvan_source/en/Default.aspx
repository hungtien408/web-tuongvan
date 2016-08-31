<%@ Page Title="" Language="C#" MasterPageFile="~/en/site.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="list-introduce ">
        <div class="items yl-bg">
            <h3>
                <a href="gioi-thieu.aspx">tầm nhìn</a></h3>
            <p>
                Tiếp tục là nhà cung ứng sản phẩm ngành nhựa hàng đầu tại Việt Nam</p>
        </div>
        <div class="items gr-bg">
            <h3>
                <a href="gioi-thieu.aspx">sứ mệnh</a></h3>
            <p>
                Đáp ứng và thỏa mãn nhu cầu ngày càng cao của thị trường.</p>
        </div>
        <div class="items or-bg">
            <h3>
                <a href="gioi-thieu.aspx">mục tiêu</a></h3>
            <p>
                Góp phần đem lại sự phát triển cho xã hội, sự phồn vinh của cộng đồng và sự hài
                lòng của khách hàng.</p>
        </div>
    </div>
    <div class="clr">
    </div>
    <div class="intro-cate check-in-view">
        <div class="items it-tm">
            <a href="thuong-mai.aspx">
                <div class="items-img" data-img="../assets/images/tm.png">
                    <img class="slide-tm-1" src="../assets/images/tm-1.png" alt="" />
                </div>
            </a>
            <div class="cate-info">
                <h3>
                    <a href="thuong-mai.aspx">Commerce</a><i class="fa fa-arrow-right" aria-hidden="true"></i></h3>
                <p>
                    Kinh doanh các sản phẩm ống nhựa</p>
            </div>
        </div>
        <div class="items it-dv">
            <a href="dich-vu.aspx">
                <div class="items-img" data-img="../assets/images/dv.png">
                    <img class="slide-dv-1" src="../assets/images/dv-3.png" alt="" />
                    <img class="slide-dv-2" src="../assets/images/dv-2.png" alt="" />
                </div>
            </a>
            <div class="cate-info">
                <h3>
                    <a href="dich-vu.aspx">services</a><i class="fa fa-arrow-right" aria-hidden="true"></i></h3>
                <p>
                    Vận tải – Cho thuê xe du lịch</p>
            </div>
        </div>
    </div>
    <div class="clr">
    </div>
    <div class="home-content">
        <div class="container">
            <div class="row">
                <div class="home-content-left">
                    <asp:ListView ID="lstAbout" runat="server" DataSourceID="odsAbout" EnableModelValidation="True">
                        <ItemTemplate>
                            <h3 class="title-a">
                                <%# Eval("ArticleTitleEn") %></h3>
                            <p>
                                <%# Eval("DescriptionEn") %></p>
                            <div class="read-more">
                                <a href="gioi-thieu.aspx">See more</a></div>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <span runat="server" id="itemPlaceholder" />
                        </LayoutTemplate>
                    </asp:ListView>
                    <asp:ObjectDataSource ID="odsAbout" runat="server" SelectMethod="ArticleSelectAll"
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
                </div>
                <div class="home-content-right">
                    <div class="tygia">
                        <ul>
                            <li>exchange rate</li>
                            <li>exchange rate Gold</li>
                        </ul>
                        <div class="table-tygia">
                            <asp:GridView ID="gridViewFromObject" runat="server" CssClass="css-exchangerate"
                                AutoGenerateColumns="false" EnableModelValidation="True" CellPadding="4" ForeColor="#333333"
                                GridLines="None">
                                <AlternatingRowStyle BackColor="White" />
                                <EditRowStyle BackColor="#2461BF" />
                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <%--<HeaderStyle ForeColor="#666" Font-Size="11px" Font-Names="Arial" />--%>
                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#EDF7EE" />
                                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                <Columns>
                                    <asp:TemplateField HeaderText="Loại">
                                        <ItemTemplate>
                                            <%# Eval("CurrencyCode")%>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <Columns>
                                    <asp:TemplateField HeaderText="Mua vào">
                                        <ItemTemplate>
                                            <%# Eval("Buy")%>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <Columns>
                                    <asp:TemplateField HeaderText="Bán ra">
                                        <ItemTemplate>
                                            <%# Eval("Sell")%>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                    <div class="tke">
                        <h3>
                            statistical access</h3>
                        <ul class="list-hit">
                            <li>
                                <div class="ngay">
                                    Today</div>
                                <div class="tk">
                                    <%=Application["HomNay"].ToString()%></div>
                            </li>
                            <li>
                                <div class="ngay">
                                    In month</div>
                                <div class="tk">
                                    <%=Application["ThangNay"].ToString()%></div>
                            </li>
                            <li>
                                <div class="ngay">
                                    Last month</div>
                                <div class="tk">
                                    <%=Application["ThangTruoc"].ToString()%></div>
                            </li>
                            <li><span id="visit" runat="server"></span></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="clr">
        </div>
        <div class="water-pipe">
            <div class="container">
                <div class="row">
                    <div class="items">
                        <a href="javascript:void(0);">
                            <img src="../assets/images/onc1.png" alt="ống nước bình minh" />
                        </a>
                    </div>
                    <div class="items">
                        <a href="javascript:void(0);">
                            <img src="../assets/images/onc2.png" alt="ống nước bình minh" />
                        </a>
                    </div>
                    <div class="items">
                        <a href="javascript:void(0);">
                            <img src="../assets/images/onc3.png" alt="ống nước bình minh" />
                        </a>
                    </div>
                    <div class="items">
                        <a href="javascript:void(0);">
                            <img src="../assets/images/onc4.png" alt="ống nước bình minh" />
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="clr">
    </div>
    <div class="container">
        <div class="partner slider row">
            <asp:ListView ID="lstParner" runat="server" DataSourceID="odsParner" EnableModelValidation="True">
                <ItemTemplate>
                    <div>
                        <img alt='<%# Eval("PartnerImage") %>' src='<%# !string.IsNullOrEmpty(Eval("PartnerImage").ToString()) ? "~/res/partner/" + Eval("PartnerImage") : "~/assets/images/dt1.png" %>'
                            runat="server" /></div>
                </ItemTemplate>
                <LayoutTemplate>
                    <span runat="server" id="itemPlaceholder" />
                </LayoutTemplate>
            </asp:ListView>
            <asp:ObjectDataSource ID="odsParner" runat="server" SelectMethod="PartnerSelectAll"
                TypeName="TLLib.Partner">
                <SelectParameters>
                    <asp:Parameter Name="Keyword" Type="String" />
                    <asp:Parameter Name="PartnerName" Type="String" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="LinkWebsite" Type="String" />
                    <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                    <asp:Parameter Name="Priority" Type="String" />
                    <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
        </div>
    </div>
</asp:Content>
