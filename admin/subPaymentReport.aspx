<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmain.master" AutoEventWireup="true" CodeFile="subPaymentReport.aspx.cs" Inherits="admin_OfferReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <h2 style="background-color:greenyellow;color:brown;font-size:large;text-align:center;" id="heading" runat="server" >Subscription Payment Report</h2>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" Font-Size="Medium" Width="820px">
        <Columns>
            <asp:BoundField DataField="subpayid" HeaderText="subpayid" SortExpression="subpayid" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="paymentdate" HeaderText="Date of Payment" SortExpression="paymentdate" />
            <asp:BoundField DataField="user_name" HeaderText="Name of User" SortExpression="user_name" />
            <asp:BoundField DataField="bankwalletname" HeaderText="Bank/E-Wallet Name" SortExpression="bankwalletname" />
            <asp:BoundField DataField="transaction_no" HeaderText="Transection No." SortExpression="transaction_no" />
            <asp:BoundField DataField="amountpaid" HeaderText="Amount Paid" SortExpression="amountpaid" />
            
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [SubPayment]"></asp:SqlDataSource>
    <asp:Button ID="BtnPrint" runat="server" Text="Print Report" BackColor="Yellow" Font-Bold="True" Font-Size="Larger" ForeColor="#009900" OnClick="BtnPrint_Click" />
</asp:Content>

