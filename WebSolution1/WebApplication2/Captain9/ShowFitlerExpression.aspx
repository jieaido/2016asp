<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowFitlerExpression.aspx.cs" Inherits="WebApplication2.Captain9.ShowFitlerExpression" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        td,th {
            padding: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Button" />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                <asp:BoundField DataField="Director" HeaderText="Director" SortExpression="Director" />
                <asp:BoundField DataField="DateReleased" HeaderText="DateReleased" SortExpression="DateReleased" />
            </Columns>
        </asp:GridView>
    <hr/>

    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
             ConnectionString="<%$ ConnectionStrings:MyDataConnectionString %>"
             SelectCommand="SELECT Id, Title, Director, DateReleased FROM Movies" 
            FilterExpression="Title like '{0}%'"
            >
            <FilterParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="title"/>
            </FilterParameters>
            
            
        </asp:SqlDataSource>
    </form>
</body>
</html>
