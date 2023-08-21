<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserDetailsPage.aspx.cs" Inherits="DummyDemo.UserDetailsPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            width: 148px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="159px">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                    <asp:BoundField DataField="mobilenumber" HeaderText="mobilenumber" SortExpression="mobilenumber" />
                    <asp:BoundField DataField="location" HeaderText="location" SortExpression="location" />
                    <asp:ImageField DataImageUrlField="Image" ItemStyle-Height="50px" ItemStyle-Width="50px" HeaderText="User Photo">
                       
                    </asp:ImageField>
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
            <br />
         
            <table class="auto-style3">
                <tr>
                    <td class="auto-style4"> 
                        <asp:Label ID="Label2" runat="server" Text="Filter By Name"></asp:Label>

                    </td>
                    <td>  <asp:TextBox ID="FileterValueTextBox" runat="server"></asp:TextBox>
            <asp:Button ID="FilterDataButton" runat="server" OnClick="Search_OnClick" Text="Search" style="height: 29px" /></td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
         
           
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:test2ConnectionString %>" SelectCommand="SELECT * FROM [UserDetails]"></asp:SqlDataSource>
            <br />
        </div>
    </form>
</body>
</html>
