<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formatLabel.aspx.cs" Inherits="WebApplication1.captain2.formatLabel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style type="text/css">
        div {
            padding: 10px;
        }
        .labelStyle {
            color: red;
            background-color: yellow;
            border: solid 2px red;
        }

    </style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="Label" CssClass="labelStyle" >
            
        </asp:Label>
        </div>
        <br/>
        <div>
            <asp:Button ID="Button1" runat="server" Text="Button"  CssClass="labelStyle"/>
        </div>
        

    </form>
</body>
</html>
