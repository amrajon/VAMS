<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Visa_exemption.aspx.cs" Inherits="Project_VAMS.Pages.Visa_exemption" %>
    <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h3>Visa exemption</h3>
        <p>
            According to data provided by IATA, citizens of the following 23 countries are exempt from visa requirement:
        </p>
        <p>
            <asp:BulletedList ID="BulletedList1" runat="server">
                <asp:ListItem>Barbados</asp:ListItem>
                <asp:ListItem>Bhutan</asp:ListItem>
                <asp:ListItem>Botswana</asp:ListItem>
                <asp:ListItem>Burkina Faso</asp:ListItem>
                <asp:ListItem>Fiji</asp:ListItem>
                <asp:ListItem>Gabon</asp:ListItem>
                <asp:ListItem>Gambia</asp:ListItem>
                <asp:ListItem>Ghana</asp:ListItem>
                <asp:ListItem>Grenada</asp:ListItem>
                <asp:ListItem>Guinea</asp:ListItem>
                <asp:ListItem>Guinea-Bissau</asp:ListItem>
                <asp:ListItem>Jamaica</asp:ListItem>
                <asp:ListItem>Lesotho</asp:ListItem>
                <asp:ListItem>Malawi</asp:ListItem>
                <asp:ListItem>Maldives</asp:ListItem>
                <asp:ListItem>Papua New Guinea</asp:ListItem>
                <asp:ListItem>Saint Kitts and Nevis</asp:ListItem>
                <asp:ListItem>Samoa</asp:ListItem>
                <asp:ListItem>Seychelles</asp:ListItem>
                <asp:ListItem>Sierra Leone</asp:ListItem>
                <asp:ListItem>Tanzania</asp:ListItem>
                <asp:ListItem>Tonga</asp:ListItem>
                <asp:ListItem>Zambia</asp:ListItem>
            </asp:BulletedList>
        </p>
        <p>
            ** According to the Consulate General of Bangladesh in New York, citizens of Ireland also do not require a visa.
        </p>
    </asp:Content>