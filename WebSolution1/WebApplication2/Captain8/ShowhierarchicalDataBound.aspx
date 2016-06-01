<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowhierarchicalDataBound.aspx.cs" Inherits="WebApplication2.Captain8.ShowhierarchicalDataBound" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .floater {
            float: left;
            width: 45%;
            border: solid 1px blue;
            padding: 5px;
            margin: 5px;

        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="floater">
        <asp:TreeView ID="TreeView1"  DataSourceID="XmlDataSource1" runat="server" ImageSet="Arrows" OnSelectedNodeChanged="TreeView1_SelectedNodeChanged" ShowLines="True">
            <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
            <NodeStyle Font-Names="Tahoma" Font-Size="10pt" ForeColor="Black" HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
            <ParentNodeStyle Font-Bold="False" />
            <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" HorizontalPadding="0px" VerticalPadding="0px" />
        </asp:TreeView>
    </div>
        <div class="floater">
            <asp:Menu ID="Menu1" DataSourceID="XmlDataSource1" runat="server"></asp:Menu>
        </div>
        <asp:XmlDataSource ID="XmlDataSource1"  DataFile="../App_Data/Movies.xml" runat="server"></asp:XmlDataSource>
        <asp:AccessDataSource runat="server"/>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server"></asp:LinqDataSource> 
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server"></asp:ObjectDataSource>
    </form>
</body>
</html>
