<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmain.master" AutoEventWireup="true" CodeFile="AreaCityReport.aspx.cs" Inherits="admin_categoryreport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <h2 style="background-color:greenyellow;color:brown;font-size:large;text-align:center;" id="heading" runat="server" >City and Area Report</h2>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="city_id" Font-Bold="True" Font-Size="Medium" Height="110px" Width="497px" >
        <Columns>
            <asp:BoundField DataField="city_id" HeaderText="City Id" InsertVisible="False" ReadOnly="True" SortExpression="city_id" />
            <asp:BoundField DataField="cityname" HeaderText="Name of City" SortExpression="cityname" />
            <asp:CommandField SelectText="View Area" ShowSelectButton="True" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
    <h4>Area of Selected City</h4>
    <asp:DetailsView ID="DetailsView1" runat="server" Height="23px" Width="262px" AutoGenerateRows="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataSourceID="SqlDataSource2" Font-Size="Smaller" ForeColor="Black" AllowPaging="True" DataKeyNames="city_id">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <Fields>
            <asp:BoundField DataField="area_id" HeaderText="Area Id" SortExpression="area_id" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="areaname" HeaderText="Name of Area" SortExpression="areaname" />
            <asp:BoundField DataField="city_id" HeaderText="city_id" SortExpression="city_id" visible="false" />
        </Fields>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [area_id], [areaname], [city_id] FROM [area] WHERE ([city_id] = @city_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="city_id" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [city_id], [cityname] FROM [city]"></asp:SqlDataSource>
    <asp:Button ID="btnPrint" runat="server" Text="Print Report" BackColor="Yellow" Font-Bold="True" Font-Size="Medium" ForeColor="#003300" OnClick="btnPrint_Click" Width="156px" />
</asp:Content>

