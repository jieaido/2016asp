<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowQueryStringParametersMaster.aspx.cs" Inherits="WebApplication2.Captain9.ShowQueryStringParametersMaster" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1"
            DataSourceID="SqlDataSource1"
             AutoGenerateColumns="False"
            ShowHeader="False"

             runat="server">
            <Columns>
                <asp:HyperLinkField DataNavigateUrlFormatString="ShowQueryStringParameterDetails.aspx?id={0}" DataNavigateUrlFields="Id" DataTextField="Title" />
            </Columns>
            
        </asp:GridView>
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyDataConnectionString %>" SelectCommand="SELECT * FROM [Movies]"></asp:SqlDataSource>
    </form>
</body>
</html>
