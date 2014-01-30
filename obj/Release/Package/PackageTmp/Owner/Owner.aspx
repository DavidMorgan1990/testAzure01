<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Owner.aspx.cs" Inherits="Test100Hours3._Default" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Owner Pages "></asp:Label>
        &nbsp;</h3>
    <h3>
        <asp:Button ID="Button1" runat="server" Height="40px" OnClick="Button1_Click" Text="Export" Width="200px" Font-Size="X-Large" />
        <asp:Button ID="Button2" runat="server" Height="40px" OnClick="Button2_Click" Text="Edit Fields" Width="200px" Font-Size="X-Large" />
    </h3>
    <div>
        <h3>
            <asp:Label ID="Label2" runat="server" Font-Size="Large" Text="Import / Export data from csv."></asp:Label>
        </h3>
        <div>
            <table>
                <tr>
                    <td>Select File : </td>
                    <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" Font-Size="Medium" />
                    </td>
                    <td>
                        <asp:Button ID="btnImportFromCSV" runat="server" Text="Import Data to Database" OnClick="btnImportFromCSV_Click" Font-Size="Large" />
                    </td>
                </tr>
            </table>
            <div>
                <br />
                <asp:Label ID="lblMessage" runat="server" Font-Bold="True" Font-Size="Large"/>
                <br />
                <asp:GridView ID="gvData" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Font-Bold="False" Font-Size="Large">
                    <EditRowStyle BackColor="#7C6F57" />
                    <EmptyDataTemplate>
                        <div style="padding:10px;">No Data Found!</div>"
                    </EmptyDataTemplate>
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField HeaderText="ContactID" DataField="ContactID" />
                        <asp:BoundField HeaderText="ContactStatus" DataField="ContactStatus" />
                        <asp:BoundField HeaderText="DateLastUpdated" DataField="DateLastUpdated" />
                        <asp:BoundField HeaderText="DateCreated" DataField="DateCreated" />
                        <asp:BoundField HeaderText="CreatedBy" DataField="CreatedBy" />
                        <asp:BoundField HeaderText="UpdatedBy" DataField="UpdatedBy" />
                        <asp:BoundField HeaderText="FirstName" DataField="FirstName" />
                        <asp:BoundField HeaderText="LastName" DataField="LastName" />
                        <asp:BoundField HeaderText="Organization" DataField="Organization" />
                        <asp:BoundField HeaderText="RelationshipType" DataField="RelationshipType" />
                        <asp:BoundField HeaderText="ContactType" DataField="ContactType" />
                        <asp:BoundField HeaderText="JobTitle" DataField="JobTitle" />
                        <asp:BoundField HeaderText="JobFunction" DataField="JobFunction" />
                        <asp:BoundField HeaderText="DoNotContact" DataField="DoNotContact" />
                        <asp:BoundField HeaderText="OptedInEmail" DataField="OptedInEmail" />
                        <asp:BoundField HeaderText="Description" DataField="Description" />
                        <asp:BoundField HeaderText="Address1" DataField="Address1" />
                        <asp:BoundField HeaderText="Address2" DataField="Address2" />
                        <asp:BoundField HeaderText="City" DataField="City" />
                        <asp:BoundField HeaderText="State" DataField="State" />
                        <asp:BoundField HeaderText="PostCode" DataField="PostCode" />
                        <asp:BoundField HeaderText="Country" DataField="Country" />
                        <asp:BoundField HeaderText="Email" DataField="Email" />
                        <asp:BoundField HeaderText="Website" DataField="Website" />
                        <asp:BoundField HeaderText="OtherSocialProfiles" DataField="OtherSocialProfiles" />
                        <asp:BoundField HeaderText="LinkedinProfile" DataField="LinkedinProfile" />
                        <asp:BoundField HeaderText="ContactName" DataField="ContactName" />
                    </Columns>
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
                <br />
                <asp:Button ID="btnExportToCSV" runat="server" Text="Export Data to CSV" OnClick="btnExportToCSV_Click" Font-Size="Large" />
            </div>
        </div>
    </div>
    
</asp:Content>
