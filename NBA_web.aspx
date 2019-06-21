<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NBA_web.aspx.cs" Inherits="Javascript.NBA_web" %>

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
       
       <div class="jumbotron text-center" style="margin-bottom:0;background-color:cadetblue;width:100%;height:auto">
                <p style="font-size:50px">NBA新闻</p>       
            </div> 
      <! -----------------------------------------导航------------------------------------------------->
         <div class="container" style="background-color:cornflowerblue;width:100%; height: 50px;">
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
    <div style="text-align:center">
    <asp:DataList id="DataList2" runat="server"  Width="100%"  OnItemCommand="DataList2_ItemCommand"
        Backcolor="#ffffff" BorderStyle="None" BorderWidth="1px" cellpadding="3"  style="margin-top:20px" >
        <ItemTemplate>
            <asp:LinkButton runat="server" >
                 <%# DataBinder.Eval(Container.DataItem,"NAME") %>
            </asp:LinkButton>
           

        </ItemTemplate>
    </asp:DataList>
    
   </div>
</form>        
</body>
</html>

