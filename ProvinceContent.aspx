<%@ Page Title="" Language="C#" MasterPageFile="~/MasterReservation.Master" AutoEventWireup="true" CodeBehind="ProvinceContent.aspx.cs" Inherits="RoyalInnSuites.ProvinceContent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DropDownBedTypeConnectionString %>" SelectCommand="SELECT [ID] FROM [PROVINCE]"></asp:SqlDataSource>
    <table class="auto-style1">
        <tr>
            <td class="auto-style4" style="width: 177px">Please select a Province</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="ID" DataValueField="ID">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style4" style="width: 177px">&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Submit" />
            </td>
            <td> &nbsp;</td>
        </tr>
    </table>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DropDownBedTypeConnectionString %>" SelectCommand="SELECT * FROM [PROFILE] WHERE ([PROVINCE] = @PROVINCE)" DeleteCommand="DELETE FROM [PROFILE] WHERE ([PROVINCE] = @PROVINCE)" UpdateCommand="UPDATE [PROFILE] SET EMAIL =@EMAIL, FIRST_NAME =@FIRST_NAME, LAST_NAME =@LAST_NAME, TELEPHONE =@TELEPHONE, CONTACT_METHOD =@CONTACT, PROVINCE =@PROVINCE

">
        <DeleteParameters>
            <asp:Parameter Name="PROVINCE" />
        </DeleteParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="PROVINCE" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="EMAIL" />
            <asp:Parameter Name="FIRST_NAME" />
            <asp:Parameter Name="LAST_NAME" />
            <asp:Parameter Name="TELEPHONE" />
            <asp:Parameter Name="CONTACT" />
            <asp:Parameter Name="PROVINCE" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="EMAIL" DataSourceID="SqlDataSource2" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="EMAIL" HeaderText="Email" ReadOnly="True" SortExpression="EMAIL" />
            <asp:BoundField DataField="FIRST_NAME" HeaderText="First Name" SortExpression="FIRST_NAME" />
            <asp:BoundField DataField="LAST_NAME" HeaderText="Last Name" SortExpression="LAST_NAME" />
            <asp:BoundField DataField="TELEPHONE" HeaderText="Telephone" SortExpression="TELEPHONE" />
            <asp:BoundField DataField="CONTACT_METHOD" HeaderText="Contact Method" SortExpression="CONTACT_METHOD" />
            <asp:BoundField DataField="PROVINCE" HeaderText="Province" SortExpression="PROVINCE" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DropDownBedTypeConnectionString %>" DeleteCommand="DELETE FROM [PROFILE] WHERE [EMAIL] = @EMAIL" InsertCommand="INSERT INTO [PROFILE] ([EMAIL], [FIRST_NAME], [LAST_NAME], [TELEPHONE], [CONTACT_METHOD], [PROVINCE]) VALUES (@EMAIL, @FIRST_NAME, @LAST_NAME, @TELEPHONE, @CONTACT_METHOD, @PROVINCE)" SelectCommand="SELECT * FROM [PROFILE] WHERE ([EMAIL] = @EMAIL)" UpdateCommand="UPDATE [PROFILE] SET [FIRST_NAME] = @FIRST_NAME, [LAST_NAME] = @LAST_NAME, [TELEPHONE] = @TELEPHONE, [CONTACT_METHOD] = @CONTACT_METHOD, [PROVINCE] = @PROVINCE WHERE [EMAIL] = @EMAIL">
        <DeleteParameters>
            <asp:Parameter Name="EMAIL" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="EMAIL" Type="String" />
            <asp:Parameter Name="FIRST_NAME" Type="String" />
            <asp:Parameter Name="LAST_NAME" Type="String" />
            <asp:Parameter Name="TELEPHONE" Type="String" />
            <asp:Parameter Name="CONTACT_METHOD" Type="String" />
            <asp:Parameter Name="PROVINCE" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="EMAIL" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="FIRST_NAME" Type="String" />
            <asp:Parameter Name="LAST_NAME" Type="String" />
            <asp:Parameter Name="TELEPHONE" Type="String" />
            <asp:Parameter Name="CONTACT_METHOD" Type="String" />
            <asp:Parameter Name="PROVINCE" Type="String" />
            <asp:Parameter Name="EMAIL" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="EMAIL" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" Height="50px" Width="125px" OnItemDeleted="DetailsView1_ItemDeleted" OnItemInserted="DetailsView1_ItemInserted" OnItemUpdated="DetailsView1_ItemUpdated">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
        <EditRowStyle BackColor="#999999" />
        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="EMAIL" HeaderText="Email" ReadOnly="True" SortExpression="EMAIL" />
            <asp:BoundField DataField="FIRST_NAME" HeaderText="First Name" SortExpression="FIRST_NAME" />
            <asp:BoundField DataField="LAST_NAME" HeaderText="Last Name" SortExpression="LAST_NAME" />
            <asp:BoundField DataField="TELEPHONE" HeaderText="Telephone" SortExpression="TELEPHONE" />
            <asp:BoundField DataField="CONTACT_METHOD" HeaderText="Contact Method" SortExpression="CONTACT_METHOD" />
            <asp:BoundField DataField="PROVINCE" HeaderText="Province" SortExpression="PROVINCE" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:DetailsView>
    <br />
    <br />
</asp:Content>
