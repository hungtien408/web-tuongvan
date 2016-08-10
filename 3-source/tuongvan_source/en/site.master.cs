using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class site : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Page.Header.DataBind();
            string page = Request.Url.PathAndQuery.ToLower();

            string startScript = "<script type='text/javascript'>";
            string endScript = "')</script>";
            string activePage = "";

            if (page.Contains("san-pham.aspx?ci=") || page.Contains("chi-tiet-san-pham.aspx?pi="))
                activePage = "san-pham.aspx";
            else if (page.Contains("-pci-"))
                activePage = "thuong-mai.aspx";
            else if (page.Contains("-dv-"))
                activePage = "dich-vu.aspx";
            else if (!page.EndsWith("default.aspx"))
                activePage = Path.GetFileName(page);

            if (!string.IsNullOrEmpty(activePage))
                runScript.InnerHtml = startScript + "changeActiveMenu('" + activePage + endScript;

            runScript.InnerHtml += startScript + "changeSubActiveMenu('" + Path.GetFileName(page) + endScript;
        }
    }

    protected void btnVN_Click(object sender, ImageClickEventArgs e)
    {
        string path = Path.GetFileName(Request.Url.AbsolutePath);
        if (path.ToLower() == "default.aspx")
        {
            path = "";
        }
        Response.Redirect("~/" + path);
    }
    protected void btnEN_Click(object sender, ImageClickEventArgs e)
    {
        string path = Path.GetFileName(Request.Url.AbsolutePath);
        if (path.ToLower() == "default.aspx")
        {
            path = "";
        }
        Response.Redirect("~/en/" + path);
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        Response.Redirect("tim-kiem.aspx?kw=" + txtSearch.Text.Trim());
    }
    //protected void btnSearch2_Click(object sender, EventArgs e)
    //{
    //    Response.Redirect("tim-kiem.aspx?kw=" + txtSearch2.Text.Trim());
    //}
}
