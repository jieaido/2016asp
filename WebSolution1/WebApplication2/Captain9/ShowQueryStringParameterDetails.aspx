<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowQueryStringParameterDetails.aspx.cs" Inherits="WebApplication2.Captain9.ShowQueryStringParameterDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="margin-left: 520px">
    
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="CategoryId" HeaderText="CategoryId" SortExpression="CategoryId" />
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                <asp:BoundField DataField="Director" HeaderText="Director" SortExpression="Director" />
                <asp:BoundField DataField="DateReleased" HeaderText="DateReleased" SortExpression="DateReleased" />
            </Fields>
        </asp:DetailsView>
        <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Captain9/ShowQueryStringParametersMaster.aspx" runat="server">HyperLink</asp:HyperLink>
    
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyDataConnectionString %>" SelectCommand="SELECT * FROM [Movies] WHERE ([Id] = @Id)">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="0" Name="Id" QueryStringField="Id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
