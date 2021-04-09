<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" UnobtrusiveValidationMode="none" AutoEventWireup="true" CodeBehind="ApplicantsDetails.aspx.cs" Inherits="Project_VAMS.Pages.Management.ApplicantsDetails" %>

    <%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
        <%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
            <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

                <asp:DynamicFilter ID="DynamicFilter1" runat="server">
                </asp:DynamicFilter>
                <br />
                <br />
                <h3>View applicants Details</h3>
                <strong>To search a specific applicant please search by his/her passport number below</strong><br />
                <asp:TextBox ID="txtSearch" runat="server" Width="200" placeholder="Passport Number" TextMode="Search"></asp:TextBox>
                &nbsp
                <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
                <br />
                <asp:Label ID="lblSearch" runat="server" ForeColor="Red" Font-Bold="true" Font-Size="Larger" Text=""></asp:Label>

                &nbsp;
                <br />
                <asp:DetailsView ID="DetailsView2" runat="server" Height="50px" Width="290px" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                </asp:DetailsView>
                <p style="width: 411px; font-size: large; margin-left: 320px">
                    <strong>By default All the applicants Details here.&nbsp;&nbsp;&nbsp; </strong>
                </p>
                &nbsp;&nbsp;&nbsp;
                <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource1" GridLines="Horizontal"
                    Height="42px" Width="422px" HorizontalAlign="Center">
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                    <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <Fields>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="Nationality" HeaderText="Nationality" SortExpression="Nationality" />
                        <asp:BoundField DataField="LPRCR" HeaderText="LPRCR" SortExpression="LPRCR" />
                        <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                        <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                        <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                        <asp:BoundField DataField="Sex" HeaderText="Sex" SortExpression="Sex" />
                        <asp:BoundField DataField="PurposeOfVisit" HeaderText="PurposeOfVisit" SortExpression="PurposeOfVisit" />
                        <asp:BoundField DataField="CategoryAndTypeOfVisa" HeaderText="CategoryAndTypeOfVisa" SortExpression="CategoryAndTypeOfVisa" />
                        <asp:BoundField DataField="NumberOfEntries" HeaderText="NumberOfEntries" SortExpression="NumberOfEntries" />
                        <asp:BoundField DataField="DateOfEntryBD" HeaderText="DateOfEntryBD" SortExpression="DateOfEntryBD" />
                        <asp:BoundField DataField="DateOfDepartureBD" HeaderText="DateOfDepartureBD" SortExpression="DateOfDepartureBD" />
                        <asp:BoundField DataField="PassportNumber" HeaderText="PassportNumber" SortExpression="PassportNumber" />
                        <asp:BoundField DataField="PassportIssuedBy" HeaderText="PassportIssuedBy" SortExpression="PassportIssuedBy" />
                        <asp:BoundField DataField="DateOfPassportIssue" HeaderText="DateOfPassportIssue" SortExpression="DateOfPassportIssue" />
                        <asp:BoundField DataField="DateOfPassportExpiry" HeaderText="DateOfPassportExpiry" SortExpression="DateOfPassportExpiry" />
                        <asp:BoundField DataField="TypeOfPassport" HeaderText="TypeOfPassport" SortExpression="TypeOfPassport" />
                        <asp:BoundField DataField="PermanentAddress" HeaderText="PermanentAddress" SortExpression="PermanentAddress" />
                        <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="HostOrganizationBD" HeaderText="HostOrganizationBD" SortExpression="HostOrganizationBD" />
                        <asp:BoundField DataField="Itinerary" HeaderText="Itinerary" SortExpression="Itinerary" />
                        <asp:BoundField DataField="MedicalInsurance" HeaderText="MedicalInsurance" SortExpression="MedicalInsurance" />
                        <asp:BoundField DataField="MedicalInsuranceName" HeaderText="MedicalInsuranceName" SortExpression="MedicalInsuranceName" />
                        <asp:BoundField DataField="MedicalInsuranceNumber" HeaderText="MedicalInsuranceNumber" SortExpression="MedicalInsuranceNumber" />
                        <asp:BoundField DataField="Sponsor" HeaderText="Sponsor" SortExpression="Sponsor" />
                        <asp:BoundField DataField="MaritialStatus" HeaderText="MaritialStatus" SortExpression="MaritialStatus" />
                        <asp:BoundField DataField="SpouseName" HeaderText="SpouseName" SortExpression="SpouseName" />
                        <asp:BoundField DataField="SpouseDOB" HeaderText="SpouseDOB" SortExpression="SpouseDOB" />
                        <asp:BoundField DataField="SpouseBirthPlace" HeaderText="SpouseBirthPlace" SortExpression="SpouseBirthPlace" />
                        <asp:BoundField DataField="FatherName" HeaderText="FatherName" SortExpression="FatherName" />
                        <asp:BoundField DataField="MotherName" HeaderText="MotherName" SortExpression="MotherName" />
                        <asp:BoundField DataField="IssuedBDVisa" HeaderText="IssuedBDVisa" SortExpression="IssuedBDVisa" />
                        <asp:BoundField DataField="LostPassport" HeaderText="LostPassport" SortExpression="LostPassport" />
                        <asp:BoundField DataField="VisitedCountries" HeaderText="VisitedCountries" SortExpression="VisitedCountries" />
                        <asp:BoundField DataField="CountriesIssuedPassport" HeaderText="CountriesIssuedPassport" SortExpression="CountriesIssuedPassport" />
                        <asp:BoundField DataField="FirstOrgName" HeaderText="FirstOrgName" SortExpression="FirstOrgName" />
                        <asp:BoundField DataField="FirstOrgAddress" HeaderText="FirstOrgAddress" SortExpression="FirstOrgAddress" />
                        <asp:BoundField DataField="FirstOrgPosition" HeaderText="FirstOrgPosition" SortExpression="FirstOrgPosition" />
                        <asp:BoundField DataField="FirstOrgChiefName" HeaderText="FirstOrgChiefName" SortExpression="FirstOrgChiefName" />
                        <asp:BoundField DataField="FirstOrgChiefPhone" HeaderText="FirstOrgChiefPhone" SortExpression="FirstOrgChiefPhone" />
                        <asp:BoundField DataField="FirstOrgJoin" HeaderText="FirstOrgJoin" SortExpression="FirstOrgJoin" />
                        <asp:BoundField DataField="FirstOrgDismissal" HeaderText="FirstOrgDismissal" SortExpression="FirstOrgDismissal" />
                        <asp:BoundField DataField="SecondOrgName" HeaderText="SecondOrgName" SortExpression="SecondOrgName" />
                        <asp:BoundField DataField="SecondOrgAddress" HeaderText="SecondOrgAddress" SortExpression="SecondOrgAddress" />
                        <asp:BoundField DataField="SecondOrgPosition" HeaderText="SecondOrgPosition" SortExpression="SecondOrgPosition" />
                        <asp:BoundField DataField="SecondOrgChiefName" HeaderText="SecondOrgChiefName" SortExpression="SecondOrgChiefName" />
                        <asp:BoundField DataField="SecondOrgChiefPhone" HeaderText="SecondOrgChiefPhone" SortExpression="SecondOrgChiefPhone" />
                        <asp:BoundField DataField="SecondOrgJoin" HeaderText="SecondOrgJoin" SortExpression="SecondOrgJoin" />
                        <asp:BoundField DataField="SecondOrgDismissal" HeaderText="SecondOrgDismissal" SortExpression="SecondOrgDismissal" />
                        <asp:BoundField DataField="Application_Status" HeaderText="Application_Status" SortExpression="Application_Status" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                    </Fields>
                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                </asp:DetailsView>
                <br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Project_VAMSConnectionString %>" DeleteCommand="DELETE FROM [Applicant_Details] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Applicant_Details] ([Nationality], [LPRCR], [LastName], [FirstName], [DOB], [Sex], [PurposeOfVisit], [CategoryAndTypeOfVisa], [NumberOfEntries], [DateOfEntryBD], [DateOfDepartureBD], [PassportNumber], [PassportIssuedBy], [DateOfPassportIssue], [DateOfPassportExpiry], [TypeOfPassport], [PermanentAddress], [Phone], [Email], [HostOrganizationBD], [Itinerary], [MedicalInsurance], [MedicalInsuranceName], [MedicalInsuranceNumber], [Sponsor], [MaritialStatus], [SpouseName], [SpouseDOB], [SpouseBirthPlace], [FatherName], [MotherName], [IssuedBDVisa], [LostPassport], [VisitedCountries], [CountriesIssuedPassport], [FirstOrgName], [FirstOrgAddress], [FirstOrgPosition], [FirstOrgChiefName], [FirstOrgChiefPhone], [FirstOrgJoin], [FirstOrgDismissal], [SecondOrgName], [SecondOrgAddress], [SecondOrgPosition], [SecondOrgChiefName], [SecondOrgChiefPhone], [SecondOrgJoin], [SecondOrgDismissal], [Application_Status]) VALUES (@Nationality, @LPRCR, @LastName, @FirstName, @DOB, @Sex, @PurposeOfVisit, @CategoryAndTypeOfVisa, @NumberOfEntries, @DateOfEntryBD, @DateOfDepartureBD, @PassportNumber, @PassportIssuedBy, @DateOfPassportIssue, @DateOfPassportExpiry, @TypeOfPassport, @PermanentAddress, @Phone, @Email, @HostOrganizationBD, @Itinerary, @MedicalInsurance, @MedicalInsuranceName, @MedicalInsuranceNumber, @Sponsor, @MaritialStatus, @SpouseName, @SpouseDOB, @SpouseBirthPlace, @FatherName, @MotherName, @IssuedBDVisa, @LostPassport, @VisitedCountries, @CountriesIssuedPassport, @FirstOrgName, @FirstOrgAddress, @FirstOrgPosition, @FirstOrgChiefName, @FirstOrgChiefPhone, @FirstOrgJoin, @FirstOrgDismissal, @SecondOrgName, @SecondOrgAddress, @SecondOrgPosition, @SecondOrgChiefName, @SecondOrgChiefPhone, @SecondOrgJoin, @SecondOrgDismissal, @Application_Status)"
                    SelectCommand="SELECT * FROM [Applicant_Details]" UpdateCommand="UPDATE [Applicant_Details] SET [Nationality] = @Nationality, [LPRCR] = @LPRCR, [LastName] = @LastName, [FirstName] = @FirstName, [DOB] = @DOB, [Sex] = @Sex, [PurposeOfVisit] = @PurposeOfVisit, [CategoryAndTypeOfVisa] = @CategoryAndTypeOfVisa, [NumberOfEntries] = @NumberOfEntries, [DateOfEntryBD] = @DateOfEntryBD, [DateOfDepartureBD] = @DateOfDepartureBD, [PassportNumber] = @PassportNumber, [PassportIssuedBy] = @PassportIssuedBy, [DateOfPassportIssue] = @DateOfPassportIssue, [DateOfPassportExpiry] = @DateOfPassportExpiry, [TypeOfPassport] = @TypeOfPassport, [PermanentAddress] = @PermanentAddress, [Phone] = @Phone, [Email] = @Email, [HostOrganizationBD] = @HostOrganizationBD, [Itinerary] = @Itinerary, [MedicalInsurance] = @MedicalInsurance, [MedicalInsuranceName] = @MedicalInsuranceName, [MedicalInsuranceNumber] = @MedicalInsuranceNumber, [Sponsor] = @Sponsor, [MaritialStatus] = @MaritialStatus, [SpouseName] = @SpouseName, [SpouseDOB] = @SpouseDOB, [SpouseBirthPlace] = @SpouseBirthPlace, [FatherName] = @FatherName, [MotherName] = @MotherName, [IssuedBDVisa] = @IssuedBDVisa, [LostPassport] = @LostPassport, [VisitedCountries] = @VisitedCountries, [CountriesIssuedPassport] = @CountriesIssuedPassport, [FirstOrgName] = @FirstOrgName, [FirstOrgAddress] = @FirstOrgAddress, [FirstOrgPosition] = @FirstOrgPosition, [FirstOrgChiefName] = @FirstOrgChiefName, [FirstOrgChiefPhone] = @FirstOrgChiefPhone, [FirstOrgJoin] = @FirstOrgJoin, [FirstOrgDismissal] = @FirstOrgDismissal, [SecondOrgName] = @SecondOrgName, [SecondOrgAddress] = @SecondOrgAddress, [SecondOrgPosition] = @SecondOrgPosition, [SecondOrgChiefName] = @SecondOrgChiefName, [SecondOrgChiefPhone] = @SecondOrgChiefPhone, [SecondOrgJoin] = @SecondOrgJoin, [SecondOrgDismissal] = @SecondOrgDismissal, [Application_Status] = @Application_Status WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Nationality" Type="String" />
                        <asp:Parameter Name="LPRCR" Type="String" />
                        <asp:Parameter Name="LastName" Type="String" />
                        <asp:Parameter Name="FirstName" Type="String" />
                        <asp:Parameter Name="DOB" Type="String" />
                        <asp:Parameter Name="Sex" Type="String" />
                        <asp:Parameter Name="PurposeOfVisit" Type="String" />
                        <asp:Parameter Name="CategoryAndTypeOfVisa" Type="String" />
                        <asp:Parameter Name="NumberOfEntries" Type="String" />
                        <asp:Parameter Name="DateOfEntryBD" Type="String" />
                        <asp:Parameter Name="DateOfDepartureBD" Type="String" />
                        <asp:Parameter Name="PassportNumber" Type="String" />
                        <asp:Parameter Name="PassportIssuedBy" Type="String" />
                        <asp:Parameter Name="DateOfPassportIssue" Type="String" />
                        <asp:Parameter Name="DateOfPassportExpiry" Type="String" />
                        <asp:Parameter Name="TypeOfPassport" Type="String" />
                        <asp:Parameter Name="PermanentAddress" Type="String" />
                        <asp:Parameter Name="Phone" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="HostOrganizationBD" Type="String" />
                        <asp:Parameter Name="Itinerary" Type="String" />
                        <asp:Parameter Name="MedicalInsurance" Type="String" />
                        <asp:Parameter Name="MedicalInsuranceName" Type="String" />
                        <asp:Parameter Name="MedicalInsuranceNumber" Type="String" />
                        <asp:Parameter Name="Sponsor" Type="String" />
                        <asp:Parameter Name="MaritialStatus" Type="String" />
                        <asp:Parameter Name="SpouseName" Type="String" />
                        <asp:Parameter Name="SpouseDOB" Type="String" />
                        <asp:Parameter Name="SpouseBirthPlace" Type="String" />
                        <asp:Parameter Name="FatherName" Type="String" />
                        <asp:Parameter Name="MotherName" Type="String" />
                        <asp:Parameter Name="IssuedBDVisa" Type="String" />
                        <asp:Parameter Name="LostPassport" Type="String" />
                        <asp:Parameter Name="VisitedCountries" Type="String" />
                        <asp:Parameter Name="CountriesIssuedPassport" Type="String" />
                        <asp:Parameter Name="FirstOrgName" Type="String" />
                        <asp:Parameter Name="FirstOrgAddress" Type="String" />
                        <asp:Parameter Name="FirstOrgPosition" Type="String" />
                        <asp:Parameter Name="FirstOrgChiefName" Type="String" />
                        <asp:Parameter Name="FirstOrgChiefPhone" Type="String" />
                        <asp:Parameter Name="FirstOrgJoin" Type="String" />
                        <asp:Parameter Name="FirstOrgDismissal" Type="String" />
                        <asp:Parameter Name="SecondOrgName" Type="String" />
                        <asp:Parameter Name="SecondOrgAddress" Type="String" />
                        <asp:Parameter Name="SecondOrgPosition" Type="String" />
                        <asp:Parameter Name="SecondOrgChiefName" Type="String" />
                        <asp:Parameter Name="SecondOrgChiefPhone" Type="String" />
                        <asp:Parameter Name="SecondOrgJoin" Type="String" />
                        <asp:Parameter Name="SecondOrgDismissal" Type="String" />
                        <asp:Parameter Name="Application_Status" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Nationality" Type="String" />
                        <asp:Parameter Name="LPRCR" Type="String" />
                        <asp:Parameter Name="LastName" Type="String" />
                        <asp:Parameter Name="FirstName" Type="String" />
                        <asp:Parameter Name="DOB" Type="String" />
                        <asp:Parameter Name="Sex" Type="String" />
                        <asp:Parameter Name="PurposeOfVisit" Type="String" />
                        <asp:Parameter Name="CategoryAndTypeOfVisa" Type="String" />
                        <asp:Parameter Name="NumberOfEntries" Type="String" />
                        <asp:Parameter Name="DateOfEntryBD" Type="String" />
                        <asp:Parameter Name="DateOfDepartureBD" Type="String" />
                        <asp:Parameter Name="PassportNumber" Type="String" />
                        <asp:Parameter Name="PassportIssuedBy" Type="String" />
                        <asp:Parameter Name="DateOfPassportIssue" Type="String" />
                        <asp:Parameter Name="DateOfPassportExpiry" Type="String" />
                        <asp:Parameter Name="TypeOfPassport" Type="String" />
                        <asp:Parameter Name="PermanentAddress" Type="String" />
                        <asp:Parameter Name="Phone" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="HostOrganizationBD" Type="String" />
                        <asp:Parameter Name="Itinerary" Type="String" />
                        <asp:Parameter Name="MedicalInsurance" Type="String" />
                        <asp:Parameter Name="MedicalInsuranceName" Type="String" />
                        <asp:Parameter Name="MedicalInsuranceNumber" Type="String" />
                        <asp:Parameter Name="Sponsor" Type="String" />
                        <asp:Parameter Name="MaritialStatus" Type="String" />
                        <asp:Parameter Name="SpouseName" Type="String" />
                        <asp:Parameter Name="SpouseDOB" Type="String" />
                        <asp:Parameter Name="SpouseBirthPlace" Type="String" />
                        <asp:Parameter Name="FatherName" Type="String" />
                        <asp:Parameter Name="MotherName" Type="String" />
                        <asp:Parameter Name="IssuedBDVisa" Type="String" />
                        <asp:Parameter Name="LostPassport" Type="String" />
                        <asp:Parameter Name="VisitedCountries" Type="String" />
                        <asp:Parameter Name="CountriesIssuedPassport" Type="String" />
                        <asp:Parameter Name="FirstOrgName" Type="String" />
                        <asp:Parameter Name="FirstOrgAddress" Type="String" />
                        <asp:Parameter Name="FirstOrgPosition" Type="String" />
                        <asp:Parameter Name="FirstOrgChiefName" Type="String" />
                        <asp:Parameter Name="FirstOrgChiefPhone" Type="String" />
                        <asp:Parameter Name="FirstOrgJoin" Type="String" />
                        <asp:Parameter Name="FirstOrgDismissal" Type="String" />
                        <asp:Parameter Name="SecondOrgName" Type="String" />
                        <asp:Parameter Name="SecondOrgAddress" Type="String" />
                        <asp:Parameter Name="SecondOrgPosition" Type="String" />
                        <asp:Parameter Name="SecondOrgChiefName" Type="String" />
                        <asp:Parameter Name="SecondOrgChiefPhone" Type="String" />
                        <asp:Parameter Name="SecondOrgJoin" Type="String" />
                        <asp:Parameter Name="SecondOrgDismissal" Type="String" />
                        <asp:Parameter Name="Application_Status" Type="String" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />

            </asp:Content>