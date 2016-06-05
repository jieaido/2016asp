<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowDetailsViewExplicit.aspx.cs" Inherits="WebApplication2.Captain9.ShowDetailsViewExplicit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DetailsView DefaultMode="Edit" AutoGenerateEditButton="True" ID="DetailsView1" runat="server" Height="50px" Width="125px" AllowPaging="True" DataSourceID="SqlDataSource1"></asp:DetailsView>
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyDataConnectionString %>" SelectCommand="SELECT Movies.* FROM Movies" UpdateCommand="UPDATE Movies SET Title = @title, Director = @director, DateReleased = @DateReleased WHERE (Id = @id)">
            <UpdateParameters>
                <asp:Parameter Name="title" />
                <asp:Parameter Name="director" />
                <asp:Parameter Name="DateReleased" Type="DateTime" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
