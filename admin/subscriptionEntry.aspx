<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmain.master" AutoEventWireup="true" CodeFile="subscriptionEntry.aspx.cs" Inherits="admin_dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>
                                Subscription
                                <small>Insert New Subscription </small>
                            </h2>
                            
                        </div>
                        <div class="body">
                            <h2 class="card-inside-title">Subscription Title</h2>
                            <div class="row clearfix">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <div class="form-line">
                                            <asp:TextBox ID="subtitle" class="form-control"  runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                            <h2 class="card-inside-title">Subscription Charge</h2>
                            <div class="row clearfix">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <div class="form-line">
                                            <asp:TextBox ID="subcharge" class="form-control"  runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                            <h2 class="card-inside-title">Subscription Detail</h2>
                            <div class="row clearfix">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <div class="form-line">
                                            <asp:TextBox ID="subdet" class="form-control"  runat="server" Height="107px" TextMode="MultiLine" Width="544px"></asp:TextBox>
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
                            </div>
                            </div>
                     </div>       
                </div>
            </div>
</asp:Content>

