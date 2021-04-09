<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="Project_VAMS.Pages.Management.Report" %>

    <%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
        <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            Report<br />

            <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="1048px">
                <LocalReport ReportPath="Pages\Management\Report2.rdlc">
                    <DataSources>
                        <rsweb:ReportDataSource DataSourceId="SqlDataSource1" Name="DataSet1" />
                    </DataSources>
                </LocalReport>
            </rsweb:ReportViewer>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Project_VAMSConnectionString %>" SelectCommand="SELECT [Nationality], [LastName], [FirstName], [DOB], [PurposeOfVisit], [PassportNumber], [Application_Status] FROM [Applicant_Details]"></asp:SqlDataSource>
            <br />
        </asp:Content>