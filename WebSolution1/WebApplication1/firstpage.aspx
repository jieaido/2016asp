<%@ Page Language="C#"  Trace="true"%>

<!DOCTYPE html>

<script runat="server">

    void Page_Load()
    {
        lblservertime.Text = DateTime.Now.ToString("F");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = "Thanks You!";
    }

    private void Button2_OnClick(object sender, EventArgs e)
    {
        Button btn = (Button) sender;//sender代表点击的按钮
        btn.Text = (int.Parse(btn.Text) + 1).ToString();
        
    }

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    Welcome to Asp.net 4.0! The Current date and time is:
        <asp:Label ID="lblservertime" runat="server" ></asp:Label>
    </div>
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
        <asp:Label ID="Label1" runat="server" Text="Label" ></asp:Label>
        
        
         <div>
        <asp:Button ID="Button2" runat="server" Text="0" OnClick="Button2_OnClick" />
        <asp:Button ID="Button3" runat="server" Text="0" OnClick="Button2_OnClick"/>
        </div>
        

    </form>
   
</body>
</html>
