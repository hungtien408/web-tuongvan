<%@ Page Title="" Language="C#" MasterPageFile="~/site-sub.master" AutoEventWireup="true"
    CodeFile="bang-gia-xe.aspx.cs" Inherits="bang_gia" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphSite" runat="Server">
    <asp:Label ID="lblTitle" runat="server" Text=""></asp:Label>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ListView ID="lstPriceCategory" runat="server" DataSourceID="odsPriceCategory"
        EnableModelValidation="True">
        <ItemTemplate>
            <div class="banggia-cate">
                <h3>
                    <%# Eval("DownloadCategoryName")%></h3>
                <asp:HiddenField ID="hdnDownloadCategoryID" Value='<%# Eval("DownloadCategoryID") %>'
                    runat="server" />
                <asp:ListView ID="lstPrice" runat="server" DataSourceID="odsPrice" EnableModelValidation="True">
                    <ItemTemplate>
                        <li><a id="A1" href='<%# !string.IsNullOrEmpty(Eval("FilePath").ToString()) ? "~/res/download/" + Eval("FilePath") : "" %>'
                            target="_blank" runat="server">
                            <img src="assets/images/pdf.png" alt="" />
                            <%# Eval("DownloadName")%>
                        </a></li>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <ul class="bang-gia-ul">
                            <li runat="server" id="itemPlaceholder"></li>
                        </ul>
                    </LayoutTemplate>
                </asp:ListView>
                <asp:ObjectDataSource ID="odsPrice" runat="server" SelectMethod="DownloadSelectAll"
                    TypeName="TLLib.Download">
                    <SelectParameters>
                        <asp:Parameter Name="Keyword" Type="String" />
                        <asp:Parameter Name="DownloadName" Type="String" />
                        <asp:ControlParameter ControlID="hdnDownloadCategoryID" Name="DownloadCategoryID"
                            PropertyName="Value" Type="String" />
                        <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                        <asp:Parameter Name="Priority" Type="String" />
                        <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </div>
        </ItemTemplate>
        <LayoutTemplate>
            <span runat="server" id="itemPlaceholder" />
        </LayoutTemplate>
    </asp:ListView>
    <asp:ObjectDataSource ID="odsPriceCategory" runat="server" SelectMethod="DownloadCategorySelectOne"
        TypeName="TLLib.DownloadCategory">
        <SelectParameters>
            <asp:Parameter Name="DownloadCategoryID" Type="String" DefaultValue="6" />
        </SelectParameters>
    </asp:ObjectDataSource>
</asp:Content>
