<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmain.master" AutoEventWireup="true" CodeFile="orderreport.aspx.cs" Inherits="admin_productreport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <h2 style="background-color:greenyellow;color:brown;font-size:large;text-align:center;" id="heading" runat="server" >Order Report with Order Details</h2>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="order_id" DataSourceID="SqlDataSource1" Font-Size="Medium" Width="100%">
        <Columns>
            <asp:BoundField DataField="order_id" HeaderText="order_id" SortExpression="order_id" />
            <asp:BoundField DataField="order_date" HeaderText="Order Date" SortExpression="order_date" />
            <asp:BoundField DataField="shippingaddress" HeaderText="Shipping Address" SortExpression="shippingaddress" />
            <asp:BoundField DataField="total_amount" HeaderText="Order Amount" SortExpression="total_amount" />
            <asp:BoundField DataField="buyer_id" HeaderText="Order By" SortExpression="buyer_id" />
            <asp:CommandField SelectText="View Order Details" ShowSelectButton="True" />
        </Columns>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#330099" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <SortedAscendingCellStyle BackColor="#FEFCEB" />
        <SortedAscendingHeaderStyle BackColor="#AF0101" />
        <SortedDescendingCellStyle BackColor="#F6F0C0" />
        <SortedDescendingHeaderStyle BackColor="#7E0000" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [order_detail] WHERE ([order_id] = @order_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="order_id" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [order_id], [order_date], [shippingaddress], [total_amount], [buyer_id] FROM [order]"></asp:SqlDataSource>
    <h4>Features of Selected Product</h4>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="None" Height="50px" Width="267px" AllowPaging="True" DataKeyNames="order_id">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <Fields>
            <asp:BoundField DataField="product_id" HeaderText="product_id" SortExpression="product_id" />
            <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
            <asp:BoundField DataField="size" HeaderText="size" SortExpression="size" />
            <asp:BoundField DataField="color" HeaderText="color" SortExpression="color" />
            <asp:BoundField DataField="order_id" HeaderText="Order Id" SortExpression="order_id" />
            
        </Fields>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
    </asp:DetailsView>
    <asp:Button ID="prnButton" runat="server" Text="Print Report" BackColor="Yellow" Font-Bold="True" Font-Size="Medium" ForeColor="#660033" OnClick="prnButton_Click" Width="171px" />
</asp:Content>

