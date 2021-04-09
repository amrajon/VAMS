<%@ Page Title="" Language="C#" MasterPageFile="~/ApplicantMasterPage.Master" AutoEventWireup="true" UnobtrusiveValidationMode="none" CodeBehind="Visa_Application.aspx.cs" Inherits="Project_VAMS.Pages.Management.Visa_Application" %>

    <%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
        <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

            <script type="text/javascript">
                function CheckDateTodayForward(sender, args) {
                    if (sender._selectedDate < new Date()) {
                        alert("You cannot select a day earlier than today!");
                        sender._selectedDate = new Date();
                        // set the date back to the current date
                        sender._textbox.set_Value(sender._selectedDate.format(sender._format))
                    }
                }
            </script>

            <script type="text/javascript">
                function CheckDateTodayBackward(sender, args) {
                    if (sender._selectedDate > new Date()) {
                        alert("You cannot select a day later than today!");
                        sender._selectedDate = new Date();
                        // set the date back to the current date
                        sender._textbox.set_Value(sender._selectedDate.format(sender._format))
                    }
                }
            </script>

            <div>
                <asp:Table runat="server">
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server">
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>

                <asp:Table ID="ApplicationFormTable" runat="server" BackColor="#CCCCCC" Font-Names="Calibri" BorderColor="White" BorderWidth="1px" ForeColor="Black" GridLines="Both" BorderStyle="Solid" HorizontalAlign="Center" Width="1050px" Font-Size="14px">
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server" ColumnSpan="1" Font-Bold="true" HorizontalAlign="Center" Font-Size="19pt">VISA APPLICATION</asp:TableCell>
                        <asp:TableCell runat="server" ColumnSpan="3" HorizontalAlign="Center">
                            <asp:Label ID="lblDHC" runat="server" Font-Bold="true" Font-Size="16pt" Text="EMBASSY OF THE PEOPLE'S REPUBLIC OF BANGLADESH"></asp:Label>
                            <br /> Kaiserin-Augusta-Allee 111,<br /> 10553 Berlin, Germany<br /> Tel: +49 30 3989 7531<br /> E-mail: info.berlin@mofa.gov.bd
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server" ColumnSpan="4" HorizontalAlign="Justify"><br /> I declare that all data given in this form is completed and true. I am aware that any false statements will lead to my application being rejected or to the annulment of a visa already granted and may also render me liable
                            to prosecution under Bangladeshi law. I undertake to leave the Bangladesh upon the expiry of the visa If granted. I understand that possession of a visa does not entitle its bearer to enter Bangladesh automatically. I will
                            not seek compensation if I am refused to enter Bangladesh.
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server" ColumnSpan="4" Font-Bold="true">** - not to be filled by the holders of diplomatic and official passports</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server">
                            <asp:Label ID="lblAppllication_Status" Font-Bold="true" runat="server" Text="Application type"></asp:Label><br />
                            <asp:TextBox ID="txtApplication_Status" Text="New" Enabled="false" Width="120" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server" ColumnSpan="2" HorizontalAlign="Justify">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="ddlNationality" runat="server" ErrorMessage="Please select your Nationality" ForeColor="Red"></asp:RequiredFieldValidator><br />
                            <asp:Label ID="lblNationality" runat="server" Font-Bold="true" Text="1. Nationality"></asp:Label>
                            <br />
                            <asp:DropDownList ID="ddlNationality" runat="server" Width="300">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem>Afghanistan</asp:ListItem>
                                <asp:ListItem>Albania</asp:ListItem>
                                <asp:ListItem>Algeria</asp:ListItem>
                                <asp:ListItem>Andorra</asp:ListItem>
                                <asp:ListItem>Angola</asp:ListItem>
                                <asp:ListItem>Antigua and Barbuda</asp:ListItem>
                                <asp:ListItem>Argentina</asp:ListItem>
                                <asp:ListItem>Armenia</asp:ListItem>
                                <asp:ListItem>Aruba</asp:ListItem>
                                <asp:ListItem>Australia</asp:ListItem>
                                <asp:ListItem>Austria</asp:ListItem>
                                <asp:ListItem>Azerbaijan</asp:ListItem>
                                <asp:ListItem>Bahamas (The Bahamas)</asp:ListItem>
                                <asp:ListItem>Bahrain</asp:ListItem>
                                <asp:ListItem>Barbados</asp:ListItem>
                                <asp:ListItem>Belarus</asp:ListItem>
                                <asp:ListItem>Belgium</asp:ListItem>
                                <asp:ListItem>Belize</asp:ListItem>
                                <asp:ListItem>Benin</asp:ListItem>
                                <asp:ListItem>Bhutan</asp:ListItem>
                                <asp:ListItem>Bolivia</asp:ListItem>
                                <asp:ListItem>Bosnia and Herzegovina</asp:ListItem>
                                <asp:ListItem>Botswana</asp:ListItem>
                                <asp:ListItem>Brazil</asp:ListItem>
                                <asp:ListItem>Brunei</asp:ListItem>
                                <asp:ListItem>Bulgaria</asp:ListItem>
                                <asp:ListItem>Burkina Faso</asp:ListItem>
                                <asp:ListItem>Burundi</asp:ListItem>
                                <asp:ListItem>Cabo Verde</asp:ListItem>
                                <asp:ListItem>Cambodia</asp:ListItem>
                                <asp:ListItem>Cameroon</asp:ListItem>
                                <asp:ListItem>Canada</asp:ListItem>
                                <asp:ListItem>Central African Republic (CAR)</asp:ListItem>
                                <asp:ListItem>Chad</asp:ListItem>
                                <asp:ListItem>Chile</asp:ListItem>
                                <asp:ListItem>China</asp:ListItem>
                                <asp:ListItem>Colombia</asp:ListItem>
                                <asp:ListItem>Comoros</asp:ListItem>
                                <asp:ListItem>Congo (Democratic Republic of the Congo)</asp:ListItem>
                                <asp:ListItem>Congo (Republic of the Congo)</asp:ListItem>
                                <asp:ListItem>Costa Rica</asp:ListItem>
                                <asp:ListItem>Cote d'Ivoire</asp:ListItem>
                                <asp:ListItem>Croatia</asp:ListItem>
                                <asp:ListItem>Cuba</asp:ListItem>
                                <asp:ListItem>Curacao</asp:ListItem>
                                <asp:ListItem>Cyprus</asp:ListItem>
                                <asp:ListItem>Czech Republic</asp:ListItem>
                                <asp:ListItem>Denmark</asp:ListItem>
                                <asp:ListItem>Djibouti</asp:ListItem>
                                <asp:ListItem>Dominica</asp:ListItem>
                                <asp:ListItem>Dominican Republic</asp:ListItem>
                                <asp:ListItem>Ecuador</asp:ListItem>
                                <asp:ListItem>Egypt</asp:ListItem>
                                <asp:ListItem>El Salvador</asp:ListItem>
                                <asp:ListItem>Equatorial Guinea</asp:ListItem>
                                <asp:ListItem>Eritrea</asp:ListItem>
                                <asp:ListItem>Estonia</asp:ListItem>
                                <asp:ListItem>Ethiopia</asp:ListItem>
                                <asp:ListItem>Fiji</asp:ListItem>
                                <asp:ListItem>Finland</asp:ListItem>
                                <asp:ListItem>France</asp:ListItem>
                                <asp:ListItem>Gabon</asp:ListItem>
                                <asp:ListItem>Gambia (The Gambia)</asp:ListItem>
                                <asp:ListItem>Georgia</asp:ListItem>
                                <asp:ListItem>Germany</asp:ListItem>
                                <asp:ListItem>Ghana</asp:ListItem>
                                <asp:ListItem>Greece</asp:ListItem>
                                <asp:ListItem>Grenada</asp:ListItem>
                                <asp:ListItem>Guatemala</asp:ListItem>
                                <asp:ListItem>Guinea</asp:ListItem>
                                <asp:ListItem>Guinea-Bissau</asp:ListItem>
                                <asp:ListItem>Guyana</asp:ListItem>
                                <asp:ListItem>Haiti</asp:ListItem>
                                <asp:ListItem>Honduras</asp:ListItem>
                                <asp:ListItem>Hong Kong</asp:ListItem>
                                <asp:ListItem>Hungary</asp:ListItem>
                                <asp:ListItem>Iceland</asp:ListItem>
                                <asp:ListItem>India</asp:ListItem>
                                <asp:ListItem>Indonesia</asp:ListItem>
                                <asp:ListItem>Iran</asp:ListItem>
                                <asp:ListItem>Iraq</asp:ListItem>
                                <asp:ListItem>Ireland</asp:ListItem>
                                <asp:ListItem>Israel</asp:ListItem>
                                <asp:ListItem>Italy</asp:ListItem>
                                <asp:ListItem>Jamaica</asp:ListItem>
                                <asp:ListItem>Japan</asp:ListItem>
                                <asp:ListItem>Jordan</asp:ListItem>
                                <asp:ListItem>Kazakhstan</asp:ListItem>
                                <asp:ListItem>Kenya</asp:ListItem>
                                <asp:ListItem>Kiribati</asp:ListItem>
                                <asp:ListItem>Kosovo</asp:ListItem>
                                <asp:ListItem>Kuwait</asp:ListItem>
                                <asp:ListItem>Kyrgyzstan</asp:ListItem>
                                <asp:ListItem>Laos</asp:ListItem>
                                <asp:ListItem>Latvia</asp:ListItem>
                                <asp:ListItem>Lebanon</asp:ListItem>
                                <asp:ListItem>Lesotho</asp:ListItem>
                                <asp:ListItem>Liberia</asp:ListItem>
                                <asp:ListItem>Libya</asp:ListItem>
                                <asp:ListItem>Liechtenstein</asp:ListItem>
                                <asp:ListItem>Lithuania</asp:ListItem>
                                <asp:ListItem>Luxembourg</asp:ListItem>
                                <asp:ListItem>Macau</asp:ListItem>
                                <asp:ListItem>Macedonia (FYROM)</asp:ListItem>
                                <asp:ListItem>Madagascar</asp:ListItem>
                                <asp:ListItem>Malawi</asp:ListItem>
                                <asp:ListItem>Malaysia</asp:ListItem>
                                <asp:ListItem>Maldives</asp:ListItem>
                                <asp:ListItem>Mali</asp:ListItem>
                                <asp:ListItem>Malta</asp:ListItem>
                                <asp:ListItem>Marshall Islands</asp:ListItem>
                                <asp:ListItem>Mauritania</asp:ListItem>
                                <asp:ListItem>Mauritius</asp:ListItem>
                                <asp:ListItem>Mexico</asp:ListItem>
                                <asp:ListItem>Micronesia</asp:ListItem>
                                <asp:ListItem>Moldova</asp:ListItem>
                                <asp:ListItem>Monaco</asp:ListItem>
                                <asp:ListItem>Mongolia</asp:ListItem>
                                <asp:ListItem>Montenegro</asp:ListItem>
                                <asp:ListItem>Morocco</asp:ListItem>
                                <asp:ListItem>Mozambique</asp:ListItem>
                                <asp:ListItem>Myanmar (Burma)</asp:ListItem>
                                <asp:ListItem>Namibia</asp:ListItem>
                                <asp:ListItem>Nauru</asp:ListItem>
                                <asp:ListItem>Nepal</asp:ListItem>
                                <asp:ListItem>Netherlands</asp:ListItem>
                                <asp:ListItem>New Zealand</asp:ListItem>
                                <asp:ListItem>Nicaragua</asp:ListItem>
                                <asp:ListItem>Niger</asp:ListItem>
                                <asp:ListItem>Nigeria</asp:ListItem>
                                <asp:ListItem>North Korea</asp:ListItem>
                                <asp:ListItem>Norway</asp:ListItem>
                                <asp:ListItem>Oman</asp:ListItem>
                                <asp:ListItem>Pakistan</asp:ListItem>
                                <asp:ListItem>Palau</asp:ListItem>
                                <asp:ListItem>Palestinian Territories</asp:ListItem>
                                <asp:ListItem>Panama</asp:ListItem>
                                <asp:ListItem>Papua New Guinea</asp:ListItem>
                                <asp:ListItem>Paraguay</asp:ListItem>
                                <asp:ListItem>Peru</asp:ListItem>
                                <asp:ListItem>Philippines</asp:ListItem>
                                <asp:ListItem>Poland</asp:ListItem>
                                <asp:ListItem>Portugal</asp:ListItem>
                                <asp:ListItem>Qatar</asp:ListItem>
                                <asp:ListItem>Romania</asp:ListItem>
                                <asp:ListItem>Russia</asp:ListItem>
                                <asp:ListItem>Rwanda</asp:ListItem>
                                <asp:ListItem>Saint Kitts and Nevis</asp:ListItem>
                                <asp:ListItem>Saint Lucia</asp:ListItem>
                                <asp:ListItem>Saint Vincent and the Grenadines</asp:ListItem>
                                <asp:ListItem>Samoa</asp:ListItem>
                                <asp:ListItem>San Marino</asp:ListItem>
                                <asp:ListItem>Sao Tome and Principe</asp:ListItem>
                                <asp:ListItem>Saudi Arabia</asp:ListItem>
                                <asp:ListItem>Senegal</asp:ListItem>
                                <asp:ListItem>Serbia</asp:ListItem>
                                <asp:ListItem>Seychelles</asp:ListItem>
                                <asp:ListItem>Sierra Leone</asp:ListItem>
                                <asp:ListItem>Singapore</asp:ListItem>
                                <asp:ListItem>Sint Maarten</asp:ListItem>
                                <asp:ListItem>Slovakia</asp:ListItem>
                                <asp:ListItem>Slovenia</asp:ListItem>
                                <asp:ListItem>Solomon Islands</asp:ListItem>
                                <asp:ListItem>Somalia</asp:ListItem>
                                <asp:ListItem>South Africa</asp:ListItem>
                                <asp:ListItem>South Korea</asp:ListItem>
                                <asp:ListItem>South Sudan</asp:ListItem>
                                <asp:ListItem>Spain</asp:ListItem>
                                <asp:ListItem>Sri Lanka</asp:ListItem>
                                <asp:ListItem>Sudan</asp:ListItem>
                                <asp:ListItem>Suriname</asp:ListItem>
                                <asp:ListItem>Swaziland</asp:ListItem>
                                <asp:ListItem>Sweden</asp:ListItem>
                                <asp:ListItem>Switzerland</asp:ListItem>
                                <asp:ListItem>Syria</asp:ListItem>
                                <asp:ListItem>Taiwan</asp:ListItem>
                                <asp:ListItem>Tajikistan</asp:ListItem>
                                <asp:ListItem>Tanzania</asp:ListItem>
                                <asp:ListItem>Thailand</asp:ListItem>
                                <asp:ListItem>Timor-Leste</asp:ListItem>
                                <asp:ListItem>Togo</asp:ListItem>
                                <asp:ListItem>Tonga</asp:ListItem>
                                <asp:ListItem>Trinidad and Tobago</asp:ListItem>
                                <asp:ListItem>Tunisia</asp:ListItem>
                                <asp:ListItem>Turkey</asp:ListItem>
                                <asp:ListItem>Turkmenistan</asp:ListItem>
                                <asp:ListItem>Tuvalu</asp:ListItem>
                                <asp:ListItem>Uganda</asp:ListItem>
                                <asp:ListItem>Ukraine</asp:ListItem>
                                <asp:ListItem>United Arab Emirates (UAE)</asp:ListItem>
                                <asp:ListItem>United Kingdom (UK)</asp:ListItem>
                                <asp:ListItem>United States of America (USA)</asp:ListItem>
                                <asp:ListItem>Uruguay</asp:ListItem>
                                <asp:ListItem>Uzbekistan</asp:ListItem>
                                <asp:ListItem>Vanuatu</asp:ListItem>
                                <asp:ListItem>Vatican City (Holy See)</asp:ListItem>
                                <asp:ListItem>Venezuela</asp:ListItem>
                                <asp:ListItem>Vietnam</asp:ListItem>
                                <asp:ListItem>Yemen</asp:ListItem>
                                <asp:ListItem>Zambia</asp:ListItem>
                                <asp:ListItem>Zimbabwe</asp:ListItem>
                            </asp:DropDownList>
                            <br />
                            <asp:Label ID="lblLPRCR" runat="server" Text="If you formerly had LPR (Lawful permanent resident) or CR
                            (Conditional resident) or Bangladeshi citizenship, Please indicate when and why you lost it."></asp:Label>
                            <br />
                            <asp:TextBox ID="txtLPRCR" runat="server" Width="500" TextMode="MultiLine"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell runat="server" ColumnSpan="2">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddlPurposeVisit" Font-Size="Large" ErrorMessage="Please Select your purpose of visit" ForeColor="Red"></asp:RequiredFieldValidator><br />
                            <asp:Label ID="lblPurposeVisit" runat="server" Font-Bold="true" Text="6. Purpose of visit"></asp:Label>
                            <br />
                            <asp:DropDownList ID="ddlPurposeVisit" runat="server" Width="300">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem>Tourism</asp:ListItem>
                                <asp:ListItem>Transit</asp:ListItem>
                                <asp:ListItem>Seminar/Conference/Workshop</asp:ListItem>
                                <asp:ListItem>Business</asp:ListItem>
                                <asp:ListItem>Official (Govt./Diplomatic)</asp:ListItem>
                                <asp:ListItem>Investment</asp:ListItem>
                                <asp:ListItem>Employment in Pvt. Organizations</asp:ListItem>
                                <asp:ListItem>Employment in UN/International Organizations</asp:ListItem>
                                <asp:ListItem>Cultural/Scientific Program</asp:ListItem>
                                <asp:ListItem>Experts(s)/ Workers(s)/ Teacher(s)/ Representative(s) in Industrial/Educational/ Training / Artistic Activities etc.</asp:ListItem>
                                <asp:ListItem>Govt. Contractual Employment</asp:ListItem>
                                <asp:ListItem>Sports</asp:ListItem>
                                <asp:ListItem>NGO Works</asp:ListItem>
                                <asp:ListItem>Missionary</asp:ListItem>
                                <asp:ListItem>Study</asp:ListItem>
                                <asp:ListItem>Research</asp:ListItem>
                                <asp:ListItem>Tablig</asp:ListItem>
                                <asp:ListItem>Journalist/Media (Print & Electronic)</asp:ListItem>
                            </asp:DropDownList>
                            <br />
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="ddlVisaCategory" runat="server" ErrorMessage="Please select Visa category & Type" ForeColor="Red"></asp:RequiredFieldValidator><br />
                            <asp:Label ID="lblVisaCategory" runat="server" Font-Bold="true" Text="7. Category and type of visa"></asp:Label>
                            <br />
                            <asp:DropDownList ID="ddlVisaCategory" runat="server" Width="300">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem>Tourist</asp:ListItem>
                                <asp:ListItem>Student</asp:ListItem>
                                <asp:ListItem>Business</asp:ListItem>
                                <asp:ListItem>Professional / Expert </asp:ListItem>
                                <asp:ListItem>Diplomatic / Other Embassy Officials</asp:ListItem>
                                <asp:ListItem>Conference</asp:ListItem>
                                <asp:ListItem>Government Delegates</asp:ListItem>
                                <asp:ListItem>UN / International Organizations</asp:ListItem>
                                <asp:ListItem>Investor</asp:ListItem>
                                <asp:ListItem>Work / Employment</asp:ListItem>
                                <asp:ListItem>NGO workers’</asp:ListItem>
                                <asp:ListItem>Research</asp:ListItem>
                                <asp:ListItem>Tablig Jamaat</asp:ListItem>
                                <asp:ListItem>Family members of Bangladeshi National</asp:ListItem>
                            </asp:DropDownList>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server" ColumnSpan="2">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtLName" runat="server" ErrorMessage="Please enter your first name!" ForeColor="Red"></asp:RequiredFieldValidator><br />
                            <asp:Label ID="lblLName" runat="server" Font-Bold="true" Text="2. Last name"></asp:Label>
                            (as in passport)
                            <br />
                            <asp:TextBox ID="txtLName" runat="server" Width="300"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell runat="server" ColumnSpan="2">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ForeColor="Red" ControlToValidate="rdblEntry" runat="server" ErrorMessage="Please select times of entry"></asp:RequiredFieldValidator><br />
                            <asp:Label ID="lblEntries" runat="server" Font-Bold="true" Text="8. Number of entries"></asp:Label>
                            <br />
                            <asp:RadioButtonList ID="rdblEntry" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Value="Single Entry">Single Entry</asp:ListItem>
                                <asp:ListItem Value="Double Entry">Double Entry</asp:ListItem>
                                <asp:ListItem Value="Triple Entry">Triple Entry</asp:ListItem>
                                <asp:ListItem Value="Multiple Entry">Multiple Entry</asp:ListItem>
                            </asp:RadioButtonList>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server" ColumnSpan="2">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="txtFMName" runat="server" ErrorMessage="Please enter your first & middle  name" ForeColor="Red"></asp:RequiredFieldValidator><br /> P
                            <asp:Label ID="lblFMName" runat="server" Font-Bold="true" Text="3. First and middle names"></asp:Label>
                            (as in passport)
                            <br />
                            <asp:TextBox ID="txtFMName" runat="server" Width="500"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell runat="server" ColumnSpan="1" RowSpan="2">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please select the date of Entry!" ForeColor="Red" ControlToValidate="txtDateEntry"></asp:RequiredFieldValidator><br />
                            <asp:Label ID="lblDateEntry" runat="server" Font-Bold="true" Text="9. Date of entry in Bangladesh"></asp:Label>
                            <br />
                            <asp:TextBox ID="txtDateEntry" runat="server" Width="120"></asp:TextBox>
                            <br /> dd-mm-yyyy
                            <br />
                            <asp:CompareValidator ID="CompareValidator3" Type="Date" runat="server" Operator="LessThanEqual" ControlToValidate="txtDateEntry" ControlToCompare="txtDatePassportValid" ForeColor="Red" Font-Bold="true" ErrorMessage="It couldn't be perform due to passport validity!"></asp:CompareValidator>
                            <ajaxToolkit:CalendarExtender ID="txtDateEntry_CalendarExtender" runat="server" BehaviorID="txtDateEntry_CalendarExtender" FirstDayOfWeek="Monday" TargetControlID="txtDateEntry" TodaysDateFormat="dd MMMM, yyyy" Format="dd-MM-yyyy" OnClientDateSelectionChanged="CheckDateTodayForward"
                            />
                        </asp:TableCell>
                        <asp:TableCell runat="server" ColumnSpan="1" RowSpan="2">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Please select the date of departure from Bangladesh" ForeColor="Red" ControlToValidate="txtDateDept"></asp:RequiredFieldValidator><br />
                            <asp:Label ID="lblDateDept" runat="server" Font-Bold="true" Text="10. Date of departure from Bangladesh"></asp:Label>
                            <br />
                            <asp:TextBox ID="txtDateDept" runat="server" Width="120"></asp:TextBox>
                            <br /> dd-mm-yyyy
                            <ajaxToolkit:CalendarExtender ID="txtDateDept_CalendarExtender" runat="server" BehaviorID="txtDateDept_CalendarExtender" FirstDayOfWeek="Monday" TargetControlID="txtDateDept" TodaysDateFormat="dd MMMM, yyyy" Format="dd-MM-yyyy" OnClientDateSelectionChanged="CheckDateTodayForward"></ajaxToolkit:CalendarExtender>
                            <br />
                            <asp:CompareValidator ID="CompareValidator1" ControlToValidate="txtDateDept" ControlToCompare="txtDateEntry" Display="Dynamic" Operator="GreaterThanEqual" runat="server" Type="Date" ErrorMessage="The Date is not correct compare to Entry Date!" Font-Bold="true"
                                ForeColor="Red"></asp:CompareValidator>
                            <br />
                            <asp:CompareValidator ID="CompareValidator4" runat="server" Operator="LessThanEqual" ControlToValidate="txtDateDept" Display="Dynamic" Type="Date" ControlToCompare="txtDatePassportValid" ForeColor="Red" Font-Bold="true" ErrorMessage="It couldn't be perform due to passport validity!"></asp:CompareValidator>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" ControlToValidate="txtDOB" runat="server" ForeColor="Red" ErrorMessage="Please select your Date of Birth"></asp:RequiredFieldValidator><br />
                            <asp:Label ID="lblDOB" runat="server" Font-Bold="true" Text="4. Date of birth:"></asp:Label>
                            <br />
                            <asp:TextBox ID="txtDOB" runat="server" Width="120"></asp:TextBox>
                            <br /> dd-mm-yyyy
                            <ajaxToolkit:CalendarExtender ID="txtDOB_CalendarExtender" runat="server" BehaviorID="txtDOB_CalendarExtender" FirstDayOfWeek="Monday" TargetControlID="txtDOB" TodaysDateFormat="dd MMMM, yyyy" Format="dd-MM-yyyy" OnClientDateSelectionChanged="CheckDateTodayBackward"></ajaxToolkit:CalendarExtender>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ControlToValidate="rdblSex" ForeColor="Red" runat="server" ErrorMessage="Please select your gender"></asp:RequiredFieldValidator><br />
                            <asp:Label ID="lblSex" runat="server" Font-Bold="true" Text="5. Sex"></asp:Label>
                            <br />
                            <asp:RadioButtonList ID="rdblSex" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Value="Male">Male</asp:ListItem>
                                <asp:ListItem Value="Female">Female</asp:ListItem>
                            </asp:RadioButtonList>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" ControlToValidate="txtPassport" runat="server" ErrorMessage="Please enter your Passport Number!" ForeColor="Red"></asp:RequiredFieldValidator><br />
                            <asp:Label ID="lblPassport" runat="server" Font-Bold="true" Text="11. Passport Number"></asp:Label>
                            <br />
                            <asp:TextBox ID="txtPassport" runat="server" Width="200"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" ControlToValidate="txtPassportIssue" runat="server" ErrorMessage="Please enter who issued your Passport" ForeColor="Red"></asp:RequiredFieldValidator><br />
                            <asp:Label ID="lblPassportIssue" runat="server" Font-Bold="true" Text="12. Passport issued by"></asp:Label>
                            <br />
                            <asp:TextBox ID="txtPassportIssue" runat="server" Width="270"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" ControlToValidate="txtDatePassportIssue" runat="server" ErrorMessage="Please enter your Passport issue date" ForeColor="Red"></asp:RequiredFieldValidator><br />
                            <asp:Label ID="lblDatePassportIssue" runat="server" Font-Bold="true" Text="13. Date of passport issue"></asp:Label>
                            <br />
                            <asp:TextBox ID="txtDatePassportIssue" runat="server" Width="120"></asp:TextBox>
                            <br /> dd-mm-yyyy
                            <ajaxToolkit:CalendarExtender ID="txtDatePassportIssue_CalendarExtender" runat="server" BehaviorID="txtDatePassportIssue_CalendarExtender" FirstDayOfWeek="Monday" TargetControlID="txtDatePassportIssue" TodaysDateFormat="dd MMMM, yyyy" Format="dd-MM-yyyy"
                                OnClientDateSelectionChanged="CheckDateTodayBackward"></ajaxToolkit:CalendarExtender>
                            <br />
                            <asp:CompareValidator ID="CompareValidator9" runat="server" Type="Date" Operator="GreaterThan" ControlToValidate="txtDatePassportIssue" ControlToCompare="txtDOB" ForeColor="Red" Font-Bold="true" ErrorMessage="Passport must be issue after you born!"></asp:CompareValidator>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" ControlToValidate="txtDatePassportValid" runat="server" ErrorMessage="Please enter your Passport Valid until!" ForeColor="Red"></asp:RequiredFieldValidator><br />
                            <asp:Label ID="lblDatePassportValid" runat="server" Font-Bold="true" Text="14. Passport valid until"></asp:Label>
                            <br />
                            <asp:TextBox ID="txtDatePassportValid" runat="server" Width="120"></asp:TextBox>
                            <br /> dd-mm-yyyy
                            <br />
                            <asp:CompareValidator ID="CompareValidator2" ControlToValidate="txtDatePassportValid" ControlToCompare="txtDatePassportIssue" Operator="GreaterThan" runat="server" Type="Date" ErrorMessage="The Date is not correct compare to Issued Date!" Font-Bold="true"
                                ForeColor="Red"></asp:CompareValidator>
                            <ajaxToolkit:CalendarExtender ID="txtDatePassportValid_CalendarExtender" runat="server" BehaviorID="txtDatePassportValid_CalendarExtender" FirstDayOfWeek="Monday" TargetControlID="txtDatePassportValid" TodaysDateFormat="dd MMMM, yyyy" Format="dd-MM-yyyy"
                                OnClientDateSelectionChanged="CheckDateTodayForward"></ajaxToolkit:CalendarExtender>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server" ColumnSpan="4">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" ControlToValidate="rdblPassportType" runat="server" ErrorMessage="Please enter your Passport type!" ForeColor="Red"></asp:RequiredFieldValidator><br />
                            <asp:Label ID="lblTypePassport" runat="server" Font-Bold="true" Text="15. Type of passport"></asp:Label>
                            <br />
                            <asp:RadioButtonList ID="rdblPassportType" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Value="Diplomatic">Diplomatic</asp:ListItem>
                                <asp:ListItem Value="Official">Official</asp:ListItem>
                                <asp:ListItem Value="Tourist">Tourist</asp:ListItem>
                                <asp:ListItem Value="Service">Service</asp:ListItem>
                                <asp:ListItem Value="Ordinary">Ordinary</asp:ListItem>
                                <asp:ListItem Value="Special">Special</asp:ListItem>
                            </asp:RadioButtonList>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server" ColumnSpan="2">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ErrorMessage="Please enter your address!" ForeColor="Red" ControlToValidate="txtAddress"></asp:RequiredFieldValidator><br />
                            <asp:Label ID="lblAddress" runat="server" Font-Bold="true" Text="16. Your permanent address"></asp:Label>
                            <br />
                            <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Width="500"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell runat="server" ColumnSpan="1">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ErrorMessage="Please enter your phone number!" ForeColor="Red" ControlToValidate="txtPhone"></asp:RequiredFieldValidator><br />
                            <asp:Label ID="lblPhone" runat="server" Font-Bold="true" Text="17. Your phone number"></asp:Label>
                            <br />
                            <br />
                            <asp:TextBox ID="txtPhone" Width="200" runat="server" TextMode="Phone"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell runat="server" ColumnSpan="1">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ErrorMessage="Please enter your email address!" ForeColor="Red" ControlToValidate="txtEmail"></asp:RequiredFieldValidator><br />
                            <asp:Label ID="lblEmal" runat="server" Font-Bold="true" Text="18. Your contact e-mail address"></asp:Label>
                            <br />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Email!" ForeColor="Red" ControlToValidate="txtEmail" ValidationExpression="^[\w-\.]{1,}\@([\da-zA-Z-]{1,}\.){1,}[\da-zA-Z-]{2,6}$"></asp:RegularExpressionValidator>
                            <asp:TextBox ID="txtEmail" Width="300" runat="server" TextMode="Email"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server" ColumnSpan="4">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ErrorMessage="Please enter who will be your host in Bangladesh" ForeColor="Red" ControlToValidate="txtHost"></asp:RequiredFieldValidator><br />
                            <asp:Label ID="lblHost" runat="server" Font-Bold="true" Text="19. Bangladeshi institution or organization to be visited?"></asp:Label>
                            (for tourists - name and reference number of the host tourist company, for businessmen - name of the host organization and town, for private persons - last name, first name, middle names and home address of the host)<br />
                            <asp:TextBox ID="txtHost" runat="server" Width="98%" TextMode="MultiLine"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server" ColumnSpan="4">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ErrorMessage="Please enter where (place) do you want to visit" ForeColor="Red" ControlToValidate="txtItinerary"></asp:RequiredFieldValidator><br />
                            <asp:Label ID="lblItinerary" runat="server" Font-Bold="true" Text="20. Itinerary"></asp:Label>
                            (places of visit)<br />
                            <asp:TextBox ID="txtItinerary" runat="server" TextMode="MultiLine" Width="98%"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server" ColumnSpan="4">
                            <asp:Label ID="lblInsurance" runat="server" Font-Bold="true" Text="**21. Do you have medical insurance valid in Bangladesh?"></asp:Label>
                            <br />
                            <asp:RadioButtonList ID="rdblInsurance" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Value="No">No</asp:ListItem>
                                <asp:ListItem Value="Yes">Yes</asp:ListItem>
                            </asp:RadioButtonList>

                            <asp:Label ID="lblInsuranceYes" runat="server" Text=" If Yes (Please specify medical insurance name/company name"></asp:Label>
                            <asp:TextBox ID="txtInsuranceName" runat="server" Width="340"></asp:TextBox>
                            <asp:Label ID="lblInsuranceNo" runat="server" Text="Certificate Number:"></asp:Label>
                            <asp:TextBox ID="txtInsuranceNumber" runat="server" Width="200"></asp:TextBox>
                            <asp:Label ID="lblInsuranceLine" runat="server" Text=")"></asp:Label>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server" ColumnSpan="4">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ErrorMessage="Please enter who will bear your travel & other expenses" ForeColor="Red" ControlToValidate="txtSponsor"></asp:RequiredFieldValidator><br />
                            <asp:Label ID="lblSponsor" runat="server" Font-Bold="true" Text="22. Who will pay for your trip to and stay in Bangladesh?"></asp:Label>
                            <br />
                            <asp:TextBox ID="txtSponsor" runat="server" Width="98%"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server" ColumnSpan="4">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ErrorMessage="Are you married?" ForeColor="Red" ControlToValidate="rdblMaritalStatus"></asp:RequiredFieldValidator><br />
                            <asp:Label ID="lblMaritalStatus" runat="server" Font-Bold="true" Text="23. Marital status"></asp:Label>
                            <br />
                            <asp:RadioButtonList ID="rdblMaritalStatus" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Value="Married">Married</asp:ListItem>
                                <asp:ListItem Value="Single (never married)">Single (never married)</asp:ListItem>
                                <asp:ListItem Value="Divorced">Divorced</asp:ListItem>
                                <asp:ListItem Value="Separated">Separated</asp:ListItem>
                                <asp:ListItem Value="Widowed">Widowed</asp:ListItem>
                            </asp:RadioButtonList>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server" ColumnSpan="2">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ErrorMessage="Please enter your spouse Name!" ForeColor="Red" ControlToValidate="txtSpouse"></asp:RequiredFieldValidator><br />
                            <asp:Label ID="lblSpouse" runat="server" Font-Bold="true" Text="24. Spouse's full name"></asp:Label>
                            (if divorced or separated, please indicate middle name if applicable)<br />
                            <asp:TextBox ID="txtSpouse" runat="server" Width="500"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell runat="server" ColumnSpan="1">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" ErrorMessage="Please enter your spouse's date of birth!" ForeColor="Red" ControlToValidate="txtSpouseDOB"></asp:RequiredFieldValidator><br />
                            <asp:Label ID="lblSpouseDOB" runat="server" Font-Bold="true" Text="25. Spouse's date of birth"></asp:Label>
                            <br />
                            <asp:TextBox ID="txtSpouseDOB" runat="server" Width="120"></asp:TextBox>
                            <br /> dd-mm-yyyy
                            <ajaxToolkit:CalendarExtender ID="txtSpouseDOB_CalendarExtender" runat="server" BehaviorID="txtSpouseDOB_CalendarExtender" FirstDayOfWeek="Monday" TargetControlID="txtSpouseDOB" TodaysDateFormat="dd MMMM, yyyy" Format="dd-MM-yyyy" OnClientDateSelectionChanged="CheckDateTodayBackward"></ajaxToolkit:CalendarExtender>
                        </asp:TableCell>
                        <asp:TableCell runat="server" ColumnSpan="1">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" ErrorMessage="Please enter your spouse's birth place!" ForeColor="Red" ControlToValidate="txtSpouseBirthPlace"></asp:RequiredFieldValidator><br />
                            <asp:Label ID="lblSpouseBirthPlace" runat="server" Font-Bold="true" Text="26. Spouse's place of birth"></asp:Label>
                            <br />
                            <asp:TextBox ID="txtSpouseBirthPlace" runat="server" Width="300"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server" ColumnSpan="2">
                            <asp:Label ID="lblFather" runat="server" Font-Bold="true" Text="**27. Your father's full name"></asp:Label>
                            <br />
                            <asp:TextBox ID="txtFather" runat="server" Width="500"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell runat="server" ColumnSpan="2">
                            <asp:Label ID="lblMother" runat="server" Font-Bold="true" Text="**28. Your mother's full name"></asp:Label>
                            <br />
                            <asp:TextBox ID="txtMother" runat="server" Width="500"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server" ColumnSpan="4">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" ErrorMessage="Did you get issued any Bangladeshi visa before?" ForeColor="Red" ControlToValidate="txtBDVisa"></asp:RequiredFieldValidator><br />
                            <asp:Label ID="lblBDVisa" runat="server" Font-Bold="true" Text="29. Have you ever been issued a Bangladeshi visa?"></asp:Label>
                            (When and where?)<br />
                            <asp:TextBox ID="txtBDVisa" runat="server" Width="98%"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server" ColumnSpan="4">
                            <asp:Label ID="lblPassportLost" runat="server" Font-Bold="true" Text="**30. Has your passport ever been lost or stolen?"></asp:Label>
                            <asp:RadioButtonList ID="rdblPassportLost" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Value="Yes">Yes</asp:ListItem>
                                <asp:ListItem Value="No">No</asp:ListItem>
                            </asp:RadioButtonList>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server" ColumnSpan="2">
                            <asp:Label ID="lblCountriesVisited" runat="server" Font-Bold="true" Text="**31. List all countries you have visited in the last ten years and indicate the year of visit"></asp:Label>
                            <br />
                            <asp:TextBox ID="txtCountriesVisited" runat="server" TextMode="MultiLine" Width="500"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell runat="server" ColumnSpan="2">
                            <asp:Label ID="lblCountriesIssuedPassport" runat="server" Font-Bold="true" Text="**32. List all the countries which have ever issued you a passport"></asp:Label>
                            <br />
                            <asp:TextBox ID="txtCountriesIssuedPassport" runat="server" TextMode="MultiLine" Width="500"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server" ColumnSpan="4">
                            <asp:Label ID="lblWorkExp" runat="server" Font-Bold="true" Text="**33. List your last two places of work, excluding the current one"></asp:Label>
                            <br />
                            <asp:Table ID="tblWorkExp" runat="server" BackColor="#cccccc" BorderColor="White" BorderWidth="1" ForeColor="Black" GridLines="Both" BorderStyle="Solid" Width="100%">
                                <asp:TableRow runat="server">
                                    <asp:TableCell runat="server" ColumnSpan="2">
                                        <asp:Label ID="lblWorkExp1" runat="server" Font-Bold="true" Text="1."></asp:Label>
                                        <br />
                                        <asp:Label ID="lblWorkExp1Name" runat="server" Font-Bold="true" Text="Name"></asp:Label>
                                        <br />
                                        <asp:TextBox ID="txtWorkExp1Name" runat="server" Width="500"></asp:TextBox>
                                        <br />
                                        <asp:Label ID="lblWorkExp1Address" runat="server" Font-Bold="true" Text="Address"></asp:Label>
                                        <br />
                                        <asp:TextBox ID="txtWorkExp1Address" runat="server" Width="500" TextMode="MultiLine"></asp:TextBox>
                                        <br />
                                        <asp:Label ID="lblWorkExp1Position" runat="server" Font-Bold="true" Text="Your position" Width="300"></asp:Label>
                                        <br />
                                        <asp:TextBox ID="txtWorkExp1Position" runat="server" Width="500"></asp:TextBox>
                                    </asp:TableCell>
                                    <asp:TableCell runat="server" ColumnSpan="2">
                                        <asp:Label ID="lblWorkExp1Chief" runat="server" Font-Bold="true" Text="Your chief's surname"></asp:Label>
                                        <br />
                                        <asp:TextBox ID="txtWorkExp1Chief" runat="server" Width="500"></asp:TextBox>
                                        <br />
                                        <asp:Label ID="lblWorkExp1ChiefPhn" runat="server" Font-Bold="true" Text="Your chief's phone number"></asp:Label>
                                        <br />
                                        <asp:TextBox ID="txtWorkExp1ChiefPhn" runat="server" Width="500" TextMode="Phone"></asp:TextBox>
                                        <br />
                                        <asp:Label ID="lblWorkExp1Join" runat="server" Font-Bold="true" Text="Date of joining"></asp:Label>
                                        <br />
                                        <asp:TextBox ID="txtWorkExp1Join" runat="server" Width="120"></asp:TextBox>
                                        &nbsp
                                        <asp:CompareValidator ID="CompareValidator8" runat="server" Type="Date" Operator="GreaterThan" ControlToValidate="txtWorkExp1Join" ControlToCompare="txtDOB" ForeColor="Red" Font-Bold="true" ErrorMessage="Work must be start after you born!"></asp:CompareValidator>
                                        <br /> dd-mm-yyyy

                                        <ajaxToolkit:CalendarExtender ID="txtWorkExp1Join_CalendarExtender" runat="server" BehaviorID="txtWorkExp1Join_CalendarExtender" FirstDayOfWeek="Monday" TargetControlID="txtWorkExp1Join" TodaysDateFormat="dd MMMM, yyyy" Format="dd-MM-yyyy" OnClientDateSelectionChanged="CheckDateTodayBackward"></ajaxToolkit:CalendarExtender>
                                        <br />
                                        <asp:Label ID="lblWorkExp1Dismissal" runat="server" Font-Bold="true" Text="Date of dismissal"></asp:Label>
                                        <br />
                                        <asp:TextBox ID="txtWorkExp1Dismissal" runat="server" Width="120"></asp:TextBox>
                                        &nbsp
                                        <asp:CompareValidator ID="CompareValidator5" runat="server" Operator="GreaterThanEqual" Type="Date" ControlToValidate="txtWorkExp1Dismissal" ControlToCompare="txtWorkExp1Join" ForeColor="Red" Font-Bold="true" ErrorMessage="Dismissal Date must be later than 1st work Joining Date!"></asp:CompareValidator>
                                        <br /> dd-mm-yyyy
                                        <ajaxToolkit:CalendarExtender ID="txtWorkExp1Dismissal_CalendarExtender" runat="server" BehaviorID="txtWorkExp1Dismissal_CalendarExtender" FirstDayOfWeek="Monday" TargetControlID="txtWorkExp1Dismissal" TodaysDateFormat="dd MMMM, yyyy" Format="dd-MM-yyyy"
                                            OnClientDateSelectionChanged="CheckDateTodayBackward"></ajaxToolkit:CalendarExtender>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow runat="server">
                                    <asp:TableCell runat="server" ColumnSpan="2">
                                        <asp:Label ID="lblWorkExp2" runat="server" Font-Bold="true" Text="2."></asp:Label>
                                        <br />
                                        <asp:Label ID="lblWorkExp2Name" runat="server" Font-Bold="true" Text="Name"></asp:Label>
                                        <br />
                                        <asp:TextBox ID="txtWorkExp2Name" runat="server" Width="500"></asp:TextBox>
                                        <br />
                                        <asp:Label ID="lblWorkExp2Address" runat="server" Font-Bold="true" Text="Address"></asp:Label>
                                        <br />
                                        <asp:TextBox ID="txtWorkExp2Address" runat="server" Width="500" TextMode="MultiLine"></asp:TextBox>
                                        <br />
                                        <asp:Label ID="lblWorkExp2Position" runat="server" Font-Bold="true" Text="Your position" Width="300"></asp:Label>
                                        <br />
                                        <asp:TextBox ID="txtWorkExp2Position" runat="server" Width="500"></asp:TextBox>
                                    </asp:TableCell>
                                    <asp:TableCell runat="server" ColumnSpan="2">
                                        <asp:Label ID="lblWorkExp2Chief" runat="server" Font-Bold="true" Text="Your chief's surname"></asp:Label>
                                        <br />
                                        <asp:TextBox ID="txtWorkExp2Chief" runat="server" Width="500"></asp:TextBox>
                                        <br />
                                        <asp:Label ID="lblWorkExp2ChiefPhn" runat="server" Font-Bold="true" Text="Your chief's phone number"></asp:Label>
                                        <br />
                                        <asp:TextBox ID="txtWorkExp2ChiefPhn" runat="server" Width="500" TextMode="Phone"></asp:TextBox>
                                        <br />
                                        <asp:Label ID="lblWorkExp2Join" runat="server" Font-Bold="true" Text="Date of joining"></asp:Label>
                                        <br />
                                        <asp:TextBox ID="txtWorkExp2Join" runat="server" Width="120"></asp:TextBox>
                                        &nbsp
                                        <asp:CompareValidator ID="CompareValidator6" runat="server" Type="Date" Operator="GreaterThan" ControlToValidate="txtWorkExp2Join" ControlToCompare="txtWorkExp1Dismissal" ForeColor="Red" Font-Bold="true" ErrorMessage="2nd Joining Date must be later than 1st work Dismissal Date!"></asp:CompareValidator>
                                        <br /> dd-mm-yyyy
                                        <ajaxToolkit:CalendarExtender ID="txtWorkExp2Join_CalendarExtender" runat="server" BehaviorID="txtWorkExp2Join_CalendarExtender" FirstDayOfWeek="Monday" TargetControlID="txtWorkExp2Join" TodaysDateFormat="dd MMMM, yyyy" Format="dd-MM-yyyy" OnClientDateSelectionChanged="CheckDateTodayBackward"></ajaxToolkit:CalendarExtender>
                                        <br />
                                        <asp:Label ID="lblWorkExp2Dismissal" runat="server" Font-Bold="true" Text="Date of dismissal"></asp:Label>
                                        <br />
                                        <asp:TextBox ID="txtWorkExp2Dismissal" runat="server" Width="120"></asp:TextBox>
                                        &nbsp
                                        <asp:CompareValidator ID="CompareValidator7" runat="server" Type="Date" Operator="GreaterThanEqual" ControlToValidate="txtWorkExp2Dismissal" ControlToCompare="txtWorkExp2Join" ForeColor="Red" Font-Bold="true" ErrorMessage="Dismissal Date must be later than 2nd work Joining Date!"></asp:CompareValidator>
                                        <br /> dd-mm-yyyy
                                        <ajaxToolkit:CalendarExtender ID="txtWorkExp2Dismissal_CalendarExtender" runat="server" BehaviorID="txtWorkExp2Dismissal_CalendarExtender" FirstDayOfWeek="Monday" TargetControlID="txtWorkExp2Dismissal" TodaysDateFormat="dd MMMM, yyyy" Format="dd-MM-yyyy"
                                            OnClientDateSelectionChanged="CheckDateTodayBackward"></ajaxToolkit:CalendarExtender>
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server" HorizontalAlign="Center" ColumnSpan="4">
                            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                            <ajaxToolkit:ConfirmButtonExtender ID="ConfirmButtonExtender2" runat="server" ConfirmOnFormSubmit="true" TargetControlID="btnSubmit" ConfirmText="Confirm Submit! No more Changes available once submitted." /> &nbsp
                            <asp:Button ID="btnReset" runat="server" Text="Reset" OnClick="btnReset_Click" />
                            <ajaxToolkit:ConfirmButtonExtender ID="ConfirmButtonExtender1" runat="server" TargetControlID="btnReset" ConfirmText="Confirm Reset!" ConfirmOnFormSubmit="True" />
                        </asp:TableCell>
                    </asp:TableRow>

                </asp:Table>
            </div>

        </asp:Content>