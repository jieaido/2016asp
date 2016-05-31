<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication2.Captain3.WebForm2" %>
<%@Register tagPrefix="cc1" namespace="myControls" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <cc1:LengthValidator ID="len1" Text="nicuole" ControlToValidate="TextBox1" runat="server"></cc1:LengthValidator>
    </div>
    </form>
</body>
</html>
