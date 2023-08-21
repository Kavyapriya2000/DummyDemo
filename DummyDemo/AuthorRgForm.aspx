<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AuthorRgForm.aspx.cs" Inherits="DummyDemo.AuthorRgForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 49%;
        }
        .auto-style2 {
            width: 754px;
        }
        .auto-style3 {
            width: 357px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label1" runat="server" Text="Author"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="nameTextBox" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label2" runat="server" Text="Comment"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="commentTextBox" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label3" runat="server" Text="Upload Image"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:FileUpload ID="fileupload" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Button ID="add_comment_onclick" runat="server" OnClick="Button1_Click" Text="Add Comment" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" >
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns = "False"
                   Font-Names = "Arial" Height="375px" Width="498px" DataSourceID="SqlDataSource1" DataKeyNames="id" >
                <Columns>

                   <%-- <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" InsertVisible="False" ReadOnly="True" />--%>
                    <asp:BoundField DataField="author" HeaderText="Author" SortExpression="author" />
                    <asp:BoundField DataField="comment" HeaderText="Comment" SortExpression="comment" />
                    <asp:BoundField DataField="filename" HeaderText="FileName" SortExpression="filename" />

                    <asp:TemplateField HeaderText="Image">
                        <ItemTemplate >

                        <asp:Image ID="Image1" runat="server" ImageUrl ='<%# "UserImages\\"+Eval("FileName") %>' height="120px" Width="150px" />

                      </ItemTemplate>

                    </asp:TemplateField>

                </Columns>
                </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:test2ConnectionString %>" SelectCommand="SELECT * FROM [authorImg]"></asp:SqlDataSource>
                    </td>
                </tr>
                    
            </table>
        </div>
    </form>
</body>
</html>
