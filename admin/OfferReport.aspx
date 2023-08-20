<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmain.master" AutoEventWireup="true" CodeFile="OfferReport.aspx.cs" Inherits="admin_OfferReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <h2 style="background-color:greenyellow;color:brown;font-size:large;text-align:center;">Offer Report</h2>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" Font-Size="Medium" Width="820px">
        <Columns>
            <asp:BoundField DataField="offer_title" HeaderText="Offer Title" SortExpression="offer_title" />
            <asp:BoundField DataField="start_date" HeaderText="Starting Date" SortExpression="start_date" />
            <asp:BoundField DataField="end_date" HeaderText="Ending Date" SortExpression="end_date" />
            <asp:BoundField DataField="discount" HeaderText="Discount Name" SortExpression="discount" />
            <asp:BoundField DataField="product_name" HeaderText="Name of Product" SortExpression="product_name" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT offer.offer_title, offer.start_date, offer.end_date, offer.discount, product.product_name FROM offer CROSS JOIN product"></asp:SqlDataSource>
    </asp:Content>

