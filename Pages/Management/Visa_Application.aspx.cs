using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Collections;
using System.Data.SqlClient;
using System.Configuration;


namespace Project_VAMS.Pages.Management
{
    public partial class Visa_Application : System.Web.UI.Page
    {
        string strConnString = ConfigurationManager.ConnectionStrings["Project_VAMSConnectionString"].ConnectionString;
        SqlCommand com;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            ddlNationality.SelectedValue = string.Empty;
            txtLPRCR.Text = string.Empty;
            ddlPurposeVisit.SelectedValue = string.Empty;
            ddlVisaCategory.SelectedValue = string.Empty;
            txtLName.Text = string.Empty;
            rdblEntry.SelectedIndex = -1;
            txtFMName.Text = string.Empty;
            txtDateEntry.Text = string.Empty;
            txtDateDept.Text = string.Empty;
            txtDOB.Text = string.Empty;
            rdblSex.SelectedIndex = -1;
            txtPassport.Text = string.Empty;
            txtPassportIssue.Text = string.Empty;
            txtDatePassportIssue.Text = string.Empty;
            txtDatePassportValid.Text = string.Empty;
            rdblPassportType.SelectedValue = string.Empty;
            txtAddress.Text = string.Empty;
            txtPhone.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtHost.Text = string.Empty;
            txtItinerary.Text = string.Empty;
            rdblInsurance.SelectedValue = string.Empty;
            txtInsuranceName.Text = string.Empty;
            txtInsuranceNumber.Text = string.Empty;
            txtSponsor.Text = string.Empty;
            rdblMaritalStatus.SelectedValue = string.Empty;
            txtSpouse.Text = string.Empty;
            txtSpouseDOB.Text = string.Empty;
            txtSpouseBirthPlace.Text = string.Empty;
            txtFather.Text = string.Empty;
            txtMother.Text = string.Empty;
            txtBDVisa.Text = string.Empty;
            rdblPassportLost.SelectedValue = string.Empty;
            txtCountriesVisited.Text = string.Empty;
            txtCountriesIssuedPassport.Text = string.Empty;
            txtWorkExp1Name.Text = string.Empty;
            txtWorkExp1Address.Text = string.Empty;
            txtWorkExp1Position.Text = string.Empty;
            txtWorkExp1Chief.Text = string.Empty;
            txtWorkExp1ChiefPhn.Text = string.Empty;
            txtWorkExp1Join.Text = string.Empty;
            txtWorkExp1Dismissal.Text = string.Empty;
            txtWorkExp2Name.Text = string.Empty;
            txtWorkExp2Address.Text = string.Empty;
            txtWorkExp2Position.Text = string.Empty;
            txtWorkExp2Chief.Text = string.Empty;
            txtWorkExp2ChiefPhn.Text = string.Empty;
            txtWorkExp2Join.Text = string.Empty;
            txtWorkExp2Dismissal.Text = string.Empty;

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strConnString);
            com = new SqlCommand();
            com.Connection = con;
            com.CommandType = CommandType.Text;
            com.CommandText = "Insert into Applicant_Details values(@Nationality,@LPRCR,@LastName,@FirstName,@DOB,@Sex,@PurposeOfVisit,@CategoryAndTypeOfVisa,@NumberOfEntries,@DateOfEntryBD,@DateOfDepartureBD,@PassportNumber,@PassportIssuedBy,@DateOfPassportIssue,@DateOfPassportExpiry,@TypeOfPassport,@PermanentAddress,@Phone,@Email,@HostOrganizationBD,@Itinerary,@MedicalInsurance,@MedicalInsuranceName,@MedicalInsuranceNumber,@Sponsor,@MaritalStatus,@SpouseName,@SpouseDOB,@SpouseBirthPlace,@FatherName,@MotherName,@IssuedBDVisa,@LostPassport,@VisitedCountries,@CountriesIssuedPassport,@FirstOrgName,@FirstOrgAddress,@FirstOrgPosition,@FirstOrgChiefName,@FirstOrgChiefPhone,@FirstOrgJoin,@FirstOrgDismissal,@SecondOrgName,@SecondOrgAddress,@SecondOrgPosition,@SecondOrgChiefName,@SecondOrgChiefPhone,@SecondOrgJoin,@SecondOrgDismissal,@Application_Status)";
            com.Parameters.Clear();

