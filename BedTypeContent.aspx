<%@ Page Title="" Language="C#" MasterPageFile="~/MasterReservation.Master" AutoEventWireup="true" CodeBehind="BedTypeContent.aspx.cs" Inherits="RoyalInnSuites.BedTypeContent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DropDownBedTypeConnectionString %>" SelectCommand="SELECT DISTINCT [BED_TYPE] FROM [RESERVATION]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DropDownBedTypeConnectionString %>" SelectCommand="SELECT p1.EMAIL, p1.FIRST_NAME, p1.LAST_NAME, p1.TELEPHONE, p1.CONTACT_METHOD, p1.PROVINCE, r1.ARRIVAL_DATE, r1.DEPARTURE_DATE, r1.NUM_OF_PEOPLE, r1.BED_TYPE, r1.SPECIAL_INTEREST, r1.EMAIL 
FROM [PROFILE] p1 INNER JOIN [RESERVATION] r1
ON p1.EMAIL = r1.EMAIL
WHERE (r1.[BED_TYPE] = @BED_TYPE)

" DeleteCommand="DELETE FROM [PROFILE] WHERE ([EMAIL] = @EMAIL)" InsertCommand="INSERT INTO [PROFILE] VALUES (@EMAIL, @FIRST_NAME, @LAST_NAME, @TELEPHONE, @CONTACT_METHOD, @PROVINCE);
INSERT INTO [RESERVATION] VALUES (@ARRIVAL_DATE, @DEPARTURE_DATE, @NUM_OF_PEOPLE, @BED_TYPE, @SPECIAL_INTEREST, @EMAIL)">
        <DeleteParameters>
            <asp:Parameter Name="EMAIL" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="EMAIL" />
            <asp:Parameter Name="FIRST_NAME" />
            <asp:Parameter Name="LAST_NAME" />
            <asp:Parameter Name="TELEPHONE" />
            <asp:Parameter Name="CONTACT_METHOD" />
            <asp:Parameter Name="PROVINCE" />
            <asp:Parameter Name="ARRIVAL_DATE" />
            <asp:Parameter Name="DEPARTURE_DATE" />
            <asp:Parameter Name="NUM_OF_PEOPLE" />
            <asp:Parameter Name="BED_TYPE" />
            <asp:Parameter Name="SPECIAL_INTEREST" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="BED_TYPE" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <table class="auto-style1">
        <tr>
            <td class="auto-style3" style="width: 194px">Please Choose a Bed Type</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="BED_TYPE" DataValueField="BED_TYPE" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
    </table>
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" />

    <br />
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" CellPadding="4" DataKeyNames="EMAIL" DataSourceID="SqlDataSource2" ForeColor="#333333">
        <EditItemTemplate>
            EMAIL:
            <asp:Label ID="EMAILLabel1" runat="server" Text='<%# Eval("EMAIL") %>' />
            <br />
            FIRST_NAME:
            <asp:TextBox ID="FIRST_NAMETextBox" runat="server" Text='<%# Bind("FIRST_NAME") %>' />
            <br />
            LAST_NAME:
            <asp:TextBox ID="LAST_NAMETextBox" runat="server" Text='<%# Bind("LAST_NAME") %>' />
            <br />
            TELEPHONE:
            <asp:TextBox ID="TELEPHONETextBox" runat="server" Text='<%# Bind("TELEPHONE") %>' />
            <br />
            CONTACT_METHOD:
            <asp:TextBox ID="CONTACT_METHODTextBox" runat="server" Text='<%# Bind("CONTACT_METHOD") %>' />
            <br />
            PROVINCE:
            <asp:TextBox ID="PROVINCETextBox" runat="server" Text='<%# Bind("PROVINCE") %>' />
            <br />
            ARRIVAL_DATE:
            <asp:TextBox ID="ARRIVAL_DATETextBox" runat="server" Text='<%# Bind("ARRIVAL_DATE") %>' />
            <br />
            DEPARTURE_DATE:
            <asp:TextBox ID="DEPARTURE_DATETextBox" runat="server" Text='<%# Bind("DEPARTURE_DATE") %>' />
            <br />
            NUM_OF_PEOPLE:
            <asp:TextBox ID="NUM_OF_PEOPLETextBox" runat="server" Text='<%# Bind("NUM_OF_PEOPLE") %>' />
            <br />
            BED_TYPE:
            <asp:TextBox ID="BED_TYPETextBox" runat="server" Text='<%# Bind("BED_TYPE") %>' />
            <br />
            SPECIAL_INTEREST:
            <asp:TextBox ID="SPECIAL_INTERESTTextBox" runat="server" Text='<%# Bind("SPECIAL_INTEREST") %>' />
            <br />
            EMAIL1:
            <asp:TextBox ID="EMAIL1TextBox" runat="server" Text='<%# Bind("EMAIL1") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <InsertItemTemplate>
            EMAIL:
            <asp:TextBox ID="EMAILTextBox" runat="server" Text='<%# Bind("EMAIL") %>' />
            <br />
            FIRST_NAME:
            <asp:TextBox ID="FIRST_NAMETextBox" runat="server" Text='<%# Bind("FIRST_NAME") %>' />
            <br />
            LAST_NAME:
            <asp:TextBox ID="LAST_NAMETextBox" runat="server" Text='<%# Bind("LAST_NAME") %>' />
            <br />
            TELEPHONE:
            <asp:TextBox ID="TELEPHONETextBox" runat="server" Text='<%# Bind("TELEPHONE") %>' />
            <br />
            CONTACT_METHOD:
            <asp:TextBox ID="CONTACT_METHODTextBox" runat="server" Text='<%# Bind("CONTACT_METHOD") %>' />
            <br />
            PROVINCE:
            <asp:TextBox ID="PROVINCETextBox" runat="server" Text='<%# Bind("PROVINCE") %>' />
            <br />
            ARRIVAL_DATE:
            <asp:TextBox ID="ARRIVAL_DATETextBox" runat="server" Text='<%# Bind("ARRIVAL_DATE") %>' />
            <br />
            DEPARTURE_DATE:
            <asp:TextBox ID="DEPARTURE_DATETextBox" runat="server" Text='<%# Bind("DEPARTURE_DATE") %>' />
            <br />
            NUM_OF_PEOPLE:
            <asp:TextBox ID="NUM_OF_PEOPLETextBox" runat="server" Text='<%# Bind("NUM_OF_PEOPLE") %>' />
            <br />
            BED_TYPE:
            <asp:TextBox ID="BED_TYPETextBox" runat="server" Text='<%# Bind("BED_TYPE") %>' />
            <br />
            SPECIAL_INTEREST:
            <asp:TextBox ID="SPECIAL_INTERESTTextBox" runat="server" Text='<%# Bind("SPECIAL_INTEREST") %>' />
            <br />
            EMAIL1:
            <asp:TextBox ID="EMAIL1TextBox" runat="server" Text='<%# Bind("EMAIL1") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            EMAIL:
            <asp:Label ID="EMAILLabel" runat="server" Text='<%# Eval("EMAIL") %>' />
            <br />
            FIRST_NAME:
            <asp:Label ID="FIRST_NAMELabel" runat="server" Text='<%# Bind("FIRST_NAME") %>' />
            <br />
            LAST_NAME:
            <asp:Label ID="LAST_NAMELabel" runat="server" Text='<%# Bind("LAST_NAME") %>' />
            <br />
            TELEPHONE:
            <asp:Label ID="TELEPHONELabel" runat="server" Text='<%# Bind("TELEPHONE") %>' />
            <br />
            CONTACT_METHOD:
            <asp:Label ID="CONTACT_METHODLabel" runat="server" Text='<%# Bind("CONTACT_METHOD") %>' />
            <br />
            PROVINCE:
            <asp:Label ID="PROVINCELabel" runat="server" Text='<%# Bind("PROVINCE") %>' />
            <br />
        </ItemTemplate>
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:FormView>

    <br />
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="EMAIL" DataSourceID="SqlDataSource2" InsertItemPosition="LastItem">
        <AlternatingItemTemplate>
            <tr style="background-color:#FFF8DC;">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                </td>
                <td>
                    <asp:Label ID="EMAILLabel" runat="server" Text='<%# Eval("EMAIL") %>' />
                </td>
                <td>
                    <asp:Label ID="FIRST_NAMELabel" runat="server" Text='<%# Eval("FIRST_NAME") %>' />
                </td>
                <td>
                    <asp:Label ID="LAST_NAMELabel" runat="server" Text='<%# Eval("LAST_NAME") %>' />
                </td>
                <td>
                    <asp:Label ID="TELEPHONELabel" runat="server" Text='<%# Eval("TELEPHONE") %>' />
                </td>
                <td>
                    <asp:Label ID="CONTACT_METHODLabel" runat="server" Text='<%# Eval("CONTACT_METHOD") %>' />
                </td>
                <td>
                    <asp:Label ID="PROVINCELabel" runat="server" Text='<%# Eval("PROVINCE") %>' />
                </td>
                <td>
                    <asp:Label ID="ARRIVAL_DATELabel" runat="server" Text='<%# Eval("ARRIVAL_DATE") %>' />
                </td>
                <td>
                    <asp:Label ID="DEPARTURE_DATELabel" runat="server" Text='<%# Eval("DEPARTURE_DATE") %>' />
                </td>
                <td>
                    <asp:Label ID="NUM_OF_PEOPLELabel" runat="server" Text='<%# Eval("NUM_OF_PEOPLE") %>' />
                </td>
                <td>
                    <asp:Label ID="BED_TYPELabel" runat="server" Text='<%# Eval("BED_TYPE") %>' />
                </td>
                <td>
                    <asp:Label ID="SPECIAL_INTERESTLabel" runat="server" Text='<%# Eval("SPECIAL_INTEREST") %>' />
                </td>               
                <td>
                    <asp:Label ID="EMAIL1Label" runat="server" Text='<%# Eval("EMAIL1") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="background-color:#008A8C;color: #FFFFFF;">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                </td>
                <td>
                    <asp:Label ID="EMAILLabel1" runat="server" Text='<%# Eval("EMAIL") %>' />
                </td>
                <td>
                    <asp:TextBox ID="FIRST_NAMETextBox" runat="server" Text='<%# Bind("FIRST_NAME") %>' />
                </td>
                <td>
                    <asp:TextBox ID="LAST_NAMETextBox" runat="server" Text='<%# Bind("LAST_NAME") %>' />
                </td>
                <td>
                    <asp:TextBox ID="TELEPHONETextBox" runat="server" Text='<%# Bind("TELEPHONE") %>' />
                </td>
                <td>
                    <asp:TextBox ID="CONTACT_METHODTextBox" runat="server" Text='<%# Bind("CONTACT_METHOD") %>' />
                </td>
                <td>
                    <asp:TextBox ID="PROVINCETextBox" runat="server" Text='<%# Bind("PROVINCE") %>' />
                </td>
                <td>
                    <asp:TextBox ID="ARRIVAL_DATETextBox" runat="server" Text='<%# Bind("ARRIVAL_DATE") %>' />
                </td>
                <td>
                    <asp:TextBox ID="DEPARTURE_DATETextBox" runat="server" Text='<%# Bind("DEPARTURE_DATE") %>' />
                </td>
                <td>
                    <asp:TextBox ID="NUM_OF_PEOPLETextBox" runat="server" Text='<%# Bind("NUM_OF_PEOPLE") %>' />
                </td>
                <td>
                    <asp:TextBox ID="BED_TYPETextBox" runat="server" Text='<%# Bind("BED_TYPE") %>' />
                </td>
                <td>
                    <asp:TextBox ID="SPECIAL_INTERESTTextBox" runat="server" Text='<%# Bind("SPECIAL_INTEREST") %>' />
                </td>              
                <td>
                    <asp:TextBox ID="EMAIL1TextBox" runat="server" Text='<%# Bind("EMAIL1") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                </td>
                <td>
                    <asp:TextBox ID="EMAILTextBox" runat="server" Text='<%# Bind("EMAIL") %>' />
                </td>
                <td>
                    <asp:TextBox ID="FIRST_NAMETextBox" runat="server" Text='<%# Bind("FIRST_NAME") %>' />
                </td>
                <td>
                    <asp:TextBox ID="LAST_NAMETextBox" runat="server" Text='<%# Bind("LAST_NAME") %>' />
                </td>
                <td>
                    <asp:TextBox ID="TELEPHONETextBox" runat="server" Text='<%# Bind("TELEPHONE") %>' />
                </td>
                <td>
                    <asp:TextBox ID="CONTACT_METHODTextBox" runat="server" Text='<%# Bind("CONTACT_METHOD") %>' />
                </td>
                <td>
                    <asp:TextBox ID="PROVINCETextBox" runat="server" Text='<%# Bind("PROVINCE") %>' />
                </td>
                <td>
                    <asp:TextBox ID="ARRIVAL_DATETextBox" runat="server" Text='<%# Bind("ARRIVAL_DATE") %>' />
                </td>
                <td>
                    <asp:TextBox ID="DEPARTURE_DATETextBox" runat="server" Text='<%# Bind("DEPARTURE_DATE") %>' />
                </td>
                <td>
                    <asp:TextBox ID="NUM_OF_PEOPLETextBox" runat="server" Text='<%# Bind("NUM_OF_PEOPLE") %>' />
                </td>
                <td>
                    <asp:TextBox ID="BED_TYPETextBox" runat="server" Text='<%# Bind("BED_TYPE") %>' />
                </td>
                <td>
                    <asp:TextBox ID="SPECIAL_INTERESTTextBox" runat="server" Text='<%# Bind("SPECIAL_INTEREST") %>' />
                </td>                
                <td>
                    <asp:TextBox ID="EMAIL1TextBox" runat="server" Text='<%# Bind("EMAIL1") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="background-color:#DCDCDC;color: #000000;">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                </td>
                <td>
                    <asp:Label ID="EMAILLabel" runat="server" Text='<%# Eval("EMAIL") %>' />
                </td>
                <td>
                    <asp:Label ID="FIRST_NAMELabel" runat="server" Text='<%# Eval("FIRST_NAME") %>' />
                </td>
                <td>
                    <asp:Label ID="LAST_NAMELabel" runat="server" Text='<%# Eval("LAST_NAME") %>' />
                </td>
                <td>
                    <asp:Label ID="TELEPHONELabel" runat="server" Text='<%# Eval("TELEPHONE") %>' />
                </td>
                <td>
                    <asp:Label ID="CONTACT_METHODLabel" runat="server" Text='<%# Eval("CONTACT_METHOD") %>' />
                </td>
                <td>
                    <asp:Label ID="PROVINCELabel" runat="server" Text='<%# Eval("PROVINCE") %>' />
                </td>
                <td>
                    <asp:Label ID="ARRIVAL_DATELabel" runat="server" Text='<%# Eval("ARRIVAL_DATE") %>' />
                </td>
                <td>
                    <asp:Label ID="DEPARTURE_DATELabel" runat="server" Text='<%# Eval("DEPARTURE_DATE") %>' />
                </td>
                <td>
                    <asp:Label ID="NUM_OF_PEOPLELabel" runat="server" Text='<%# Eval("NUM_OF_PEOPLE") %>' />
                </td>
                <td>
                    <asp:Label ID="BED_TYPELabel" runat="server" Text='<%# Eval("BED_TYPE") %>' />
                </td>
                <td>
                    <asp:Label ID="SPECIAL_INTERESTLabel" runat="server" Text='<%# Eval("SPECIAL_INTEREST") %>' />
                </td>              
                <td>
                    <asp:Label ID="EMAIL1Label" runat="server" Text='<%# Eval("EMAIL1") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                <th runat="server"></th>
                                <th runat="server">EMAIL</th>
                                <th runat="server">FIRST_NAME</th>
                                <th runat="server">LAST_NAME</th>
                                <th runat="server">TELEPHONE</th>
                                <th runat="server">CONTACT_METHOD</th>
                                <th runat="server">PROVINCE</th>
                                <th runat="server">ARRIVAL_DATE</th>
                                <th runat="server">DEPARTURE_DATE</th>
                                <th runat="server">NUM_OF_PEOPLE</th>
                                <th runat="server">BED_TYPE</th>
                                <th runat="server">SPECIAL_INTEREST</th>                             
                                <th runat="server">EMAIL1</th>
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                        <asp:DataPager ID="DataPager1" runat="server">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                </td>
                <td>
                    <asp:Label ID="EMAILLabel" runat="server" Text='<%# Eval("EMAIL") %>' />
                </td>
                <td>
                    <asp:Label ID="FIRST_NAMELabel" runat="server" Text='<%# Eval("FIRST_NAME") %>' />
                </td>
                <td>
                    <asp:Label ID="LAST_NAMELabel" runat="server" Text='<%# Eval("LAST_NAME") %>' />
                </td>
                <td>
                    <asp:Label ID="TELEPHONELabel" runat="server" Text='<%# Eval("TELEPHONE") %>' />
                </td>
                <td>
                    <asp:Label ID="CONTACT_METHODLabel" runat="server" Text='<%# Eval("CONTACT_METHOD") %>' />
                </td>
                <td>
                    <asp:Label ID="PROVINCELabel" runat="server" Text='<%# Eval("PROVINCE") %>' />
                </td>
                <td>
                    <asp:Label ID="ARRIVAL_DATELabel" runat="server" Text='<%# Eval("ARRIVAL_DATE") %>' />
                </td>
                <td>
                    <asp:Label ID="DEPARTURE_DATELabel" runat="server" Text='<%# Eval("DEPARTURE_DATE") %>' />
                </td>
                <td>
                    <asp:Label ID="NUM_OF_PEOPLELabel" runat="server" Text='<%# Eval("NUM_OF_PEOPLE") %>' />
                </td>
                <td>
                    <asp:Label ID="BED_TYPELabel" runat="server" Text='<%# Eval("BED_TYPE") %>' />
                </td>
                <td>
                    <asp:Label ID="SPECIAL_INTERESTLabel" runat="server" Text='<%# Eval("SPECIAL_INTEREST") %>' />
                </td>              
                <td>
                    <asp:Label ID="EMAIL1Label" runat="server" Text='<%# Eval("EMAIL1") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
    <br />

</asp:Content>
