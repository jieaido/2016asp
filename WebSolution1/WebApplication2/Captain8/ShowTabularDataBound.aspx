<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowTabularDataBound.aspx.cs" Inherits="WebApplication2.Captain8.ShowTabularDataBound" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .floater {
            float: left;
            border: solid 1px black;
            padding: 5px;
            margin: 5px;
            
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="floater">
    
      
    
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SrcMovies">
            <ItemTemplate>
                title:
                <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
                <br />
                director:
                <asp:Label ID="directorLabel" runat="server" Text='<%# Eval("director") %>' />
                <br />
<br />
            </ItemTemplate>
        </asp:DataList>
    
      
    
    </div>
         <div class="floater">
    
             <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="SrcMovies" Height="50px" Width="125px">
                 <Fields>
                     <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                     <asp:BoundField DataField="director" HeaderText="director" SortExpression="director" />
                 </Fields>
             </asp:DetailsView>
    
    </div>
         <div class="floater">
    
             <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataSourceID="SrcMovies">
                 <EditItemTemplate>
                     title:
                     <asp:TextBox ID="titleTextBox" runat="server" Text='<%# Bind("title") %>' />
                     <br />
                     director:
                     <asp:TextBox ID="directorTextBox" runat="server" Text='<%# Bind("director") %>' />
                     <br />
                     <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                     &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                 </EditItemTemplate>
                 <InsertItemTemplate>
                     title:
                     <asp:TextBox ID="titleTextBox" runat="server" Text='<%# Bind("title") %>' />
                     <br />
                     director:
                     <asp:TextBox ID="directorTextBox" runat="server" Text='<%# Bind("director") %>' />
                     <br />
                     <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
                     &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                 </InsertItemTemplate>
                 <ItemTemplate>
                     title:
                     <asp:Label ID="titleLabel" runat="server" Text='<%# Bind("title") %>' />
                     <br />
                     director:
                     <asp:Label ID="directorLabel" runat="server" Text='<%# Bind("director") %>' />
                     <br />

                 </ItemTemplate>
             </asp:FormView>
    
    </div>
         <div class="floater">
    
             <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SrcMovies" >
                 <ItemTemplate>
                     <%#Eval("title") %>
                     <i>Director by</i>
                     <%#Eval("Director") %>

                 </ItemTemplate>
             </asp:Repeater>
    
    </div>
         <div class="floater">
    
             <asp:ListView ID="ListView1" runat="server" DataSourceID="SrcMovies" GroupItemCount="3">
                 <AlternatingItemTemplate>
                     <td runat="server" style="background-color:#FFF8DC;">title:
                         <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
                         <br />
                         director:
                         <asp:Label ID="directorLabel" runat="server" Text='<%# Eval("director") %>' />
                         <br />
                     </td>
                 </AlternatingItemTemplate>
                 <EditItemTemplate>
                     <td runat="server" style="background-color:#008A8C;color: #FFFFFF;">title:
                         <asp:TextBox ID="titleTextBox" runat="server" Text='<%# Bind("title") %>' />
                         <br />
                         director:
                         <asp:TextBox ID="directorTextBox" runat="server" Text='<%# Bind("director") %>' />
                         <br />
                         <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                         <br />
                         <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
                         <br />
                     </td>
                 </EditItemTemplate>
                 <EmptyDataTemplate>
                     <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                         <tr>
                             <td>未返回数据。</td>
                         </tr>
                     </table>
                 </EmptyDataTemplate>
                 <EmptyItemTemplate>
                     <td runat="server" />
                 </EmptyItemTemplate>
                 <GroupTemplate>
                     <tr id="itemPlaceholderContainer" runat="server">
                         <td id="itemPlaceholder" runat="server"></td>
                     </tr>
                 </GroupTemplate>
                 <InsertItemTemplate>
                     <td runat="server" style="">title:
                         <asp:TextBox ID="titleTextBox" runat="server" Text='<%# Bind("title") %>' />
                         <br />
                         director:
                         <asp:TextBox ID="directorTextBox" runat="server" Text='<%# Bind("director") %>' />
                         <br />
                         <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="插入" />
                         <br />
                         <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="清除" />
                         <br />
                     </td>
                 </InsertItemTemplate>
                 <ItemTemplate>
                     <td runat="server" style="background-color:#DCDCDC;color: #000000;">title:
                         <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
                         <br />
                         director:
                         <asp:Label ID="directorLabel" runat="server" Text='<%# Eval("director") %>' />
                         <br />
                     </td>
                 </ItemTemplate>
                 <LayoutTemplate>
                     <table runat="server">
                         <tr runat="server">
                             <td runat="server">
                                 <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                     <tr id="groupPlaceholder" runat="server">
                                     </tr>
                                 </table>
                             </td>
                         </tr>
                         <tr runat="server">
                             <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                                 <asp:DataPager ID="DataPager1" runat="server" PageSize="12">
                                     <Fields>
                                         <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                     </Fields>
                                 </asp:DataPager>
                             </td>
                         </tr>
                     </table>
                 </LayoutTemplate>
                 <SelectedItemTemplate>
                     <td runat="server" style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">title:
                         <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
                         <br />
                         director:
                         <asp:Label ID="directorLabel" runat="server" Text='<%# Eval("director") %>' />
                         <br />
                     </td>
                 </SelectedItemTemplate>
             </asp:ListView>
    
    </div>
         <div class="floater">
    
    </div>
         <div class="floater">
    
    </div>
        <asp:SqlDataSource ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|MyDatabase.mdf;Integrated Security=True" 
        ID="SrcMovies" 
                SelectCommand="Select title,director from movies"
        runat="server"></asp:SqlDataSource>
    </form>
</body>
</html>
