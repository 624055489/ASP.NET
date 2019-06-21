using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Javascript
{
    public partial class Mytest : System.Web.UI.Page
    {
        static string str = "Data Source=DESKTOP-V9RNBSF;Initial Catalog=Newweb;Persist Security Info=True;User ID=sa;Password=123456";
        SqlConnection con = new SqlConnection(str);
        protected void Page_Load(object sender, EventArgs e)
        {
            /*-------------------导航条加载----------------------*/
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT  *  from title ", con);
            SqlDataReader reader = cmd.ExecuteReader();
            DataList1.DataSource = reader;
            DataList1.DataKeyField = "URL";
            DataList1.DataBind();

            reader.Close();

            /*-------------------NBA文章内容加载----------------------*/
            cmd = new SqlCommand("SELECT  *  from text where titleID=1 ", con);
             reader = cmd.ExecuteReader();
            DataList2.DataSource = reader;
            DataList2.DataKeyField = "ID";
            DataList2.DataBind();

            reader.Close();

            /*-------------------CBA文章内容加载----------------------*/
            cmd = new SqlCommand("SELECT  *  from text where titleID=2 ", con);
            reader = cmd.ExecuteReader();
            DataList3.DataSource = reader;
            DataList3.DataKeyField = "ID";
            DataList3.DataBind();

            reader.Close();
            con.Close();
            
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            String URL = DataList1.DataKeys[e.Item.ItemIndex].ToString();
            Response.Write("<script language=javascript>top.location.replace('"+URL+"','_blank')</script>");
        }
        
        protected void DataList2_ItemCommand(object source, DataListCommandEventArgs e)
            {
            int id = Convert.ToInt32(DataList2.DataKeys[e.Item.ItemIndex].ToString());
             Response.Write("<script language=javascript>top.location.replace('text.aspx?id=" + id + "','','_blank')</script>");
            }

        protected void DataList3_ItemCommand(object source, DataListCommandEventArgs e)
        {
            int id = Convert.ToInt32(DataList3.DataKeys[e.Item.ItemIndex].ToString());
            Response.Write("<script language=javascript>top.location.replace('text.aspx?id=" + id + "','','_blank')</script>");
        }
    }

       
}
