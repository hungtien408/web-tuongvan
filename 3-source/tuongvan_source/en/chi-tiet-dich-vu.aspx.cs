﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using TLLib;

public partial class chi_tiet_dich_vu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string strTitle, strDescription, strMetaTitle, strMetaDescription;
            if (!string.IsNullOrEmpty(Request.QueryString["dv"]))
            {
                var oProduct = new Product();
                var oProductCategory = new ProductCategory();
                var dv = oProduct.ProductSelectOne(Request.QueryString["dv"]).DefaultView;
                var dv2 = oProductCategory.ProductCategorySelectOne(Request.QueryString["pci"]).DefaultView;

                if (dv != null && dv.Count <= 0) return;
                var row = dv[0];

                strTitle = Server.HtmlDecode(row["ProductNameEn"].ToString());
                strDescription = Server.HtmlDecode(row["DescriptionEn"].ToString());
                strMetaTitle = Server.HtmlDecode(row["MetaTittleEn"].ToString());
                strMetaDescription = Server.HtmlDecode(row["MetaDescriptionEn"].ToString());

                //hdnSanPham.Value = progressTitle(dv[0]["ProductCategoryName"].ToString()) + "-pci-" + dv[0]["ProductCategoryID"].ToString() + ".aspx";
            }
            else
            {
                strTitle = strMetaTitle = "Services";
                strDescription = "";
                strMetaDescription = "";
            }
            Page.Title = !string.IsNullOrEmpty(strMetaTitle) ? strMetaTitle : strTitle;
            var meta = new HtmlMeta() { Name = "description", Content = !string.IsNullOrEmpty(strMetaDescription) ? strMetaDescription : strDescription };
            Header.Controls.Add(meta);

            lblTitle.Text = strTitle;
            lblTitle1.Text = strTitle;
        }
    }
}