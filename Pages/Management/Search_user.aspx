<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" UnobtrusiveValidationMode="none" AutoEventWireup="true" CodeBehind="Search_user.aspx.cs" Inherits="Project_VAMS.Pages.Management.Search_user" %>

    <%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

        <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <h3>Search user by Passport Number:</h3>
            <asp:TextBox ID="txtSearch" runat="server" Width="200" placeholder="Passport Number" TextMode="Search"></asp:TextBox>
            &nbsp
            <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" /> &nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtSearch" ErrorMessage="Please Enter passport number" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="lblSearch" runat="server" ForeColor="Red" Font-Bold="true" Font-Size="Larger" Text=""></asp:Label>
            <br />
            <div>

                <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Width="1045px">
                    <EditRowStyle HorizontalAlign="Center" />
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