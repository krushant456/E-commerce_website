<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmain.master" AutoEventWireup="true" CodeFile="PaymentReport.aspx.cs" Inherits="admin_OfferReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <h2 style="background-color:greenyellow;color:brown;font-size:large;text-align:center;" id="heading" runat="server">Payment Report</h2>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" Font-Size="Medium" Width="820px">
        <Columns>
            <asp:BoundField DataField="paymentid" HeaderText="Payment ID" SortExpression="paymentid" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="order_id" HeaderText="Order Id" SortExpression="order_id" />
            <asp:BoundField DataField="buyer_id" HeaderText="Order By" SortExpression="buyer_id" />
            <asp:BoundField DataField="paymentdate" HeaderText="Payment Date" SortExpression="paymentdate" />
            <asp:BoundField DataField="bankewalletname" HeaderText="Bank or Wallet Name" SortExpression="bankewalletname" />
            <asp:BoundField DataField="transaction_no" HeaderText="Transaction No." SortExpression="transaction_no" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [payment]"></asp:SqlDataSource>
    <asp:Button ID="btnPrint" runat="server" Text="Print Report" BackColor="Yellow" ForeColor="#CC0000" OnClick="btnPrint_Click" Width="217px" />
</asp:Content>

