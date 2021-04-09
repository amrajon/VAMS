<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Visa_on_arrival.aspx.cs" Inherits="Project_VAMS.Pages.Visa_on_arrival" %>
    <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h3>Visa on arrival</h3>
        <p>
            According to data provided by IATA, the following countries are specifically enumerated as countries whose citizens can obtain visa on arrival for the purpose of official duty, business, investment and tourism regardless of the Bangladeshi mission status:
        </p>
        <p>
            <asp:BulletedList ID="BulletedList1" runat="server">
                <asp:ListItem>European Union - All European Union countries</asp:ListItem>
                <asp:ListItem>Australia</asp:ListItem>
                <asp:ListItem>Bahrain</asp:ListItem>
                <asp:ListItem>Canada</asp:ListItem>
                <asp:ListItem>China</asp:ListItem>
                <asp:ListItem>Iceland</asp:ListItem>
                <asp:ListItem>Japan</asp:ListItem>
                <asp:ListItem>Kuwait</asp:ListItem>
                <asp:ListItem>Liechtenstein</asp:ListItem>
                <asp:ListItem>Malaysia</asp:ListItem>
                <asp:ListItem>New Zealand</asp:ListItem>
                <asp:ListItem>Norway</asp:ListItem>
                <asp:ListItem>Oman</asp:ListItem>
                <asp:ListItem>Qatar</asp:ListItem>
                <asp:ListItem>Russia</asp:ListItem>
                <asp:ListItem>Saudi Arabia</asp:ListItem>
                <asp:ListItem>Singapore</asp:ListItem>
                <asp:ListItem>South Korea</asp:ListItem>
                <asp:ListItem>Switzerland</asp:ListItem>
                <asp:ListItem>United States</asp:ListItem>
                <asp:ListItem>United Arab Emirates</asp:ListItem>
            </asp:BulletedList>
        </p>
        <p>
            According to data provided by IATA, citizens of all other countries without a Bangladeshi mission or arriving from such countries may obtain a visa on arrival for the maximum stay of 30 days, except the following 24 (unless they are residing in a country
            without a Bangladeshi representation):
        </p>
        <p>
            <asp:BulletedList ID="BulletedList2" runat="server">
                <asp:ListItem>Brazil</asp:ListItem>
                <asp:ListItem>Brunei Darussalam</asp:ListItem>
                <asp:ListItem>Egypt</asp:ListItem>
                <asp:ListItem>Hong Kong</asp:ListItem>
                <asp:ListItem>India</asp:ListItem>
                <asp:ListItem>Indonesia</asp:ListItem>
                <asp:ListItem>Iran</asp:ListItem>
                <asp:ListItem>Iraq</asp:ListItem>
                <asp:ListItem>Jordan</asp:ListItem>
                <asp:ListItem>Kenya</asp:ListItem>
                <asp:ListItem>Libya</asp:ListItem>
                <asp:ListItem>Mauritius</asp:ListItem>
                <asp:ListItem>Mexico</asp:ListItem>
                <asp:ListItem>Morocco</asp:ListItem>
                <asp:ListItem>Myanmar</asp:ListItem>
                <asp:ListItem>Nepal</asp:ListItem>
                <asp:ListItem>Pakistan</asp:ListItem>
                <asp:ListItem>Philippines</asp:ListItem>
                <asp:ListItem>South Africa</asp:ListItem>
                <asp:ListItem>Sri Lanka</asp:ListItem>
                <asp:ListItem>Thailand</asp:ListItem>
                <asp:ListItem>Uzbekistan</asp:ListItem>
                <asp:ListItem>Vietnam</asp:ListItem>
            </asp:BulletedList>
        </p>
    </asp:Content>