<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowTextBox.aspx.cs" Inherits="WebApplication1.captain2.ShowTextBox" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="TextBox1" TextMode="Password" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox2" TextMode="DateTime" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox3" TextMode="Color" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox4" TextMode="MultiLine" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox5" TextMode="Week" runat="server"></asp:TextBox>
    </div>
    </form>
</body>
</html>
