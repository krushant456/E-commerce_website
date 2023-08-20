<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmain.master" AutoEventWireup="true" CodeFile="UserReport.aspx.cs" Inherits="admin_OfferReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <h2 style="background-color:greenyellow;color:brown;font-size:large;text-align:center;" id="heading" runat="server" >Registered User Report</h2>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" Font-Size="Medium" Width="820px">
        <Columns>
            <asp:BoundField DataField="user_name" HeaderText="User Name (Registered)" SortExpression="user_name" />
            <asp:BoundField DataField="password" HeaderText="Password" SortExpression="password" />
            <asp:BoundField DataField="email_id" HeaderText="Email" SortExpression="email_id" />
            <asp:BoundField DataField="contact_no" HeaderText="Contact No" SortExpression="contact_no" />
            <asp:BoundField DataField="name" HeaderText="Name of User" SortExpression="name" />
            <asp:BoundField DataField="areaname" HeaderText="Name of Area" SortExpression="areaname" />
            <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [user_name], [password], [email_id], [contact_no], [name], [areaname], [city] FROM [User]"></asp:SqlDataSource>
    <asp:Button ID="btnPrint" runat="server" Text="Print Report" BackColor="#003300" Font-Bold="True" ForeColor="#FFFF66" OnClick="btnPrint_Click" />
</asp:Content>

