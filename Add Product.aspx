<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add Product.aspx.cs" Inherits="Shop.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 757px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1" style="width:700px;height:390px;" align="center">
            <tr>
                <td class="auto-style2" colspan="2" >
                    <h1>Add Product</h1>
                </td>
                <td></td>
            </tr>
            <tr>
                <td>
                    <h3>Product name</h3></td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <h3>Product desc</h3></td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <h3>Product Image</h3></td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
             <td>
                    <h3>Product Price</h3></td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:Button ID="Button1" runat="server" Text="Add" OnClick="Button1_Click" />
                </td>

            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Update/Delete" />
                </td>

            </tr>
            
            <tr>
                <td class="auto-style2" colspan="2" align="center">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
                <td></td>
            </tr>
           
        </table>
        <div>
        </div>
    </form>
</body>
</html>
