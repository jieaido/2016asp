<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ButtonSerach.aspx.cs" Inherits="WebApplication1.captain2.ButtonSerach" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="serach:"></asp:Label>
        <asp:TextBox ID="txtserach" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Go!" PostBackUrl="ButtonSerachResults.aspx" />
    </div>
    </form>
</body>
</html>
