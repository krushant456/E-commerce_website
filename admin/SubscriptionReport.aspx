<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmain.master" AutoEventWireup="true" CodeFile="SubscriptionReport.aspx.cs" Inherits="admin_SubscriptionReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <h2 style="background-color:greenyellow;color:brown;font-size:large;text-align:center;">Subscription Report</h2>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataSourceID="SqlDataSource1" Font-Size="Medium" GridLines="None" Width="820px">
        <Columns>
            <asp:BoundField DataField="sub_title" HeaderText="Subscription Title" SortExpression="sub_title" />
            <asp:BoundField DataField="sub_charge" HeaderText="Charge of Subscription" SortExpression="sub_charge" />
            <asp:BoundField DataField="sub_detail" HeaderText="Subscription Detail" SortExpression="sub_detail" />
        </Columns>
        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#594B9C" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#33276A" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [sub_title], [sub_charge], [sub_detail] FROM [subscription]"></asp:SqlDataSource>
</asp:Content>