            com.Parameters.AddWithValue("@Nationality", ddlNationality.SelectedValue);
            com.Parameters.AddWithValue("@LPRCR", txtLPRCR.Text);
            com.Parameters.AddWithValue("@LastName", txtLName.Text);
            com.Parameters.AddWithValue("@FirstName", txtFMName.Text);
            com.Parameters.AddWithValue("@DOB", txtDOB.Text);
            com.Parameters.AddWithValue("@Sex", rdblSex.SelectedValue);
            com.Parameters.AddWithValue("@PurposeOfVisit", ddlPurposeVisit.SelectedValue);
            com.Parameters.AddWithValue("@CategoryAndTypeOfVisa", ddlVisaCategory.SelectedValue);
            com.Parameters.AddWithValue("@NumberOfEntries", rdblEntry.SelectedValue);
            com.Parameters.AddWithValue("@DateOfEntryBD", txtDateEntry.Text);
            com.Parameters.AddWithValue("@DateOfDepartureBD", txtDateDept.Text);
            com.Parameters.AddWithValue("@PassportNumber", txtPassport.Text);
            com.Parameters.AddWithValue("@PassportIssuedBy", txtPassportIssue.Text);
            com.Parameters.AddWithValue("@DateOfPassportIssue", txtDatePassportIssue.Text);
            com.Parameters.AddWithValue("@DateOfPassportExpiry", txtDatePassportValid.Text);
            com.Parameters.AddWithValue("@TypeOfPassport", rdblPassportType.SelectedValue);
            com.Parameters.AddWithValue("@PermanentAddress", txtAddress.Text);
            com.Parameters.AddWithValue("@Phone", txtPhone.Text);
            com.Parameters.AddWithValue("@Email", txtEmail.Text);
            com.Parameters.AddWithValue("@HostOrganizationBD", txtHost.Text);
            com.Parameters.AddWithValue("@Itinerary", txtItinerary.Text);
            com.Parameters.AddWithValue("@MedicalInsurance", rdblInsurance.SelectedValue);
            com.Parameters.AddWithValue("@MedicalInsuranceName", txtInsuranceName.Text);
            com.Parameters.AddWithValue("@MedicalInsuranceNumber", txtInsuranceNumber.Text);
            com.Parameters.AddWithValue("@Sponsor", txtSponsor.Text);
            com.Parameters.AddWithValue("@MaritalStatus", rdblMaritalStatus.SelectedValue);
            com.Parameters.AddWithValue("@SpouseName", txtSpouse.Text);
            com.Parameters.AddWithValue("@SpouseDOB", txtSpouseDOB.Text);
            com.Parameters.AddWithValue("@SpouseBirthPlace", txtSpouseBirthPlace.Text);
            com.Parameters.AddWithValue("@FatherName", txtFather.Text);
            com.Parameters.AddWithValue("@MotherName", txtMother.Text);
            com.Parameters.AddWithValue("@IssuedBDVisa", txtBDVisa.Text);
            com.Parameters.AddWithValue("@LostPassport", rdblPassportLost.SelectedValue);
            com.Parameters.AddWithValue("@VisitedCountries", txtCountriesVisited.Text);
            com.Parameters.AddWithValue("@CountriesIssuedPassport", txtCountriesIssuedPassport.Text);
            com.Parameters.AddWithValue("@FirstOrgName", txtWorkExp1Name.Text);
            com.Parameters.AddWithValue("@FirstOrgAddress", txtWorkExp1Address.Text);
            com.Parameters.AddWithValue("@FirstOrgPosition", txtWorkExp1Position.Text);
            com.Parameters.AddWithValue("@FirstOrgChiefName", txtWorkExp1Chief.Text);
            com.Parameters.AddWithValue("@FirstOrgChiefPhone", txtWorkExp1ChiefPhn.Text);
            com.Parameters.AddWithValue("@FirstOrgJoin", txtWorkExp1Join.Text);
            com.Parameters.AddWithValue("@FirstOrgDismissal", txtWorkExp1Dismissal.Text);
            com.Parameters.AddWithValue("@SecondOrgName", txtWorkExp2Name.Text);
            com.Parameters.AddWithValue("@SecondOrgAddress", txtWorkExp2Address.Text);
            com.Parameters.AddWithValue("@SecondOrgPosition", txtWorkExp2Position.Text);
            com.Parameters.AddWithValue("@SecondOrgChiefName", txtWorkExp2Chief.Text);
            com.Parameters.AddWithValue("@SecondOrgChiefPhone", txtWorkExp2ChiefPhn.Text);
            com.Parameters.AddWithValue("@SecondOrgJoin", txtWorkExp2Join.Text);
            com.Parameters.AddWithValue("@SecondOrgDismissal", txtWorkExp2Dismissal.Text);
            com.Parameters.AddWithValue("@Application_Status", txtApplication_Status.Text);

