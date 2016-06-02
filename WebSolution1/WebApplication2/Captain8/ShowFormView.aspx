<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowFormView.aspx.cs" Inherits="WebApplication2.Captain8.ShowFormView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                Id:
                <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                <br />
                Title:
                <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
                <br />
                Director:
                <asp:TextBox ID="DirectorTextBox" runat="server" Text='<%# Bind("Director") %>' />
                <br />
                DateReleased:
                <asp:TextBox ID="DateReleasedTextBox" runat="server" Text='<%# Bind("DateReleased") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
            </EditItemTemplate>
            <InsertItemTemplate>
                Title:
                <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
                <br />
                Director:
                <asp:TextBox ID="DirectorTextBox" runat="server" Text='<%# Bind("Director") %>' />
                <br />
                DateReleased:
                <asp:TextBox ID="DateReleasedTextBox" runat="server" Text='<%# Bind("DateReleased") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
            </InsertItemTemplate>
            <ItemTemplate>
                Id:
                <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                <br />
                Title:
                <asp:Label ID="TitleLabel" runat="server" Text='<%# Bind("Title") %>' />
                <br />
                Director:
                <asp:Label ID="DirectorLabel" runat="server" Text='<%# Bind("Director") %>' />
                <br />
                DateReleased:
                <asp:Label ID="DateReleasedLabel" runat="server" Text='<%# Bind("DateReleased") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="编辑" />
            </ItemTemplate>
        </asp:FormView>
    
        
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyDataConnectionString %>" SelectCommand="SELECT Id, Title, Director, DateReleased FROM Movies" UpdateCommand="UPDATE Movies SET Title = @title, Director = @director WHERE (Id = @id)">
            <UpdateParameters>
                <asp:Parameter Name="title" />
                <asp:Parameter Name="director" />
                <asp:Parameter Name="id" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
