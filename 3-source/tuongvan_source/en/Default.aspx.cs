using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

public class Exrate
{
    private string _CurrencyCode = string.Empty;

    public string CurrencyCode
    {
        get { return _CurrencyCode; }
        set { _CurrencyCode = value; }
    }
    //private string _CurrencyName = string.Empty;

    //public string CurrencyName
    //{
    //    get { return _CurrencyName; }
    //    set { _CurrencyName = value; }
    //}
    private float _Buy = 0;

    public float Buy
    {
        get { return _Buy; }
        set { _Buy = value; }
    }
    private float _Transfer = 0;

    public float Transfer
    {
        get { return _Transfer; }
        set { _Transfer = value; }
    }
    private float _Sell = 0;

    public float Sell
    {
        get { return _Sell; }
        set { _Sell = value; }
    }
}

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadXml();
        }

        string allvisitors = Application["TatCa"].ToString();
        string html = "";
        for (int i = 0; i < allvisitors.Length; i++)
        {
            html += "<span class='num'>" + allvisitors.Substring(i, 1) + "</span>";
        }
        visit.InnerHtml = html;

        //string onlinevisitors = Application["visitors_online"].ToString();
        //string htmlOnline = "";
        //for (int i = 0; i < onlinevisitors.Length; i++)
        //{
        //    htmlOnline += "<span class='num'>" + onlinevisitors.Substring(i, 1) + "</span>";
        //}
        //online.InnerHtml = htmlOnline;
    }

    private void LoadXml()
    {
        try
        {
            XmlDocument xmlDocument = new XmlDocument();
            String xmlSourceUrl = "http://www.vietcombank.com.vn/ExchangeRates/ExrateXML.aspx";
            xmlDocument.Load(xmlSourceUrl);

            //từ đây hoàn toàn có thể thao tác dữ liệu xml bằng đối tượng xmlDocument
            //lấy ví zụ chuyển từ XmlDocument thành tập các đối tượng Generic dạng List<Exrate>
            //XmlNodeList nodeList = xmlDocument.GetElementsByTagName("Exrate");
            XmlNodeList nodeList = xmlDocument.SelectNodes("ExrateList/Exrate[@CurrencyCode='USD' or @CurrencyCode='AUD' or @CurrencyCode='GBP' or @CurrencyCode='EUR' or @CurrencyCode='JPY']");

            List<Exrate> listExrate = null;

            if (nodeList != null && nodeList.Count > 0)
            {
                listExrate = new List<Exrate>();
                foreach (XmlNode xmlNode in nodeList)
                {
                    Exrate entityExrate = new Exrate();
                    entityExrate.CurrencyCode = xmlNode.Attributes["CurrencyCode"].InnerText;
                    //entityExrate.CurrencyName = xmlNode.Attributes["CurrencyName"].InnerText;
                    //entityExrate.Buy = float.Parse(xmlNode.Attributes["Buy"].InnerText);
                    //entityExrate.Transfer = float.Parse(xmlNode.Attributes["Transfer"].InnerText);
                    entityExrate.Sell = float.Parse(xmlNode.Attributes["Sell"].InnerText);
                    listExrate.Add(entityExrate);
                }
                //thực hiện việc bind dữ liệu vào GridView
                gridViewFromObject.DataSource = listExrate;
                gridViewFromObject.DataBind();
            }
            //DataSet ds = new DataSet();
            //ds.ReadXml(new XmlNodeReader(xmlDocument));
            //hoặc có thể chuyển XmlDocument thành DataSet để hiển thị dữ liệu trên các đối tượng trình bày dữ liệu một cách dễ dàng hơn
            //ở đây lấy ví zụ là GridView
            //gridViewTyGia.DataSource = ds;
            //gridViewTyGia.DataBind();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}