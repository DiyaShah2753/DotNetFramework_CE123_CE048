<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="products_user.aspx.cs" Inherits="Shop.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div align="center" style="margin:0 auto;">
           

                  
           <h1>
               Add Product to cart</h1>
               <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                   <AlternatingRowStyle BackColor="White" />
                   <Columns>
                       <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                       <asp:BoundField DataField="Pname" HeaderText="Pname" SortExpression="Pname" />
                       <asp:BoundField DataField="Pdesc" HeaderText="Pdesc" SortExpression="Pdesc" />
                       <asp:BoundField DataField="Pprice" HeaderText="Pprice" SortExpression="Pprice" />
                       <asp:ButtonField Text="AddToCart" />
                   </Columns>
                   <EditRowStyle BackColor="#2461BF" />
                   <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                   <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                   <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                   <RowStyle BackColor="#EFF3FB" />
                   <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                   <SortedAscendingCellStyle BackColor="#F5F7FB" />
                   <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                   <SortedDescendingCellStyle BackColor="#E9EBEF" />
                   <SortedDescendingHeaderStyle BackColor="#4870BE" />
               </asp:GridView>
               <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                   SelectCommand="SELECT [Id], [Pname], [Pdesc], [Pprice] FROM [product]"
                   InsertCommand="insert into cart (cname,cdesc,cprice) VALUES (@pname, @pdesc,@pprice)"

                   ></asp:SqlDataSource>
               
                  
        </div>
        
    </form>
</body>
</html>
