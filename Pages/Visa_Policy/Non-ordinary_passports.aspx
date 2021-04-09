<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Non-ordinary_passports.aspx.cs" Inherits="Project_VAMS.Pages.Visa_Policy.Non_ordinary_passports" %>
    <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h3>Non-ordinary passports</h3>
        <p>
            Additionally, only holders of diplomatic and official passports of the following countries do not require visas for 30 days (unless otherwise noted):
        </p>
        <p>
            <asp:BulletedList ID="BulletedList1" runat="server">
                <asp:ListItem>Belarus</asp:ListItem>
                <asp:ListItem>China</asp:ListItem>
                <asp:ListItem>Estonia (diplomatic only)</asp:ListItem>
                <asp:ListItem>India (45 days, diplomatic only)</asp:ListItem>
                <asp:ListItem>Indonesia</asp:ListItem>
                <asp:ListItem>Japan (90 days, diplomatic only)</asp:ListItem>
                <asp:ListItem>Malaysia</asp:ListItem>
                <asp:ListItem>Myanmar</asp:ListItem>
                <asp:ListItem>North Korea</asp:ListItem>
                <asp:ListItem>Philippines</asp:ListItem>
                <asp:ListItem>Russia</asp:ListItem>
                <asp:ListItem>South Korea</asp:ListItem>
                <asp:ListItem>Sri Lanka</asp:ListItem>
                <asp:ListItem>Swaziland</asp:ListItem>
                <asp:ListItem>Turkey (diplomatic only)</asp:ListItem>
                <asp:ListItem>Ukraine</asp:ListItem>
                <asp:ListItem>United Arab Emirates</asp:ListItem>
                <asp:ListItem>Vietnam</asp:ListItem>
            </asp:BulletedList>
        </p>
        <p>
            ** Visa waiver agreement for holders of diplomatic and official passports was signed with Sri Lanka in July 2017 and it is yet to come into force.
        </p>
    </asp:Content>