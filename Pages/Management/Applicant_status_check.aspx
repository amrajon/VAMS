<%@ Page Title="" Language="C#" MasterPageFile="~/ApplicantMasterPage.Master" AutoEventWireup="true" CodeBehind="Applicant_status_check.aspx.cs" UnobtrusiveValidationMode="none" Inherits="Project_VAMS.Pages.Management.Applicant_status_check" %>

    <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h3>Check Your Applicant status</h3>
        <br />
        <h3>Enter your Passport Number:</h3>
        <asp:TextBox ID="txtSearch" runat="server" Width="200" placeholder="Passport Number" TextMode="Search"></asp:TextBox>
        &nbsp
        <asp:Button ID="btnCheck" runat="server" Text="Check" OnClick="btnCheck_Click" /> &nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtSearch" ErrorMessage="Please enter your passport number" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="lblCheck" runat="server" Text=""></asp:Label>
        <br />
        <div>
            <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>

        </div>
        <br />
    </asp:Content>