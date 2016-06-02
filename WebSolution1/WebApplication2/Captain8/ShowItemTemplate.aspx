<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowItemTemplate.aspx.cs" Inherits="WebApplication2.Captain8.ShowItemTemplate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Repeater ID="Repeater1" DataSourceID="SrcMovies" runat="server" OnItemCommand="Repeater1_ItemCommand">
            <ItemTemplate>
                <%#Eval("Title") %>
              
               <br/>
                 <i>Director by</i> <%#Eval("Director") %>
                <hr/>
            </ItemTemplate>
        </asp:Repeater>
        
        
        
        

        <asp:SqlDataSource ID="SrcMovies"  ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|MyDatabase.mdf;Integrated Security=True" 
            SelectCommand="select title,director from movies"
            runat="server"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
