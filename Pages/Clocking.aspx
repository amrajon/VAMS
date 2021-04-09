<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Clocking.aspx.cs" Inherits="Project_VAMS.Pages.Clocking" %>

    <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div style="background-color: #006A4E">
            <asp:Timer ID="Timer1" runat="server" Interval="1000"></asp:Timer>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Label ID="lblClock" runat="server" ForeColor="White" Font-Bold="true" Font-Size="Larger" Font-Names="Calibri"></asp:Label>
                    <br />
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick"></asp:AsyncPostBackTrigger>
                </Triggers>
            </asp:UpdatePanel>
            <br />
        </div>

    </asp:Content>