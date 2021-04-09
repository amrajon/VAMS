<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" UnobtrusiveValidationMode="none" CodeBehind="Applicant_Registration.aspx.cs" Inherits="Project_VAMS.Pages.Account.Registration" %>

    <%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

        <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

            <asp:Table ID="Table1" runat="server" HorizontalAlign="Center">
                <asp:TableRow runat="server" Font-Bold="True" Font-Size="Large">
                    <asp:TableCell runat="server" ColumnSpan="2" HorizontalAlign="Center">Registration</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">User ID</asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:TextBox ID="txtUserId" runat="server"></asp:TextBox>
                        <br />
                        <asp:Label ID="lblError" runat="server" ForeColor="Red" Text=""></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter an User Id" ForeColor="Red" ControlToValidate="txtUserId"></asp:RequiredFieldValidator>
                        <ajaxToolkit:ValidatorCalloutExtender ID="ValidatorCalloutExtender1" runat="server" TargetControlID="RequiredFieldValidator1" PopupPosition="Right"></ajaxToolkit:ValidatorCalloutExtender>

                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">Password</asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:TextBox ID="txtPwd" runat="server" TextMode="Password"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter a password!" ForeColor="Red" ControlToValidate="txtPwd"></asp:RequiredFieldValidator>
                        <ajaxToolkit:ValidatorCalloutExtender ID="ValidatorCalloutExtender2" runat="server" TargetControlID="RequiredFieldValidator2"></ajaxToolkit:ValidatorCalloutExtender>

                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">Confirm Password</asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:TextBox ID="txtCPwd" runat="server" TextMode="Password"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" Display="Dynamic" runat="server" ErrorMessage="Password doesn't match" ForeColor="Red" ControlToValidate="txtCPwd"></asp:RequiredFieldValidator>
                        <ajaxToolkit:ValidatorCalloutExtender ID="ValidatorCalloutExtender3" runat="server" TargetControlID="RequiredFieldValidator3"></ajaxToolkit:ValidatorCalloutExtender>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" Display="Dynamic" ControlToValidate="txtCPwd" ControlToCompare="txtPwd" ErrorMessage="Confirm Password!" ForeColor="Red"></asp:CompareValidator>

                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">Role</asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:TextBox ID="txtRole" runat="server" Text="Applicant" Enabled="False"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" ColumnSpan="2" Font-Bold="True" HorizontalAlign="Center">
                        <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" /> &nbsp
                        <asp:Button ID="btnReset" runat="server" Text="Reset" OnClick="btnReset_Click" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">
                        <asp:Label ID="lblReg" ForeColor="Green" runat="server" Text=""></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableFooterRow runat="server">
                    <asp:TableCell runat="server">
                        <asp:HyperLink ID="lnkLogin" runat="server" NavigateUrl="~/Pages/Account/Login.aspx">Already have an account?</asp:HyperLink>
                    </asp:TableCell>
                </asp:TableFooterRow>
            </asp:Table>
        </asp:Content>