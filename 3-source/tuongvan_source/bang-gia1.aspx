<%@ Page Title="" Language="C#" MasterPageFile="~/site-sub.master" AutoEventWireup="true"
    CodeFile="bang-gia1.aspx.cs" Inherits="bang_gia" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphSite" runat="Server">
    <asp:Label ID="lblTitle" runat="server" Text=""></asp:Label>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ListView ID="lstPrice" runat="server" DataSourceID="odsPrice" EnableModelValidation="True">
        <ItemTemplate>
            <li><a href='<%# !string.IsNullOrEmpty(Eval("LinkDownload").ToString()) ? "~/res/product/download/" + Eval("LinkDownload") : "" %>' target="_blank" runat="server">
                <img src="assets/images/pdf.png" alt="" />
                <%# Eval("FileName")%> </a></li>
        </ItemTemplate>
        <LayoutTemplate>
            <ul class="bang-gia-ul">
                <li runat="server" id="itemPlaceholder"></li>
            </ul>
        </LayoutTemplate>
    </asp:ListView>
    <asp:ObjectDataSource ID="odsPrice" runat="server" 
        SelectMethod="ProductDownloadSelectAll" TypeName="TLLib.ProductDownload">
        <SelectParameters>
            <asp:QueryStringParameter Name="ProductID" QueryStringField="bg" 
                Type="String" />
            <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
            <asp:Parameter Name="Priority" Type="String" />
            <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
</asp:Content>
