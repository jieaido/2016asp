<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderForm2.aspx.cs" Inherits="WebApplication2.Captain3.OrderForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <fieldset>
        <legend>Product Order Form</legend>
        <asp:Label ID="lblProductName" runat="server" Text="ProductName" AssociatedControlID="txtProductName"></asp:Label><br/>
        <asp:TextBox ID="txtProductName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="reqProductName" ControlToValidate="txtProductName" runat="server" Text="(Required)" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
        <br/><br/>
        <asp:Label ID="lblProductPrice" AssociatedControlID="txtProductPrice"  runat="server" Text="Product Price"></asp:Label>
        <asp:TextBox ID="txtProductPrice"  Columns="5" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="reqProductPrice" ControlToValidate="txtProductPrice" Text="(Required)" Display="Dynamic" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="cmpProductPrice" ControlToValidate="txtProductPrice"  ="(Invalid Price)" Operator="DataTypeCheck" Type="Currency" runat="server" ErrorMessage="CompareValidator"></asp:CompareValidator>
        <br/><br/>
        <asp:Label ID="lblProductQuantity" runat="server" Text="Product Quantity"></asp:Label>
        <asp:TextBox runat="server" ID="txtProductQuantity" Columns="5" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="reqProductQuantity" ControlToValidate="txtProductQuantity" Text="(required)" Display="Dynamic" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="cmpProductQuantity" ControlToValidate="txtProductQuantity" Text="(invalid Quantity)" Operator="DataTypeCheck" Type="Integer" runat="server" ErrorMessage="CompareValidator"></asp:CompareValidator>
         <br/><br/>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Text="<img src='error.gif' alt='must enter'" runat="server" ValidationGroup="" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
        <asp:Button ID="btnsubmit"  runat="server" Text="submit Product Order" OnClick="btnsubmit_OnClick" />
        <asp:Label ID="LblResult" runat="server" ></asp:Label>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    </fieldset>
    </div>
    </form>
</body>
</html>
