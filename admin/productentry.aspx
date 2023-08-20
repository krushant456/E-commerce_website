<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmain.master" AutoEventWireup="true" CodeFile="productentry.aspx.cs" Inherits="admin_dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <h2>Product Entry</h2>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>
                                New Product
                                <small>Insert New Products</small>
                            </h2>
                            
                        </div>
                        <div class="body">
                            <h2 class="card-inside-title">Product Name</h2>
                            <div class="row clearfix">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <div class="form-line">
                                            <asp:TextBox ID="ProductName" class="form-control"  runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                            <h2 class="card-inside-title">Product Description</h2>
                            <div class="row clearfix">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <div class="form-line">
                                            <asp:TextBox ID="PDescription" class="form-control"   runat="server" Height="98px" TextMode="MultiLine" Width="483px"></asp:TextBox>
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                            <h2 class="card-inside-title">Product MRP</h2>
                            <div class="row clearfix">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <div class="form-line">
                                            <asp:TextBox ID="txtMRP" class="form-control"  runat="server" Width="227px"></asp:TextBox>
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                            <h2 class="card-inside-title">Product Price</h2>
                            <div class="row clearfix">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <div class="form-line">
                                            <asp:TextBox ID="PPrice" class="form-control"  runat="server" Width="212px"></asp:TextBox>
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                            <h2 class="card-inside-title">Product Discount</h2>
                            <div class="row clearfix">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <div class="form-line">
                                            <asp:TextBox ID="pdiscount" class="form-control"  runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                            <h2 class="card-inside-title">Product Quantity</h2>
                            <div class="row clearfix">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <div class="form-line">
                                            <asp:TextBox ID="pquantity" class="form-control"  runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                            <h2 class="card-inside-title">Seller Name</h2>
                            <div class="row clearfix">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <div class="form-line">
                                            <asp:DropDownList ID="ddlSeller" runat="server" BackColor="#99FFCC" DataSourceID="SqlDataSource2" DataTextField="user_name" DataValueField="seller_id" Font-Bold="True" Font-Size="18pt" ForeColor="#003300" Height="30px" Width="366px"></asp:DropDownList>                                
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                            <h2 class="card-inside-title">Select Sub-Category</h2>
                            <div class="row clearfix">
                                <div class="col-sm-12">
                                    
                                        <asp:DropDownList ID="ddlSubCategory" runat="server"  BackColor="#FFFF99" DataSourceID="SqlDataSource1" DataTextField="sub_category" DataValueField="sub_catid" Font-Bold="True" Font-Size="Medium" ForeColor="#660033" Height="30px" Width="368px"></asp:DropDownList>
                                            
                                   
                                </div>
                            </div>
                            <h2 class="card-inside-title">Feature Title</h2>
                            <div class="row clearfix">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <div class="form-line">
                                            <asp:TextBox ID="feaTitle" class="form-control"  runat="server" Width="254px"></asp:TextBox>
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                            <h2 class="card-inside-title">Feature Description</h2>
                            <div class="row clearfix">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <div class="form-line">
                                            <asp:TextBox ID="feaDesc" class="form-control"  runat="server" Height="115px" TextMode="MultiLine" Width="461px"></asp:TextBox>
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                            <h2 class="card-inside-title">Product Color</h2>
                            <div class="row clearfix">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <div class="form-line">
                                          Color 1 : <asp:TextBox ID="txtColor1" class="form-control"  runat="server"  Width="200px"></asp:TextBox>
                                          Color 2 : <asp:TextBox ID="txtColor2" class="form-control"  runat="server"  Width="200px"></asp:TextBox>
                                          Color 3 : <asp:TextBox ID="txtColor3" class="form-control"  runat="server"  Width="200px"></asp:TextBox>
                                          Color 4 : <asp:TextBox ID="txtColor4" class="form-control"  runat="server"  Width="200px"></asp:TextBox>
                  
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>

                             <h2 class="card-inside-title">Product Size</h2>
                            <div class="row clearfix">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <div class="form-line">
                                          Size 1 : <asp:TextBox ID="txtSize1" class="form-control"  runat="server" Width="200px"></asp:TextBox>
                                          Size 2 : <asp:TextBox ID="txtSize2" class="form-control"  runat="server" Width="200px"></asp:TextBox>
                                          Size 3 : <asp:TextBox ID="txtSize3" class="form-control"  runat="server" Width="200px"></asp:TextBox>
                                          Size 4 : <asp:TextBox ID="txtSize4" class="form-control"  runat="server" Width="200px"></asp:TextBox>
                      
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                            <h2 class="card-inside-title">Minimum Quantity Buy</h2>
                            <div class="row clearfix">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <div class="form-line">
                                         <asp:TextBox ID="txtMinBuy" class="form-control"  runat="server" Width="200px"></asp:TextBox>
                      
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>

                            <h2 class="card-inside-title">Product Image</h2>
                            <div class="row clearfix">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        
                                           <asp:fileupload id="ProdImage" runat="server" Width="350px"></asp:fileupload>
                                        
                                    </div>
                                    
                                </div>
                            </div>
                            <div class="row clearfix">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <div class="form-line">
                                            <asp:ImageButton ID="SaveButton"  AlternateText="SAVE" runat="server" CssClass="btn bg-orange waves-effect" ImageAlign="Middle" ImageUrl="~/admin/images/Save.png" OnClick="SaveButton_Click" />

                                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

                                        </div>
                                    </div>
                                    
                                </div>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [sub_catid], [sub_category] FROM [subcategory]"></asp:SqlDataSource>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT seller.seller_id, [User].user_name FROM seller INNER JOIN [User] ON seller.user_id = [User].user_id"></asp:SqlDataSource>

                            </div>
                            </div>
                     </div>       
                </div>
            </div>
</asp:Content>

