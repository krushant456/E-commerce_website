﻿<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmain.master" AutoEventWireup="true" CodeFile="feedbackreport.aspx.cs" Inherits="admin_OfferReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <h2 style="background-color:greenyellow;color:brown;font-size:large;text-align:center;">FeedBack Report</h2>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" Font-Size="Medium" Width="820px">
        <Columns>
            <asp:BoundField DataField="FName" HeaderText="Feedback Given By" SortExpression="FName" />
            <asp:BoundField DataField="Subject" HeaderText="Subject" SortExpression="Subject" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [feedback]"></asp:SqlDataSource>
    </asp:Content>

