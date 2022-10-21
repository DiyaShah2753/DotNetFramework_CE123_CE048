<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Shop.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 394px;
            height: 292px;
        }
        .auto-style3 {
            width: 184px;
        }
        .auto-style6 {
            height: 42px;
        }
        .auto-style7 {
            width: 184px;
            height: 55px;
        }
        </style>
</head>
<body style="height: 314px">
    <form id="form1" runat="server">
        <div>

            <table class="auto-style2" align="center">
                <tr>
                    <td colspan="2" align="center">
                        <h2>Login page</h2>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" align="center" style="width:50%">
                        <b>Email:</b></td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" TextMode="Email"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" align="center" style="width:50%"><b>Password:</b></td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                     <td class="auto-style6" colspan="2" align="center">
                        <asp:Button ID="Button1" runat="server" Text="login" Font-Bold="True" Font-Size="Large" OnClick="Button1_Click" />
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style3" align="center" style="width:50%">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Registration.aspx">Register</asp:HyperLink>
                    </td>
                    
                </tr>
               
                <tr>
                    <td class="auto-style7">

                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </td>
                   
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
