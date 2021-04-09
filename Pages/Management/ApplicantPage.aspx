<%@ Page Title="" Language="C#" MasterPageFile="~/ApplicantMasterPage.Master" AutoEventWireup="true" CodeBehind="ApplicantPage.aspx.cs" Inherits="Project_VAMS.Pages.Management.ApplicantPage" %>

    <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/apply_now.png" PostBackUrl="~/Pages/Management/Visa_Application.aspx" Height="90px" Width="200px" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Images/check_application_status.png" PostBackUrl="~/Pages/Management/Applicant_status_check.aspx" Height="79px" Width="247px" />
    </asp:Content>