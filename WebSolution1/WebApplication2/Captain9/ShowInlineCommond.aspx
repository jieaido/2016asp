<%@ Page Language="C#" AutoEventWireup="true" Debug="true" CodeBehind="ShowInlineCommond.aspx.cs" Inherits="WebApplication2.Captain9.ShowInlineCommond" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
            <Fields> 
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                <asp:BoundField DataField="Director" HeaderText="Director" SortExpression="Director" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
    
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyDataConnectionString %>" DeleteCommand="DELETE FROM Movies WHERE (Id = @id)" InsertCommand="INSERT INTO Movies(Title, Director, CategoryId, DateReleased) VALUES (@title, @director, 0, CONVERT (DATETIME, '2016-06-01 00:00:00', 102))" SelectCommand="SELECT Id, Title, Director FROM Movies" UpdateCommand="UPDATE Movies SET Title = @title, Director = @director WHERE (Id = @id)">
            <DeleteParameters>
                <asp:Parameter Name="id" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="title" />
                <asp:Parameter Name="director" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="title" />
                <asp:Parameter Name="director" />
                <asp:Parameter Name="id" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
