<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterationPage.aspx.cs" Inherits="DummyDemo.RegisterationPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 56%;
        }
        .auto-style2 {
            width: 178px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Registration Form</h2>
        <div>

            <table class="auto-style1">
                 <tr>
                <td colspan="2">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" BackColor="#CCCCCC" DisplayMode="List" Font-Size="Medium" ForeColor="Red" />
                </td>
            </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>

                    </td>
                    <td> 
                             <asp:TextBox ID="nameTextBox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="nameTextBox" Display="Dynamic" ErrorMessage="Please enter your name" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="emailTextBox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="emailTextBox" Display="Dynamic" ErrorMessage="Please enter email" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="emailTextBox" Display="Dynamic" ErrorMessage="Invalid Email" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                </td>
            </tr>
                 <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="passwordTextBox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="passwordTextBox" Display="Dynamic" ErrorMessage="Please enter password" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label6" runat="server" Text="Mobile Number"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="mobileNumberTextBox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="mobileNumberTextBox" Display="Dynamic" ErrorMessage="Please enter mobile number" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="mobileNumberTextBox" Display="Dynamic" ErrorMessage="Invalid mobile number" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^([\(]{1}[0-9]{3}[\)]{1}[\.| |\-]{0,1}|^[0-9]{3}[\.|\-| ]?)?[0-9]{3}(\.|\-| )?[0-9]{4}$">*</asp:RegularExpressionValidator>
                    </td>
            </tr>
                 <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label7" runat="server" Text="Location"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="locationTextBox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="locationTextBox" Display="Dynamic" ErrorMessage="Please enter location" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                </td>
            </tr>
                <tr>
                    <td class="auto-style2">

                        <asp:Label ID="Label8" runat="server" Text="Upload Photo"></asp:Label>

                    </td>
                    <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                </tr>
                 <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="SubmitButton" runat="server" OnClick="submitButton_Click" Text="Submit" />
                </td>
            </tr>
                <tr>
                    <td class="auto-style2">

                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:HyperLink ID="HyperLink1" NavigateUrl="UserDetailsPage.aspx" runat="server">Click here to view all user details</asp:HyperLink>
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
