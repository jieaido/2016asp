<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowListControl.aspx.cs" Inherits="WebApplication2.Captain8.ShowListControl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .floater {
            float: left;
            border: solid 1px black;
            padding: 5px;
            margin: 5px;
            
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="floater">
        <h3>BulletedList</h3>
        <asp:BulletedList ID="BulletedList1" runat="server" DataSourceID="SrcMovies" DataTextField="title" DataValueField="title"></asp:BulletedList>
    </div>

    <asp:SqlDataSource ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|MyDatabase.mdf;Integrated Security=True" 
        ID="SrcMovies" 
                SelectCommand="Select title from movies"
        runat="server"></asp:SqlDataSource>
    </form>
</body>
</html>
