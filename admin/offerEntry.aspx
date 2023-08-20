<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmain.master" AutoEventWireup="true" CodeFile="offerEntry.aspx.cs" Inherits="admin_dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <h2>Product Offer</h2>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>
                                Product Offer
                                <small>Insert New Product Offer</small>
                            </h2>
                            
                        </div>
                        <div class="body">
                            <h2 class="card-inside-title">Offer Title</h2>
                            <div class="row clearfix">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <div class="form-line">
                                            <asp:TextBox ID="offertitle" class="form-control"  runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                            <h2 class="card-inside-title">Start Date</h2>
                            <div class="row clearfix">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <div class="form-line">
                                            <asp:TextBox ID="startdate"  class="form-control"  runat="server" TextMode="Date" Width="239px"></asp:TextBox>
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                            <h2 class="card-inside-title">End Date</h2>
                            <div class="row clearfix">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <div class="form-line">
                                            <asp:TextBox ID="enddate" class="form-control"  runat="server" Height="16px" TextMode="Date" Width="237px"></asp:TextBox>
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                            <h2 class="card-inside-title">Discount</h2>
                            <div class="row clearfix">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <div class="form-line">
                                            <asp:TextBox ID="txtDisc" class="form-control"  runat="server" Height="19px" TextMode="Number" Width="193px"></asp:TextBox>
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                            <h2 class="card-inside-title">Select Product</h2>
                            <div class="row clearfix">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <div class="form-line">
                                            <asp:DropDownList ID="ddlProduct" runat="server"  BackColor="#FFFF99" DataSourceID="SqlDataSource1" DataTextField="product_name" DataValueField="product_id" Font-Bold="True" Font-Size="Medium" ForeColor="#660033" Height="30px" Width="368px"></asp:DropDownList>
                                         </div>
                                    </div>
                                    
                                </div>
                            </div>
                            
                            <div class="row clearfix">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <div class="form-line">
                                            <asp:ImageButton ID="SaveButton"  AlternateText="SAVE" runat="server" CssClass="btn bg-orange waves-effect" ImageAlign="Middle" ImageUrl="~/admin/images/Save.png" OnClick="SaveButton_Click" />

                                        </div>
                                    </div>
                                    
                                </div>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [product_id], [product_name] FROM [product]"></asp:SqlDataSource>
                            </div>
                            </div>
                     </div>       
                </div>
            </div>
</asp:Content>