            if (con.State == ConnectionState.Closed)
                con.Open();
            com.ExecuteNonQuery();
            con.Close();
            clear();

        }
        private void clear()
        {
            ddlNationality.SelectedValue = string.Empty;
            txtLPRCR.Text = string.Empty;
            ddlPurposeVisit.SelectedValue = string.Empty;
            ddlVisaCategory.SelectedValue = string.Empty;
            txtLName.Text = string.Empty;
            rdblEntry.SelectedValue = string.Empty;
            txtFMName.Text = string.Empty;
            txtDateEntry.Text = string.Empty;
            txtDateDept.Text = string.Empty;
            txtDOB.Text = string.Empty;
            rdblSex.SelectedValue = string.Empty;
            txtPassport.Text = string.Empty;
            txtPassportIssue.Text = string.Empty;
            txtDatePassportIssue.Text = string.Empty;
            txtDatePassportValid.Text = string.Empty;
            rdblPassportType.SelectedValue = string.Empty;
            txtAddress.Text = string.Empty;
            txtPhone.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtHost.Text = string.Empty;
            txtItinerary.Text = string.Empty;
            rdblInsurance.SelectedValue = string.Empty;
            txtInsuranceName.Text = string.Empty;
            txtInsuranceNumber.Text = string.Empty;
            txtSponsor.Text = string.Empty;
            rdblMaritalStatus.SelectedValue = string.Empty;
            txtSpouse.Text = string.Empty;
            txtSpouseDOB.Text = string.Empty;
            txtSpouseBirthPlace.Text = string.Empty;
            txtFather.Text = string.Empty;
            txtMother.Text = string.Empty;
            txtBDVisa.Text = string.Empty;
            rdblPassportLost.SelectedValue = string.Empty;
            txtCountriesVisited.Text = string.Empty;
            txtCountriesIssuedPassport.Text = string.Empty;
            txtWorkExp1Name.Text = string.Empty;
            txtWorkExp1Address.Text = string.Empty;
            txtWorkExp1Position.Text = string.Empty;
            txtWorkExp1Chief.Text = string.Empty;
            txtWorkExp1ChiefPhn.Text = string.Empty;
            txtWorkExp1Join.Text = string.Empty;
            txtWorkExp1Dismissal.Text = string.Empty;
            txtWorkExp2Name.Text = string.Empty;
            txtWorkExp2Address.Text = string.Empty;
            txtWorkExp2Position.Text = string.Empty;
            txtWorkExp2Chief.Text = string.Empty;
            txtWorkExp2ChiefPhn.Text = string.Empty;
            txtWorkExp2Join.Text = string.Empty;
            txtWorkExp2Dismissal.Text = string.Empty;

        }
    }
}