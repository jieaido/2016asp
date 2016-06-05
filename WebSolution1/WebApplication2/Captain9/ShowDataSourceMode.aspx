<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowDataSourceMode.aspx.cs" Inherits="WebApplication2.Captain9.ShowDataSourceMode" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                <asp:BoundField DataField="Director" HeaderText="Director" SortExpression="Director" />
                <asp:BoundField DataField="DateReleased" HeaderText="DateReleased" SortExpression="DateReleased" />
            </Columns>
        </asp:GridView>
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyDataConnectionString %>" SelectCommand="SELECT [Id], [Title], [Director], [DateReleased] FROM [Movies]" DataSourceMode="DataReader" OnSelected="SqlDataSource1_OnSelected"></asp:SqlDataSource>
    </form>
</body>
</html>
