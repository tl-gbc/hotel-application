<%@ Page Title="Royal Suites Reservation Form" Language="C#" MasterPageFile="~/MasterReservation.Master" AutoEventWireup="true" CodeBehind="RoyalSuitesInnContent.aspx.cs" Inherits="RoyalInnSuites.RoyalSuitesInnContent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="lblReservationRequest" runat="server" Text="Reservation Request"></asp:Label>
                </td>
            </tr>
        </table>        
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblArrival" runat="server" Text="Arrival"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtArrival" runat="server" type="Date"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidatorArrivalDate" 
                                          runat="server" 
                                          ErrorMessage="Please enter a validate date." 
                                          ForeColor="Red" 
                                          Operator="DataTypeCheck" 
                                          Type="Date" 
                                          ControlToValidate="txtArrival" 
                                          ValidationGroup="MyValidationGroup"
                                          Display="Dynamic">*</asp:CompareValidator>
                    <asp:CompareValidator ID="CompareValidator1" 
                              runat="server" 
                              ErrorMessage="Departure date must be greater than arrival date. Please correct." 
                              ControlToCompare="txtDeparture" 
                              ControlToValidate="txtArrival" 
                              ForeColor="Red" 
                              Operator="LessThan" 
                              Type="Date" 
                              Display="Dynamic" 
                              ValidationGroup="MyValidationGroup">*</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblDeparture" runat="server" Text="Departure"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtDeparture" runat="server" type="Date"></asp:TextBox>
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblNumberOfPersons" runat="server" Text="Number of People"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlNumberOfPeople" runat="server">
                        <asp:ListItem Selected="True" Text="1" Value="1"/>
                        <asp:ListItem Text="2" Value="2"/>
                        <asp:ListItem Text="3" Value="3"/>
                        <asp:ListItem Text="4" Value="4"/>
                        <asp:ListItem Text="5" Value="5"/>
                        <asp:ListItem Text="6" Value="6"/>
                    </asp:DropDownList>
                </td>
            </tr>
        </table>

        
      
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lblBedType" runat="server" Text="Bed Type"></asp:Label>
                </td>
                <td>
                    <asp:RadioButton ID="rdoKing" runat="Server" Text="King" GroupName="BedType" Checked="True"/>
                    <asp:RadioButton ID="rdoTwoQueen" runat="Server" Text="Two Queen" GroupName="BedType"/>
                    <asp:RadioButton ID="rdoOneQueen" runat="Server" Text="One Queen" GroupName="BedType"/>
                </td>
            </tr>
        </table>

        
      
        <hr style="width: 1396px" />
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="lblSpecialRequests" runat="server" Text="Special Requests"></asp:Label>
                </td>
            </tr>
        </table>

        
      
        <asp:TextBox ID="txtBoxSpecialInstructions" runat="server" TextMode="Multiline" Rows="4" Width="544px"></asp:TextBox>
        <hr style="width: 1396px" />
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="lblContactInformation" runat="server" Text="Contact Information"></asp:Label>
                </td>
            </tr>
        </table>

        
      
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lblFirstName" runat="server" Text="First Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lblLastName" runat="server" Text="Last Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lblEmail" runat="server" Text="Email Address"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server" placeholder="eg. someone@example.com"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" 
                                                    runat="server" 
                                                    ErrorMessage="Valid email must be supplied." 
                                                    ForeColor="Red" 
                                                    ControlToValidate="txtEmail" 
                                                    ValidationGroup="MyValidationGroup"
                                                    ValidationExpression="^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lblTelephone" runat="server" Text="Telephone"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPhoneNumber" runat="server" placeholder="eg. ###-###-####"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidatorTelephone" 
                                                    runat="server" 
                                                    ErrorMessage="Valid phone number must be supplied." 
                                                    ForeColor="Red" 
                                                    ControlToValidate="txtPhoneNumber" 
                                                    ValidationExpression="^\(?([0-9]{3})\)?[-.]?([0-9]{3})[-.]?([0-9]{4})$">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    Province</td>
                <td>
                    <asp:DropDownList ID="ddlProvince" runat="server" DataSourceID="SqlDataSource1" DataTextField="ID" DataValueField="ID">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lblContactMethod" runat="server" Text="Contact Method"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlContactMethod" runat="server">
                        <asp:ListItem Selected="True" Text="Email" Value="Email"/>
                        <asp:ListItem Text="Phone" Value="Phone"/>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="btnSubmit" 
                                runat="server" 
                                Text="Submit" 
                                ValidationGroup="MyValidationGroup" 
                                OnClick="btnSubmit_Click" />
                </td>
                <td>
                    <asp:Button ID="btnClear" 
                                runat="server" 
                                Text="Clear" 
                                CausesValidation="False" 
                                OnClick="btnClear_Click" />
                </td>
            </tr>
        </table>         

        <!-- Display=None this configuration ensures the custom validation ErrorMessage is not displayed (in favour of ValidationSummary)-->
        <asp:CustomValidator ID="CustomValidator1" 
                         ControlToValidate = ""            
                         runat ="server"                             
                         ForeColor="Red" 
                         OnServerValidate="CustomValidator1_ServerValidate"
                         ValidationGroup="MyValidationGroup" 
                         Display="None"></asp:CustomValidator>                      
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DropDownBedTypeConnectionString %>" SelectCommand="SELECT DISTINCT [ID] FROM [PROVINCE]"></asp:SqlDataSource>
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:ValidationSummary ID="ValidationSummary1" 
                                           runat="server" 
                                           ValidationGroup="MyValidationGroup" 
                                           HeaderText="***Validation Error(s)***" 
                                           ForeColor="Red" 
                                           DisplayMode="List" />
                </td>
            </tr>
        </table>




</asp:Content>
