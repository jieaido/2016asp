<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowControlParameter.aspx.cs" Inherits="WebApplication2.Captain8.ShowControlParameter" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DropDownList ID="ddlMoviesCateGory"
            DataSourceID="SrcMoviesCategories"
            DataTextField="Name"
            DataValueField="id"
             runat="server"></asp:DropDownList>
       
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SrcMovies">
            <Columns>
                <asp:CheckBoxField />
            </Columns>
        </asp:GridView>
        <asp:Button ID="Button1" runat="server" Text="Button" />
        <asp:SqlDataSource ID="SrcMoviesCategories"
            ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|MyDatabase.mdf;Integrated Security=True"
            SelectCommand="Select id, name  from MovieCategories "
             runat="server"></asp:SqlDataSource>
        <asp:SqlDataSource  id="SrcMovies"
            ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|MyDatabase.mdf;Integrated Security=True"
            SelectCommand="select title,director from Movies where Categoryid=@id"
            runat="server">
            <SelectParameters>
                <asp:ControlParameter Name="id" Type="Int32" ControlID="ddlMoviesCateGory" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
