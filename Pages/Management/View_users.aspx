<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="View_users.aspx.cs" Inherits="Project_VAMS.Pages.Management.View_users" %>

    <%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
        <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <br />
            <h2>View all Users</h2>
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3"
                ForeColor="Black" GridLines="Vertical" Width="562px">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="UserName" HeaderText="User Name" SortExpression="UserName" />
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                    <asp:BoundField DataField="Role" HeaderText="Role" SortExpression="Role" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="Gray" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Project_VAMSConnectionString %>" DeleteCommand="DELETE FROM [Login] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Login] ([UserName], [Password], [Role]) VALUES (@UserName, @Password, @Role)"
                SelectCommand="SELECT * FROM [Login]" UpdateCommand="UPDATE [Login] SET [UserName] = @UserName, [Password] = @Password, [Role] = @Role WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="UserName" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="Role" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="UserName" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="Role" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />

        </asp:Content>