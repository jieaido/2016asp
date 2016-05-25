<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowLengthValidator.aspx.cs" Inherits="WebApplication2.Captain3.ShowLengthValidator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lblComments" runat="server" Text="Comments:"></asp:Label>
        <br/>
        <asp:TextBox ID="txtComments" TextMode="MultiLine" Columns="30" Rows="5" runat="server"></asp:TextBox>
          
     
    </div>
    </form>
</body>
</html>
