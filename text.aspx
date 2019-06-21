<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="text.aspx.cs" Inherits="Javascript.Newtext.NBA_text.NBA_text_1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="StyleSheet2.css" />
    <link rel="stylesheet" href="bootstrap-3.3.7-dist/bootstrap-3.3.7-dist/css/bootstrap.min.css" />
     <script src="jquery.js"></script>
    <script src="bootstrap-3.3.7-dist/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
     <! ---------------------------------------顶部----------------------------------------------------->
       
       <div class="jumbotron text-center" style="margin-bottom:0;background-color:cadetblue">
                <p style="font-size:50px">体育新闻</p>       
            </div> 
         <! -----------------------------------------导航------------------------------------------------->
       <div class="container" style="background-color:cornflowerblue;width:100%;height: 50px;">
       <div class="row">
            <div class="col-md-10 col-xs-10" >
                <asp:DataList id="DataList1" runat="server" OnItemCommand="DataList1_ItemCommand" Width="100%"  BorderStyle="None" BorderWidth="1px" 
                   RepeatDirection="Horizontal"  BorderColor="#CCCCCC" CellPadding="4" ForeColor="Black" GridLines="Horizontal" font-size="23px" >
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <ItemTemplate>
                        <asp:LinkButton runat="server" style="display:block;color:white" >
                            <%# DataBinder.Eval(Container.DataItem,"NAME") %>
                        </asp:LinkButton>
                    </ItemTemplate>
            
                    <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            
                    </asp:DataList>
        </div>
            <div class="col-md-2 col-xs-2" style="text-align:right;" >
           <a href="#" style="color:white;">登录</a> 
                <label style="color:white">|</label>
           <a href="#"style="color:white">注册</a>     
             </div>
           </div>
           </div>
       <! -----------------------------------------栏目------------------------------------------------->
        <div style="margin:10px 50px" class="text-center">
        <asp:DataList ID="DataList2" runat="server" >
            <ItemTemplate>
                <h1><%# Eval("NAME") %></h1>
                <label>时间：<%# Eval("TIME") %></label>
                <br />
                
                <textbox style="text-align:left;height:100%;width:100%"><%# Eval("TXT") %></textbox>
            </ItemTemplate>
        </asp:DataList>
   </div>

    </form>      
</body>
</html>
