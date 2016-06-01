<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowFonts.aspx.cs" Inherits="WebApplication2.Captain8.ShowFonts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"></asp:GridView>
    </div>
        <asp:Button ID="Button1" runat="server" Text="Button" />
    </form>
</body>
</html>
