<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="Shop.main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style3 {
            width: 231px;
            height: 92px;
            margin-left: 0px;
        }
        .auto-style4 {
            width: 436px;
            height: 142px;
        }
        .auto-style5 {
            margin-left: 160px;
            height: 142px;
        }
        .auto-style6 {
            width: 1367px;
            height: 142px;
        }
        .auto-style8 {
            width: 1100px;
            height: 288px;
        }
        .auto-style9 {
            margin-top: 0px;
        }
        .auto-style10 {
            height: 77px;
        }
        .auto-style11 {
            height: 343px;
        }
        .auto-style12 {
            margin-right: 142px;
        }
        </style>
</head>
<body style="height: 623px">
    <form id="form1" runat="server">
    <table style="margin:0 auto;" class="auto-style8">
        <tr style="width:1100px;border-color:#5f98f3;background-color:white;">
            <td class="auto-style4" >
                <img alt="" class="auto-style3" src="Images/logo.jpg" /></td>
            <td class="auto-style6" align="center">
                <asp:Label ID="Label1" runat="server" Text="Shopify" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" ForeColor="#000099"></asp:Label>
                <br />
                <asp:Label ID="Label4" runat="server" Text="For those who love Shopping...!!!"></asp:Label>
            </td>

               
            <td class="auto-style5" align="right">
               
     
                
                <%  if (Session["email"] != null)
                    { Response.Write(Session["email"]);  %>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:HyperLink runat="server" NavigateUrl="~/login.aspx">Logout
                <%  Session["email"] = null; %> 
                                             </asp:HyperLink>

           <% }
            else { %>
                 <asp:HyperLink runat="server" NavigateUrl="~/login.aspx">Login</asp:HyperLink>
           <% }
           %> 
                <br/>
                </td>
                
        </tr>
        <tr>
            <td colspan="3" class="auto-style10"><asp:Menu ID="Menu2" runat="server" Orientation="Horizontal">
                <Items>
                    <asp:MenuItem Text="Home" Value="Home"></asp:MenuItem>
                    <asp:MenuItem Text="Products" Value="Cart" NavigateUrl="~/products_user.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="About Us" Value="About Us"></asp:MenuItem>
                    <asp:MenuItem Text="Contact Us" Value="Contact Us"></asp:MenuItem>
                    <asp:MenuItem Text="Login" Value="Login" NavigateUrl="~/login.aspx"></asp:MenuItem>
                </Items>
                <StaticHoverStyle BackColor="Black" BorderColor="#999966" BorderStyle="Outset" ForeColor="White" />
                <StaticMenuItemStyle Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="Black" HorizontalPadding="65px" />
                </asp:Menu>
                
            </td>
            <asp:Menu ID="Menu1" runat="server"></asp:Menu>
        </tr>
        <tr style="width:1110px; ";>
             <td colspan="3" class="auto-style11">

                 <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                 <asp:UpdatePanel ID="UpdatePanel1" runat="server">

                     <ContentTemplate>
                         <asp:Timer ID="Timer1" runat="server" OnTick="Timer1_Tick" Interval="2000"></asp:Timer>
                         <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/1.jpg" BackColor="white"  Height="251px" Width="355px" />
                         <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/2.jpg" BackColor="White"  Height="251px" Width="316px" CssClass="auto-style9"/>
                         <asp:Image ID="Image3" runat="server" ImageUrl="~/Images/3.jpg" BackColor="White"  Height="251px" Width="382px" />
                     </ContentTemplate>
                 </asp:UpdatePanel>

             </td>
        </tr>


        <tr>
             <td colspan="3">

                 <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
             </td>
        </tr>
        <tr style="width:1100px;height:25px;background-color:black;text-align:center;color:white">
        <td colspan="3">
            <b>Thank you for visiting...!!!</b>
        </td>
        </tr>
    </table>
        
        
        
    <    <asp:DataList ID="DataList1" runat="server" CssClass="auto-style12" DataKeyField="Id" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal" HorizontalAlign="Justify">
       

            <ItemTemplate>
            <table style="margin-left:170px;">
                <tr>
                    <td style="text-align:center; background-color:#5f98f3">
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Pname") %>' Font-Bold="True" Font-Names="Arial Black" ForeColor="White"></asp:Label>
                    </td>
                <</tr>
                
                <tr>
                    <td style="text-align:center;">
                       <asp:Image ID="Image4" runat="server" BorderColor="Black" BorderWidth="1px" ImageUrl='<%#Eval("Pimage")%>' Width="278px" Height="350px"/> 
                  
                </tr>
                <tr>
                    <td style="text-align:center; background-color:#5f98f3">
                        <asp:Label ID="Label6" runat="server" Text="Price: Rs " Font-Bold="True" ForeColor="White" Font-Names="arial" style="text-align:center"></asp:Label>
                         <asp:Label ID="Label7" runat="server" Text='<%# Eval("Pprice") %>' Font-Bold="True" ForeColor="White" Font-Names="arial" style="text-align:center"></asp:Label>

                    </td>
                </tr>
               
                <tr>
                    <td style="text-align:center;">
                        
                   <!--     <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='~/Registration.aspx?id= <%# Eval("Id"); %> '>HyperLink</asp:HyperLink>
                    -->    <% //Response.Redirect("login.aspx");  %>
                        <asp:Label ID="Label3" runat="server" ></asp:Label>
                    </td>
                </tr>
            </table>   
                <br />
                <br />
                
            </ItemTemplate>

        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Pname], [Id], [Pimage], [Pprice] FROM [product]"></asp:SqlDataSource>
        <div>
        </div>
    </form>
</body>
    
</html>
