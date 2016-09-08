﻿<%@ Page Title="" Language="C#" MasterPageFile="~/en/site-sub.master" AutoEventWireup="true"
    CodeFile="tin-tuc.aspx.cs" Inherits="tin_tuc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphSite" runat="Server">
    <span>News</span>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="wrap-news">
        <div class="blog">
            <asp:ListView ID="lstNew" runat="server" DataSourceID="odsNew" EnableModelValidation="True">
                <ItemTemplate>
                    <div class="items">
                        <div class="items-img">
                            <a href='<%# progressTitle(Eval("ArticleTitleEn")) + "-tt-" + Eval("ArticleID") + ".aspx" %>'>
                                <img id="Img1" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/article/" + Eval("ImageName") : "~/assets/images/img-1.jpg" %>' runat="server" /></a>
                        </div>
                        <div class="items-content">
                            <a href='<%# progressTitle(Eval("ArticleTitleEn")) + "-tt-" + Eval("ArticleID") + ".aspx" %>'>
                                <h3>
                                    <%# Eval("ArticleTitleEn") %></h3>
                            </a>
                            <p>
                                <%# TLLib.Common.SplitSummary(Eval("DescriptionEn").ToString(), 120)%></p>
                            <span><a href='<%# progressTitle(Eval("ArticleTitleEn")) + "-tt-" + Eval("ArticleID") + ".aspx" %>'>Read more..</a></span>
                        </div>
                    </div>
                </ItemTemplate>
                <LayoutTemplate>
                    <span runat="server" id="itemPlaceholder" />
                </LayoutTemplate>
            </asp:ListView>
            <asp:ObjectDataSource ID="odsNew" runat="server" SelectMethod="ArticleSelectAll"
                TypeName="TLLib.Article">
                <SelectParameters>
                    <asp:Parameter Name="StartRowIndex" Type="String" />
                    <asp:Parameter Name="EndRowIndex" Type="String" />
                    <asp:Parameter Name="Keyword" Type="String" />
                    <asp:Parameter Name="ArticleTitle" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter DefaultValue="2" Name="ArticleCategoryID" Type="String" />
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
            <div class="pager">
                <%--<a href="#" class="first fa fa-backward"></a><a href="#" class="prev fa fa-caret-left">
                </a><a href="#" class="current">1</a> <a href="#">2</a> <a href="#">3</a> <a href="#"
                    class="next fa fa-caret-right"></a><a href="#" class="last fa fa-forward"></a>--%>
                <asp:DataPager ID="DataPager1" runat="server" PageSize="6" PagedControlID="lstNew">
            <Fields>
                <asp:NextPreviousPagerField ButtonType="Link" ShowFirstPageButton="true" ShowNextPageButton="false"
                    ShowPreviousPageButton="false" ButtonCssClass="first fa fa-backward" RenderDisabledButtonsAsLabels="true"
                    FirstPageText="" />
                <asp:NextPreviousPagerField ButtonType="Link" ShowFirstPageButton="false" ShowNextPageButton="false"
                    ShowPreviousPageButton="true" ButtonCssClass="prev fa fa-caret-left" RenderDisabledButtonsAsLabels="true"
                    PreviousPageText="" />
                <asp:NumericPagerField ButtonCount="5" NumericButtonCssClass="numer-paging" CurrentPageLabelCssClass="current" />
                <asp:NextPreviousPagerField ButtonType="Link" ShowLastPageButton="false" ButtonCssClass="next fa fa-caret-right"
                    ShowNextPageButton="true" ShowPreviousPageButton="false" RenderDisabledButtonsAsLabels="true"
                    NextPageText="" />
                <asp:NextPreviousPagerField ButtonType="Link" ShowLastPageButton="True" ButtonCssClass="last fa fa-forward"
                    ShowNextPageButton="false" ShowPreviousPageButton="false" RenderDisabledButtonsAsLabels="true"
                    LastPageText="" />
            </Fields>
        </asp:DataPager>
            </div>
        </div>
    </div>
</asp:Content>
