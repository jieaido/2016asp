<%@ Page Language="C#" %>
<%@Register tagPrefix="cc1" namespace="myControls" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Title</title>
</head>
<body>
<form id="HtmlForm" runat="server">
    <div>
        
        
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <cc1:lengthvalidator ControlToValidate="TextBox1" Text="你错误了" ID="faslen" runat="server"></cc1:lengthvalidator>
    </div>
    <asp:Button ID="Button1" runat="server" Text="Button" />
</form>
</body>
</html>
