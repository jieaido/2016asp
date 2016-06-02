<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowLinks.aspx.cs" Inherits="WebApplication2.Captain8.ShowLinks" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Repeater ID="Repeater1" 
            DataSourceID="SrcMovies"
            runat="server">
            <ItemTemplate>
                <asp:HyperLink ID="HyperLink1" 
                    Text='<%#Eval("title") %>'
                    NavigateUrl='<%#Eval("id","Details.aspx?id={0}") %>'
                    runat="server">HyperLink</asp:HyperLink>
                <br/>
            </ItemTemplate>
        </asp:Repeater>
        <asp:SqlDataSource ID="SrcMovies" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|MyDatabase.mdf;Integrated Security=True" 
            SelectCommand="select id,title from movies"
            runat="server"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
