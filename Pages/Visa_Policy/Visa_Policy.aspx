<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Visa_Policy.aspx.cs" Inherits="Project_VAMS.Pages.Visa_Policy.Visa_Policy" %>

    <%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

        <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

            <br />


            <br />
            <a href="~/Pages/Visa_Policy/Visa_exemption.aspx" runat="server">Visa exemption</a><br />
            <br />
            <a href="~/Pages/Visa_Policy/Visa_on_arrival.aspx" runat="server">Visa on arrival</a><br />
            <br />
            <a href="~/Pages/Visa_Policy/No_Visa_Required_seal.aspx" runat="server">No Visa Required seal</a><br />
            <br />
            <a href="~/Pages/Visa_Policy/Non-ordinary_passports.aspx" runat="server">Non-ordinary passports</a>
        </asp:Content>