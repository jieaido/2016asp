<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="labelform.aspx.cs" Inherits="WebApplication1.captain2.labelform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="firstnamelbl" AssociatedControlID="firstnametxt" runat="server" Text="first name"></asp:Label>
        <br/>
        <asp:TextBox ID="firstnametxt" runat="server"></asp:TextBox>
        <br/><br/>
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <br/>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </div>
    </form>
</body>
</html>
