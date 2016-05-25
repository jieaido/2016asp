﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowCustomValidator.aspx.cs" Inherits="WebApplication2.Captain3.ShowCustomValidator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br/>
        <asp:TextBox ID="txtComments"  Columns="30" Rows="5" TextMode="MultiLine" runat="server"></asp:TextBox>
        <asp:CustomValidator ID="valCommnets" ControlToValidate="txtComments" Text="必须少于10个字符" OnServerValidate="valCommnets_OnServerValidate" runat="server" ErrorMessage="CustomValidator"></asp:CustomValidator>
        <br/>
        <asp:Button ID="Button1" runat="server" Text="Button" />

    </div>
    </form>
</body>
</html>
