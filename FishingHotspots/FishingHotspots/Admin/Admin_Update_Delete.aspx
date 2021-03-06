﻿<%@ Page Title="" Language="C#" MasterPageFile="../FS.Master" AutoEventWireup="true" CodeBehind="Admin_Update_Delete.aspx.cs" Inherits="FishingHotspots.Admin_Update_Delete" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Update & Delete | Admin</title>
    <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
    <link href="../CSS/PageForms.css" type="text/css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="inside-banner">
        <div class="container">
            <span class="pull-right"><a href="Index.aspx">Home</a> /Fishing Details</span>
            <h2>Update Fishing Details</h2>
        </div>
    </div>
    <div class="col-md-12 formStyle">

        <div class=" col-md-push-1 col-md-11">
            <div class="col-md-offset-4 col-md-4">
                <asp:Label ID="lblStatus" runat="server" class=""></asp:Label>
            </div>
            <br />
            <br />


            <!-- left column -->
            <div class="col-md-4 col-md-offset-1  form-horizontal formStyle">
                <h3 class=" text-center h3-admin">Add Details</h3>

                <div class="form-group">
                    <label class="control-label col-sm-4 text-left">Field to Add:</label>
                    <div class="col-sm--offset-2 col-sm-8">
                        <asp:DropDownList ID="DpField" runat="server" CssClass="list-group-item" Width="200px"></asp:DropDownList>
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-sm-4 text-left">County:</label>
                    <div class="col-sm-8">
                        <asp:DropDownList ID="dpCounty" CssClass="list-group-item" runat="server" Width="200px">
                        </asp:DropDownList>
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-sm-4 text-left">Name:</label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="txtNewData" CssClass="list-group-item" runat="server" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="alert-danger" ValidationGroup="valAdd" ControlToValidate="txtNewData" runat="server" SetFocusOnError="true" ErrorMessage="Please add the name of lake or river"></asp:RequiredFieldValidator>

                    </div>
                </div>


                <div class="form-group btnSaveNews">
                    <div class="col-sm-offset-4 col-sm-8">
                        <asp:Button ID="btnAddItem" ValidationGroup="valAdd" CssClass="btn-success btn btn-default" runat="server" Width="200px" Text="Add" OnClick="btnAddItem_Click" />
                    </div>
                </div>

            </div>
            <!-- end of left column -->


            <!-- right column -->
            <div class="col-md-4 col-md-offset-1 form-horizontal formStyle">
                <h3 class=" text-center h3-admin">Delete Details</h3>

                <div class="form-group">
                    <label class="control-label col-sm-4 text-left">Field to Delete:</label>
                    <div class="col-sm-8">
                        <asp:DropDownList ID="dpFieldDelete" CssClass="list-group-item" runat="server" Width="200px" OnSelectedIndexChanged="dpFieldDelete_SelectedIndexChanged" AutoPostBack="true">
                        </asp:DropDownList>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-md-offset-4 col-sm-8">
                        <asp:ListBox ID="LstItems" CssClass="list-group-item" runat="server" Width="200px"></asp:ListBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="alert-danger" ValidationGroup="valDelete" ControlToValidate="LstItems" runat="server" ErrorMessage="Please select an item from list to Delete"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="form-group btnSaveNews">
                    <div class="col-sm-offset-4 col-sm-8">
                        <asp:Button ID="btnDeleteItem" ValidationGroup="valDelete" runat="server" CssClass="btn-warning btn btn-default" Width="200px" Text="Delete" OnClick="btnDeleteItem_Click" />
                    </div>
                </div>

            </div>
            <!-- end of right column -->
        </div>
    </div>
</asp:Content>
