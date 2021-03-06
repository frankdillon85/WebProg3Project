﻿<%@ Page Title="" Language="C#" MasterPageFile="~/FS.Master" AutoEventWireup="true" CodeBehind="Reviews.aspx.cs" Inherits="FishingHotspots.Reviews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/Reviews.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="inside-banner">
        <div class="container">
            <span class="pull-right"><a href="Index.aspx">Home</a> / Reviews</span>
            <h2>Reviews</h2>
        </div>
    </div>
    <!-- banner -->


    <div class="container">
        <div class="properties-listing spacer">

            <div class="row">
                <div class="col-lg-3 col-sm-4 ">

                    <div class="search-form">
                        <h4><span class="glyphicon glyphicon-search"></span>Search for</h4>
                        <div class="row">
                            <div class="col-lg-12">
                                <asp:DropDownList ID="ddlFishType" runat="server" class="form-control dll" >
                                    <asp:ListItem Value="1">Coarse</asp:ListItem>
                                    <asp:ListItem Value="2">Game</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col-lg-12">
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FishingHotspotsDB %>" SelectCommand="SELECT * FROM [RegionsTbl]"></asp:SqlDataSource>
                                <asp:DropDownList ID="ddlWhere" runat="server" class="form-control dll" DataSourceID="SqlDataSource1" DataTextField="County" DataValueField="Id" >
                                </asp:DropDownList>
                            </div>
                        </div>

                        <asp:Button ID="btnFindNow" runat="server"  Text="Find Now" class="btn btn-primary" OnClick="btnFindNow_Click"></asp:Button>
                    </div>

                    <asp:SqlDataSource ID="SqlDataSourceTopRated" runat="server" ConnectionString="<%$ ConnectionStrings:FishingHotspotsDB %>" SelectCommand="TopRated" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSourceTopRated">
                        <ItemTemplate>
                            <div runat="server">
                                <div class="row">
                                    <div class="col-lg-4 col-sm-5">
                                        <asp:Image ID="reviewImage" runat="server" ImageUrl='<%#Eval("Photo") %>' class="img-responsive img-circle" alt="review" />
                                    </div>
                                    <div class="col-lg-8 col-sm-7">
                                        <a href="../ReviewDetails.aspx?id=<%# Eval("reviewId") %>">
                                            <h5 class="alert-info"><strong><%#:Eval("Title")%></strong></h5>
                                        </a>
                                        <p class="price"><b>Likes:</b> <%# Eval("averageRating")%> people liked this</p>
                                        <p class="price"><%# Eval("ReviewDate","{0:MMM dd, yyyy}")%></p>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <div class="hot-properties hidden-xs" runat="server">
                                <h4>Hot Reviews</h4>
                                <div id="ItemPlaceholder" runat="server">
                                </div>
                            </div>
                        </LayoutTemplate>
                    </asp:ListView>
                </div>


                <div ID="selected" runat="server" class="col-lg-8 col-lg-offset-1 col-sm-8">
                    <asp:Label ID="lblError" runat="server" Text="" CssClass="alert-danger" Display="Dynamic"></asp:Label>
                     <div class="col-lg-4 col-sm-6 reviews" runat="server" >
                                <div id="ImageDiv">
                                    <asp:Image ID="reviewImage" runat="server" ImageUrl='' class="img-responsive" alt="review" />
                                </div>
                                <h4><strong><asp:Label runat="server" ID="lblTitle"></asp:Label></strong></h4>
                                <p class="price"><b>Date</b><asp:label runat="server" ID="lblDate"></asp:label></p>
                            <asp:Button ID="btnReviewDetails" runat="server" class="btn btn-primary" OnClick="btnReviewDetails_OnClick" Text="View Details"></asp:Button>
                            </div>
              <%--      <asp:ListView ID="ListViewReviews" runat="server" DataKeyNames="Id"  >
                            <ItemTemplate>
                            <div class="col-lg-4 col-sm-6 reviews" runat="server" >
                                <div id="ImageDiv">
                                    <asp:Image ID="reviewImage" runat="server" ImageUrl='<%#Eval("Photo") %>' class="img-responsive" alt="review" />
                                </div>
                                <h4><strong><%#:Eval("Title")%></strong></h4>
                                <p class="price"><b>Date</b> <%# Eval("ReviewDate","{0:dd/MM/yyyy}")%></p>
                                <a class="btn btn-primary" href="ReviewDetails.aspx?id=<%# Eval("Id") %>">View Details</a>
                            </div>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <div class="row" id="allReviews" runat="server">
                                
                                <div id="ItemPlaceholder" runat="server">
                                </div>
                            </div>
                        </LayoutTemplate>
                    </asp:ListView>
              --%>      




                </div>
            </div>
        </div>
    </div>
</asp:Content>
