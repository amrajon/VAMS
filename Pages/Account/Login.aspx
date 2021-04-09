<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" UnobtrusiveValidationMode="none" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Project_VAMS.Pages.Account.Login" %>

    <%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

        <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <asp:Table ID="Table1" runat="server" HorizontalAlign="Center" Width="237px">
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">Login</asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:TextBox ID="txtLogin" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red" ErrorMessage="Please Enter User Name!" ControlToValidate="txtLogin"></asp:RequiredFieldValidator>
                        <ajaxToolkit:ValidatorCalloutExtender ID="ValidatorCalloutExtender1" runat="server" TargetControlID="RequiredFieldValidator1"></ajaxToolkit:ValidatorCalloutExtender>

                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">Password</asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red" ErrorMessage="Please Enter Password!" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
                        <ajaxToolkit:ValidatorCalloutExtender ID="ValidatorCalloutExtender2" runat="server" TargetControlID="RequiredFieldValidator2"></ajaxToolkit:ValidatorCalloutExtender>

                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" ColumnSpan="2">
                        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" /><br />
                        <asp:Label ID="lblError" runat="server" ForeColor="Red" Text=""></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableFooterRow runat="server">
                    <asp:TableCell runat="server" HorizontalAlign="Center" ColumnSpan="3">
                        <a href="~/Pages/Account/Applicant_Registration.aspx" runat="server">Don't have account yet?</a>
                    </asp:TableCell>
                </asp:TableFooterRow>
            </asp:Table>

        </asp:Content>