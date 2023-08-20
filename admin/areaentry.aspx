<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmain.master" AutoEventWireup="true" CodeFile="areaentry.aspx.cs" Inherits="admin_dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <h2>City wise Area Entry</h2>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>
                                Area
                                <small>Insert New Area Citywise</small>
                            </h2>
                            
                        </div>
                        <div class="body">
                            <h2 class="card-inside-title">Name of Area</h2>
                            <div class="row clearfix">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <div class="form-line">
                                            <asp:TextBox ID="areaName" class="form-control"  runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                            <h2 class="card-inside-title">Select City</h2>
                            <div class="row clearfix">
                                <div class="col-sm-12">
                                    
                                        <asp:DropDownList ID="ddlcity" runat="server"  BackColor="#FFFF99" DataSourceID="SqlDataSource1" DataTextField="cityname" DataValueField="city_id" Font-Bold="True" Font-Size="Medium" ForeColor="#660033" Height="30px" Width="368px"></asp:DropDownList>
                                            
                                   
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
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [city_id], [cityname] FROM [city]"></asp:SqlDataSource>
                            </div>
                            </div>
                     </div>       
                </div>
            </div>
</asp:Content>

