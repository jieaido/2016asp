<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="textboxautopostback.aspx.cs" Inherits="WebApplication1.captain2.textboxautopostback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="Label" ></asp:Label>
        <asp:TextBox ID="textserach" runat="server" AutoPostBack="True" OnTextChanged="textserach_OnTextChanged"></asp:TextBox>
        <hr />
        <asp:Label ID="lblserach" runat="server" Text="Label"></asp:Label>
    </div>
    </form>
</body>
</html>
