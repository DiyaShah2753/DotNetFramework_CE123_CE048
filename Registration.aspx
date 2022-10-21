<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Shop.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    
    <style type="text/css">
        .auto-style1 {
            width: 843px;
            height: 670px;
            margin-left:300px;
       }
        .auto-style2{
            width: 27%;
        }
        .auto-style3 {
            width: 27%;
            height: 64px;
        }
        .auto-style4 {
            height: 61px;
        }
        .auto-style5 {
            height: 64px;
            width: 811px;
        }
        .auto-style6 {
            width: 27%;
            height: 48px;
        }
        .auto-style7 {
            height: 48px;
            width: 811px;
        }
        .auto-style8 {
            height: 100px;
        }
        .auto-style9 {
            margin-left: 1px;
        }
        .auto-style10 {
            width: 50%;
            height: 44px;
        }
        .auto-style11 {
            width: 811px;
        }
    </style>
    
    
</head>
<body style="height: 732px">
    <form id="form1" runat="server">
     
    <table class="auto-style1" style="background-color: #FFFFFF">
        <tr>
            <td colspan="2" align="center">
                <h2>Registration page
                </h2>
            </td>
        </tr>
        <tr>
            <td class="auto-style2"><b>First Name:</b></td>
            <td class="auto-style11">
                <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="fname cannot be empty" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="only characters" ForeColor="Red" ValidationExpression="^[A-Za-z]*$">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" ><b>Last Name:</b></td>
            <td class="auto-style11">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Lname cannot be empty" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="only characters" ForeColor="Red" ValidationExpression="^[A-Za-z]*$">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3"><b>EmailID:</b></td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Email" Height="26px" CssClass="auto-style9" Width="213px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="email cannot be empty" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><b>Gender:</b></td>
             <td class="auto-style7">
                 <asp:DropDownList ID="DropDownList1" runat="server" Height="23px" Width="217px">
                     <asp:ListItem>Male</asp:ListItem>
                     <asp:ListItem>Female</asp:ListItem>
                     <asp:ListItem>Other</asp:ListItem>
                 </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2"><b>Address:</b></td>
            <td class="auto-style11">
                <asp:TextBox ID="TextBox8" runat="server" Height="27px" Width="208px" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox8" ErrorMessage="address cannot be empty" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2"><b>Phone no:</b></td>
            <td class="auto-style11">
                <asp:TextBox ID="TextBox5" runat="server" TextMode="Phone"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="phone no cannot be empty" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox5" ErrorMessage="only digits" ForeColor="Red" ValidationExpression="[0-9]{10}">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2"><b>Password:</b></td>
            <td class="auto-style11">
                <asp:TextBox ID="TextBox6" runat="server" TextMode="Password" Height="32px" Width="216px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="password cannot be empty" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2"><b>Confirm Password:</b></td>
            <td class="auto-style11">
                <asp:TextBox ID="TextBox7" runat="server" TextMode="Password" Width="213px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox7" ErrorMessage="Confirm password cannot be empty" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox6" ControlToValidate="TextBox7" ErrorMessage="password does not match" ForeColor="Red">*</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style10" align="center" colspan="2">
                <asp:Button ID="Button1" runat="server" Text="Register" CssClass="auto-style4" Height="30px" Width="141px" Font-Bold="True" Font-Size="Large" OnClick="Button1_Click" />
            </td>
        </tr>
          <td class="auto-style3" align="center" style="width:50%">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/login.aspx">Login</asp:HyperLink>
                    </td>
                  
       <tr>
           <td colspan="2" class="auto-style8">
               <asp:ValidationSummary ID="ValidationSummary1" runat="server" Width="221px" DisplayMode="List" ForeColor="Red" ShowMessageBox="True" />
               <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>

       </tr>

        </table>
    </form>
    </body>
    </html>