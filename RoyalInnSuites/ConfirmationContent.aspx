<%@ Page Title="" Language="C#" MasterPageFile="~/MasterReservation.Master" AutoEventWireup="true" CodeBehind="ConfirmationContent.aspx.cs" Inherits="RoyalInnSuites.ConfirmationContent" %>

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
                <td class="auto-style2" style="width: 132px">
                    <asp:Label ID="lblArrivalDate" runat="server" Text="Arrival"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblArrivalDateResp" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 132px">
                    <asp:Label ID="lblDepartureDate" runat="server" Text="Departure"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblDepartureDateResp" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 132px">
                    <asp:Label ID="lblNumberOfPeople" runat="server" Text="Number of People"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblNumberOfPeopleResp" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>

        
      
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" style="width: 134px">
                    <asp:Label ID="lblBedType" runat="server" Text="Bed Type"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblBedTypeResp" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>

        
      
        <hr style="width: 1396px" />
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lblSpecialRequests" runat="server" Text="Special Requests"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblSpecialRequestsResp" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>

        
      
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
                    <asp:Label ID="lblFirstNameResp" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lblLastName" runat="server" Text=""></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblLastNameResp" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lblEmail" runat="server" Text="Email Address"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblEmailResp" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lblTelephone" runat="server" Text="Telephone"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblTelephoneResp" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lblContactMethod" runat="server" Text="Contact Method"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblContactMethodResp" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="btnConfirmRequest" runat="server" Text="Confirm Request" OnClick="btn_ConfirmRequest" />
                </td>
                <td>
                    <asp:Button ID="btnModifyRequest" runat="server" Text="Modify Request" OnClick="btn_ModifyRequest" />   
                </td>
            </tr>
        </table>      
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="lblConfirmationMessage" runat="server" Forecolor="Blue" Text=""></asp:Label>
                </td>
            </tr>
        </table>


</asp:Content>
