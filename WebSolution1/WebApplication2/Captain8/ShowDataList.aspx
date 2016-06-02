<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowDataList.aspx.cs" Inherits="WebApplication2.Captain8.ShowDataList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                Title:
                <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
                <br />
                Director:
                <asp:Label ID="DirectorLabel" runat="server" Text='<%# Eval("Director") %>' />
                <br />
                DateReleased:
                <asp:Label ID="DateReleasedLabel" runat="server" Text='<%# Eval("DateReleased","{0:D}") %>' />
             <hr/>
<br />
            </ItemTemplate>
        </asp:DataList>
    
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyDataConnectionString %>" SelectCommand="SELECT Title, Director, DateReleased FROM Movies"></asp:SqlDataSource>
    </form>
</body>
</html>
