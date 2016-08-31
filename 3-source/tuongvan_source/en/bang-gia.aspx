<%@ Page Title="" Language="C#" MasterPageFile="~/en/site-sub.master" AutoEventWireup="true"
    CodeFile="bang-gia.aspx.cs" Inherits="bang_gia" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphSite" runat="Server">
    <asp:Label ID="lblTitle" runat="server" Text=""></asp:Label>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ListView ID="lstPrice" runat="server" DataSourceID="odsPrice" EnableModelValidation="True">
        <ItemTemplate>
            <li><a href='<%# !string.IsNullOrEmpty(Eval("FilePath").ToString()) ? "~/res/download/" + Eval("FilePath") : "" %>' target="_blank" runat="server">
                <img src="../assets/images/pdf.png" alt="" />
                <%# Eval("DownloadNameEn")%> </a></li>
        </ItemTemplate>
        <LayoutTemplate>
            <ul class="bang-gia-ul">
                <li runat="server" id="itemPlaceholder"></li>
            </ul>
        </LayoutTemplate>
    </asp:ListView>
    <asp:ObjectDataSource ID="odsPrice" runat="server" 
        SelectMethod="DownloadSelectAll" TypeName="TLLib.Download">
        <SelectParameters>
            <asp:Parameter Name="Keyword" Type="String" />
            <asp:Parameter Name="DownloadName" Type="String" />
            <asp:Parameter Name="DownloadCategoryID" Type="String" />
            <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
            <asp:Parameter Name="Priority" Type="String" />
            <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
</asp:Content>
