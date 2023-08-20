<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmain.master" AutoEventWireup="true" CodeFile="productreport.aspx.cs" Inherits="admin_productreport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <h2 style="background-color:greenyellow;color:brown;font-size:large;text-align:center;" id="heading" runat="server" >Product Report with Features</h2>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="product_id" DataSourceID="SqlDataSource1" Font-Size="Medium" Width="820px">
        <Columns>
            <asp:BoundField DataField="product_id" HeaderText="Product Id" InsertVisible="False" ReadOnly="True" SortExpression="product_id" />
            <asp:BoundField DataField="product_name" HeaderText="Name of Product" SortExpression="product_name" />
            <asp:BoundField DataField="description" HeaderText="Product Description" SortExpression="description" />
            <asp:BoundField DataField="mrp" HeaderText="MRP" SortExpression="mrp" />
            <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
            <asp:BoundField DataField="discount" HeaderText="Discount Offer" SortExpression="discount" />
            <asp:BoundField DataField="quantity" HeaderText="Quantity" SortExpression="quantity" />
            <asp:CommandField SelectText="View Features" ShowSelectButton="True" />
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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [feature_title], [feature_description], [product_id] FROM [prodfeature] WHERE ([product_id] = @product_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="product_id" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [product_id], [product_name], [description], [mrp], [price], [discount], [quantity] FROM [product]"></asp:SqlDataSource>
    <h4>Features of Selected Product</h4>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="None" Height="50px" Width="267px">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <Fields>
            <asp:BoundField DataField="feature_title" HeaderText="Feature Title" SortExpression="feature_title" />
            <asp:BoundField DataField="feature_description" HeaderText="Feature Description" SortExpression="feature_description" />
            <asp:BoundField DataField="product_id" HeaderText="product_id" SortExpression="product_id" />
        </Fields>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
    </asp:DetailsView>
    <asp:Button ID="btnPrint" runat="server" Text="Print Report" BackColor="#000099" Font-Bold="True" Font-Size="Medium" ForeColor="White" OnClick="btnPrint_Click" Width="164px" />
</asp:Content>

