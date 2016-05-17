<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShowIsPostBack.aspx.cs" Inherits="ShowIsPostBack" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
        <asp:Button ID="Button1" OnClick="Button1_OnClick" runat="server" Text="Button" />
        <br/>   
        You selected:<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </div>
    </form>
</body>
</html>
