<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="Project_VAMS.Pages.Management.AdminPage" %>

    <%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
        <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <h1 style="font-size: large">If your actions inspire others to dream more, learn more, do more and become more, you are a leader.</h1>
            <h1 style="font-size: large; margin-left: 40px">&nbsp;– President John Quincy Adams, USA&nbsp;&nbsp;&nbsp;
            </h1>
            <p>
                <asp:Table ID="Table1" runat="server" HorizontalAlign="Center">
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server">
                            <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Images/view_users.png" PostBackUrl="~/Pages/Management/View_users.aspx" Width="125" Height="115" />
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/Images/report.gif" Height="115" PostBackUrl="~/Pages/Management/Report.aspx" />
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:ImageButton ID="ImageButton5" runat="server" Height="115" ImageUrl="~/Images/add_user.png" PostBackUrl="~/Pages/Management/Add_Admin_user.aspx" />
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:ImageButton ID="ImageButton4" runat="server" Height="115" ImageUrl="~/Images/search_user.png" PostBackUrl="~/Pages/Management/Search_user.aspx" />
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:ImageButton ID="ImageButton6" runat="server" Height="115" ImageUrl="~/Images/UserDetailsDB.jpg" PostBackUrl="~/Pages/Management/ApplicantsDetails.aspx" />
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </p>
        </asp:Content>