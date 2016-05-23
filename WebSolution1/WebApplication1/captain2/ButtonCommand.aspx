<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ButtonCommand.aspx.cs" Inherits="WebApplication1.captain2.ButtonCommand" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="BtnSortAsc" runat="server" Text="Button" 
            CommandName="Sort"
            CommandArgument="ASC"
            OnCommand="Sort_Command"/>
        <asp:Button ID="BtnSortdes" runat="server" Text="Button"
             CommandName="Sort"
            CommandArgument="DSC"
            OnCommand="Sort_Command"/>
        <br/> <br/>
        <asp:BulletedList ID="bltGroceies" runat="server">
        </asp:BulletedList>
       

        

    </div>
    </form>
</body>
</html>
