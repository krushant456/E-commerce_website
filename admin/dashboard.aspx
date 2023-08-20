<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmain.master" AutoEventWireup="true" CodeFile="dashboard.aspx.cs" Inherits="admin_dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <h2>DASHBOARD</h2>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="row clearfix">
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box bg-pink hover-expand-effect">
                        <div class="icon">
                            <a href="productentry.aspx" style="text-decoration:none;"><i class="material-icons">add_to_queue</i></a>
                        </div>
                        <div class="content">
                            <div class="text">NEW PRODUCT</div>
                            <div class="number count-to" data-from="0" data-to="125" data-speed="15" data-fresh-interval="20"></div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box bg-cyan hover-expand-effect">
                        <div class="icon">
                            <a href="categoryentry.aspx" style="text-decoration:none;"><i class="material-icons">account_circle</i></a>
                        </div>
                        <div class="content">
                            <div class="text">NEW CATEGORY</div>
                            <div class="number count-to" data-from="0" data-to="257" data-speed="1000" data-fresh-interval="20"></div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box bg-light-green hover-expand-effect">
                        <div class="icon">
                            <a href="offerentry.aspx" style="text-decoration:none;"><i class="material-icons">assignment_ind</i></a>
                        </div>
                        <div class="content">
                            <div class="text">NEW OFFER</div>
                            <div class="number count-to" data-from="0" data-to="243" data-speed="1000" data-fresh-interval="20"></div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box bg-orange hover-expand-effect">
                        <div class="icon">
                            <a href="subscriptionEntry.aspx" style="text-decoration:none;"><i class="material-icons">person_add</i></a>
                        </div>
                        <div class="content">
                            <div class="text">NEW SUBSCRIPTION</div>
                            <div class="number count-to" data-from="0" data-to="1225" data-speed="1000" data-fresh-interval="20"></div>
                        </div>
                    </div>
                </div>
            </div>


    <div class="row clearfix">
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box bg-brown hover-expand-effect">
                        <div class="icon">
                            <a href="AreaCityReport.aspx" style="text-decoration:none;"><i class="material-icons">shopping_cart</i></a>
                        </div>
                        <div class="content">
                            <div class="text">City-Area</div>
                            <div class="number count-to" data-from="0" data-to="125" data-speed="15" data-fresh-interval="20"></div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box bg-deep-orange hover-expand-effect">
                        <div class="icon">
                            <a href="StateCityReport.aspx" style="text-decoration:none;"><i class="material-icons">assignment</i></a>
                        </div>
                        <div class="content">
                            <div class="text">State-City</div>
                            <div class="number count-to" data-from="0" data-to="257" data-speed="1000" data-fresh-interval="20"></div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box bg-green hover-expand-effect ">
                        <div class="icon">
                            <a href="feedbackreport.aspx" style="text-decoration:none;"><i class="material-icons">forum</i></a>
                        </div>
                        <div class="content">
                            <div class="text">FEEDBACK REPORT</div>
                            <div class="number count-to" data-from="0" data-to="243" data-speed="1000" data-fresh-interval="20"></div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box bg-amber hover-expand-effect">
                        <div class="icon">
                            <a href="userreport.aspx" style="text-decoration:none;"><i class="material-icons">list</i></a>
                        </div>
                        <div class="content">
                            <div class="text">USER REPORT</div>
                            <div class="number count-to" data-from="0" data-to="1225" data-speed="1000" data-fresh-interval="20"></div>
                        </div>
                    </div>
                </div>
            </div>

    <div class="row clearfix">
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box bg-indigo hover-expand-effect">
                        <div class="icon">
                            <a href="categoryreport.aspx" style="text-decoration:none;"><i class="material-icons">line_style</i></a>
                        </div>
                        <div class="content">
                            <div class="text">CATEGORY REPORT</div>
                            <div class="number count-to" data-from="0" data-to="125" data-speed="15" data-fresh-interval="20"></div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box bg-lime hover-expand-effect">
                        <div class="icon">
                            <a href="productreport.aspx" style="text-decoration:none;"><i class="material-icons">view_module</i></a>
                        </div>
                        <div class="content">
                            <div class="text">PRODUCT REPORT</div>
                            <div class="number count-to" data-from="0" data-to="257" data-speed="1000" data-fresh-interval="20"></div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box bg-yellow hover-expand-effect">
                        <div class="icon">
                           <a href="offerreport.aspx" style="text-decoration:none;"> <i class="material-icons">account_balance</i></a>
                        </div>
                        <div class="content">
                            <div class="text">OFFER REPORT</div>
                            <div class="number count-to" data-from="0" data-to="243" data-speed="1000" data-fresh-interval="20"></div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box bg-teal hover-expand-effect">
                        <div class="icon">
                            <a href="subscriptionreport.aspx" style="text-decoration:none;"><i class="material-icons">dns</i>
                        </div>
                        <div class="content">
                            <div class="text">SUBSCRIPTION REPORT</div>
                            <div class="number count-to" data-from="0" data-to="1225" data-speed="1000" data-fresh-interval="20"></div>
                        </div>
                    </div>
                </div>
            </div>

    <div class="row clearfix">
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box bg-blue-grey hover-expand-effect">
                        <div class="icon">
                            <a href="areaentry.aspx" style="text-decoration:none;"><i class="material-icons">playlist_add_check</i></a>
                        </div>
                        <div class="content">
                            <div class="text">Add New Area</div>
                            <div class="number count-to" data-from="0" data-to="125" data-speed="15" data-fresh-interval="20"></div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box bg-light-blue hover-expand-effect">
                        <div class="icon">
                            <a href="orderreport.aspx" style="text-decoration:none;"><i class="material-icons">thumbs_up_down</i></a>
                        </div>
                        <div class="content">
                            <div class="text">Order Report</div>
                            <div class="number count-to" data-from="0" data-to="257" data-speed="1000" data-fresh-interval="20"></div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box bg-red hover-expand-effect">
                        <div class="icon">
                            <a href="PaymentReport.aspx" style="text-decoration:none;"><i class="material-icons">subscriptions</i></a>
                        </div>
                        <div class="content">
                            <div class="text">Payment Report</div>
                            <div class="number count-to" data-from="0" data-to="243" data-speed="1000" data-fresh-interval="20"></div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box bg-red hover-expand-effect">
                        <div class="icon">
                            <a href="subPaymentReport.aspx" style="text-decoration:none;"><i class="material-icons">subscriptions</i></a>
                        </div>
                        <div class="content">
                            <div class="text">Subscript Payment Report</div>
                            <div class="number count-to" data-from="0" data-to="243" data-speed="1000" data-fresh-interval="20"></div>
                        </div>
                    </div>
                </div>
            </div>

</asp:Content>

