<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Author.aspx.cs" Inherits="Test100Hours3.About" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1>    <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Author Pages "></asp:Label>
            <br />
            <asp:Button ID="Button1" runat="server" Font-Size="X-Large" Height="40px" OnClick="Button1_Click" Text="Contacts" Width="200px" />
            <asp:Button ID="Button2" runat="server" Font-Size="X-Large" Height="40px" OnClick="Button2_Click" Text="Notes" Width="200px" />
        </h1>
    </hgroup>
    <asp:Label ID="Label2" runat="server" Font-Size="X-Large" Text="Add/Edit/Delete Contact Record" Font-Bold="True"></asp:Label>
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="ContactID" DataSourceID="SqlDataSource1" Font-Size="Large">
        <EditItemTemplate>
            ContactID:
            <asp:Label ID="ContactIDLabel1" runat="server" Text='<%# Eval("ContactID") %>' />
            <br />
            ContactStatus:
            <asp:TextBox ID="ContactStatusTextBox" runat="server" Text='<%# Bind("ContactStatus") %>' />
            <br />
            DateLastUpdated:
            <asp:TextBox ID="DateLastUpdatedTextBox" runat="server" Text='<%# Bind("DateLastUpdated") %>' />
            <br />
            DateCreated:
            <asp:TextBox ID="DateCreatedTextBox" runat="server" Text='<%# Bind("DateCreated") %>' TextMode="Date" />
            <br />
            CreatedBy:
            <asp:TextBox ID="CreatedByTextBox" runat="server" Text='<%# Bind("CreatedBy") %>' />
            <br />
            UpdatedBy:
            <asp:TextBox ID="UpdatedByTextBox" runat="server" Text='<%# Bind("UpdatedBy") %>' />
            <br />
            FirstName:
            <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>' />
            <br />
            LastName:
            <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' />
            <br />
            Organization:
            <asp:TextBox ID="OrganizationTextBox" runat="server" Text='<%# Bind("Organization") %>' />
            <br />
            RelationshipType:
            <asp:TextBox ID="RelationshipTypeTextBox" runat="server" Text='<%# Bind("RelationshipType") %>' />
            <br />
            ContactType:
            <asp:TextBox ID="ContactTypeTextBox" runat="server" Text='<%# Bind("ContactType") %>' />
            <br />
            JobTitle:
            <asp:TextBox ID="JobTitleTextBox" runat="server" Text='<%# Bind("JobTitle") %>' />
            <br />
            JobFunction:
            <asp:TextBox ID="JobFunctionTextBox" runat="server" Text='<%# Bind("JobFunction") %>' />
            <br />
            DoNotContact:
            <asp:TextBox ID="DoNotContactTextBox" runat="server" Text='<%# Bind("DoNotContact") %>' />
            <br />
            OptedInEmail:
            <asp:TextBox ID="OptedInEmailTextBox" runat="server" Text='<%# Bind("OptedInEmail") %>' />
            <br />
            Description:
            <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
            <br />
            Address1:
            <asp:TextBox ID="Address1TextBox" runat="server" Text='<%# Bind("Address1") %>' />
            <br />
            Address2:
            <asp:TextBox ID="Address2TextBox" runat="server" Text='<%# Bind("Address2") %>' />
            <br />
            City:
            <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
            <br />
            State:
            <asp:TextBox ID="StateTextBox" runat="server" Text='<%# Bind("State") %>' />
            <br />
            PostCode:
            <asp:TextBox ID="PostCodeTextBox" runat="server" Text='<%# Bind("PostCode") %>' />
            <br />
            Country:
            <asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>' />
            <br />
            Email:
            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
            <br />
            Website:
            <asp:TextBox ID="WebsiteTextBox" runat="server" Text='<%# Bind("Website") %>' />
            <br />
            OtherSocialProfiles:
            <asp:TextBox ID="OtherSocialProfilesTextBox" runat="server" Text='<%# Bind("OtherSocialProfiles") %>' />
            <br />
            LinkedinProfile:
            <asp:TextBox ID="LinkedinProfileTextBox" runat="server" Text='<%# Bind("LinkedinProfile") %>' />
            <br />
            ContactName:
            <asp:TextBox ID="ContactNameTextBox" runat="server" Text='<%# Bind("ContactName") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            ContactID:
            <asp:TextBox ID="ContactIDTextBox" runat="server" Text='<%# Bind("ContactID") %>' Height="10px" BorderStyle="Groove" Width="200px" Font-Size="Large" />
            <br />
            ContactStatus:<asp:DropDownList ID="DropDownList1" runat="server" Text='<%# Bind("ContactStatus") %>' Height="24px" Width="199px" DataSourceID="SqlDataSource4" DataTextField="ContactStatus" DataValueField="ContactStatus" Font-Size="Large">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT * FROM [ContactStatus]"></asp:SqlDataSource>
            <br />
            DateLastUpdated:
            <asp:TextBox ID="DateLastUpdatedTextBox" runat="server" Text='<%# Bind("DateLastUpdated") %>' TextMode="DateTime" Height="10px" BorderStyle="Groove" Width="200px" Font-Size="Large" />
            <br />
            DateCreated:
            <asp:TextBox ID="DateCreatedTextBox" runat="server" Text='<%# Bind("DateCreated") %>' Height="10px" BorderStyle="Groove" Width="200px" Font-Size="Large" TextMode="Date" />
            <br />
            CreatedBy:
            <asp:TextBox ID="CreatedByTextBox" runat="server" Text='<%# Bind("CreatedBy") %>' Height="10px" BorderStyle="Groove" Width="200px" Font-Size="Large" />
            <br />
            UpdatedBy:
            <asp:TextBox ID="UpdatedByTextBox" runat="server" Text='<%# Bind("UpdatedBy") %>' Height="10px" BorderStyle="Groove" Width="200px" Font-Size="Large" />
            <br />
            FirstName:
            <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>' Height="10px" BorderStyle="Groove" Width="200px" Font-Size="Large" />
            <br />
            LastName:
            <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' Height="10px" BorderStyle="Groove" Width="200px" Font-Size="Large" />
            <br />
            Organization:
            <asp:TextBox ID="OrganizationTextBox" runat="server" Text='<%# Bind("Organization") %>' Height="10px" BorderStyle="Groove" Width="200px" Font-Size="Large" />
            <br />
            RelationshipType:
            <asp:DropDownList ID="DropDownList2" runat="server" Text='<%# Bind("RelationshipType") %>' Height="24px" Width="200px" DataSourceID="SqlDataSource3" DataTextField="RelationshipType" DataValueField="RelationshipType" Font-Size="Large">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT * FROM [RelationshipType]"></asp:SqlDataSource>
            <br />
            ContactType:
            <asp:DropDownList ID="DropDownList3" runat="server" Text='<%# Bind("ContactType") %>' Height="26px" Width="200px" DataSourceID="SqlDataSource2" DataTextField="ContactType" DataValueField="ContactType" Font-Size="Large">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT * FROM [ContactType]"></asp:SqlDataSource>
            <br />            
            JobTitle:
            <asp:TextBox ID="JobTitleTextBox" runat="server" Text='<%# Bind("JobTitle") %>' Height="10px" Width="200px" BorderStyle="Groove" Font-Size="Large"/>
            <br />
            JobFunction:
            <asp:DropDownList ID="DropDownList4" runat="server" Text='<%# Bind("Jobfunction") %>' Height="24px" Width="200px" DataSourceID="SqlDataSource1" DataTextField="JobFunction" DataValueField="JobFunction" Font-Size="Large">
            </asp:DropDownList>   
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT * FROM [JobFunction]"></asp:SqlDataSource>
            <br />         
            DoNotContact:
            <asp:TextBox ID="DoNotContactTextBox" runat="server" Text='<%# Bind("DoNotContact") %>' Height="10px" BorderStyle="Groove" Width="200px" Font-Size="Large" />
            <br />
            OptedInEmail:
            <asp:TextBox ID="OptedInEmailTextBox" runat="server" Text='<%# Bind("OptedInEmail") %>' Height="10px" BorderStyle="Groove" Width="200px" Font-Size="Large" />
            <br />
            Description:
            <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' Height="10px" BorderStyle="Groove" Width="200px" Font-Size="Large" />
            <br />
            Address1:
            <asp:TextBox ID="Address1TextBox" runat="server" Text='<%# Bind("Address1") %>' Height="10px" BorderStyle="Groove" Width="200px" Font-Size="Large" />
            <br />
            Address2:
            <asp:TextBox ID="Address2TextBox" runat="server" Text='<%# Bind("Address2") %>' Height="10px" BorderStyle="Groove" Width="200px" Font-Size="Large" />
            <br />
            City:
            <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' Height="10px" BorderStyle="Groove" Width="200px" Font-Size="Large" />
            <br />
            State:
            <asp:TextBox ID="StateTextBox" runat="server" Text='<%# Bind("State") %>' Height="10px" BorderStyle="Groove" Width="200px" Font-Size="Large" />
            <br />
            PostCode:
            <asp:TextBox ID="PostCodeTextBox" runat="server" Text='<%# Bind("PostCode") %>' Height="10px" BorderStyle="Groove" Width="200px" Font-Size="Large" />
            <br />
            Country:
            <asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>' Height="10px" BorderStyle="Groove" Width="200px" Font-Size="Large" /> 
            <br />
            Email:
            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' Height="10px" BorderStyle="Groove" Width="200px" Font-Size="Large" />
            <br />
            Website:
            <asp:TextBox ID="WebsiteTextBox" runat="server" Text='<%# Bind("Website") %>' Height="10px" BorderStyle="Groove" Width="200px" Font-Size="Large" />
            <br />
            OtherSocialProfiles:
            <asp:TextBox ID="OtherSocialProfilesTextBox" runat="server" Text='<%# Bind("OtherSocialProfiles") %>' Height="10px" BorderStyle="Groove" Width="200px" Font-Size="Large" />
            <br />
            LinkedinProfile:
            <asp:TextBox ID="LinkedinProfileTextBox" runat="server" Text='<%# Bind("LinkedinProfile") %>' Height="10px" BorderStyle="Groove" Width="200px" Font-Size="Large" />
            <br />
            ContactName:
            <asp:TextBox ID="ContactNameTextBox" runat="server" Text='<%# Bind("ContactName") %>' Height="10px" BorderStyle="Groove" Width="200px" Font-Size="Large" />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            ContactID:
            <asp:Label ID="ContactIDLabel" runat="server" Text='<%# Eval("ContactID") %>' Font-Bold="True" />
            <br />
            ContactStatus:
            <asp:Label ID="ContactStatusLabel" runat="server" Text='<%# Bind("ContactStatus") %>' Font-Bold="True" />
            <br />
            DateLastUpdated:
            <asp:Label ID="DateLastUpdatedLabel" runat="server" Text='<%# Bind("DateLastUpdated") %>' Font-Bold="True" />
            <br />
            DateCreated:
            <asp:Label ID="DateCreatedLabel" runat="server" Text='<%# Bind("DateCreated") %>' Font-Bold="True" />
            <br />
            CreatedBy:
            <asp:Label ID="CreatedByLabel" runat="server" Text='<%# Bind("CreatedBy") %>' Font-Bold="True" />
            <br />
            UpdatedBy:
            <asp:Label ID="UpdatedByLabel" runat="server" Text='<%# Bind("UpdatedBy") %>' Font-Bold="True" />
            <br />
            FirstName:
            <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Bind("FirstName") %>' Font-Bold="True" />
            <br />
            LastName:
            <asp:Label ID="LastNameLabel" runat="server" Text='<%# Bind("LastName") %>' Font-Bold="True" />
            <br />
            Organization:
            <asp:Label ID="OrganizationLabel" runat="server" Text='<%# Bind("Organization") %>' Font-Bold="True" />
            <br />
            RelationshipType:
            <asp:Label ID="RelationshipTypeLabel" runat="server" Text='<%# Bind("RelationshipType") %>' Font-Bold="True" />
            <br />
            ContactType:
            <asp:Label ID="ContactTypeLabel" runat="server" Text='<%# Bind("ContactType") %>' Font-Bold="True" />
            <br />
            JobTitle:
            <asp:Label ID="JobTitleLabel" runat="server" Text='<%# Bind("JobTitle") %>' Font-Bold="True" />
            <br />
            JobFunction:
            <asp:Label ID="JobFunctionLabel" runat="server" Text='<%# Bind("JobFunction") %>' Font-Bold="True" />
            <br />
            DoNotContact:
            <asp:Label ID="DoNotContactLabel" runat="server" Text='<%# Bind("DoNotContact") %>' Font-Bold="True" />
            <br />
            OptedInEmail:
            <asp:Label ID="OptedInEmailLabel" runat="server" Text='<%# Bind("OptedInEmail") %>' Font-Bold="True" />
            <br />
            Description:
            <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Bind("Description") %>' Font-Bold="True" />
            <br />
            Address1:
            <asp:Label ID="Address1Label" runat="server" Text='<%# Bind("Address1") %>' Font-Bold="True" />
            <br />
            Address2:
            <asp:Label ID="Address2Label" runat="server" Text='<%# Bind("Address2") %>' Font-Bold="True" />
            <br />
            City:
            <asp:Label ID="CityLabel" runat="server" Text='<%# Bind("City") %>' Font-Bold="True" />
            <br />
            State:
            <asp:Label ID="StateLabel" runat="server" Text='<%# Bind("State") %>' Font-Bold="True" />
            <br />
            PostCode:
            <asp:Label ID="PostCodeLabel" runat="server" Text='<%# Bind("PostCode") %>' Font-Bold="True" />
            <br />
            Country:
            <asp:Label ID="CountryLabel" runat="server" Text='<%# Bind("Country") %>' Font-Bold="True" />
            <br />
            Email:
            <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' Font-Bold="True" />
            <br />
            Website:
            <asp:Label ID="WebsiteLabel" runat="server" Text='<%# Bind("Website") %>' Font-Bold="True" />
            <br />
            OtherSocialProfiles:
            <asp:Label ID="OtherSocialProfilesLabel" runat="server" Text='<%# Bind("OtherSocialProfiles") %>' Font-Bold="True" />
            <br />
            LinkedinProfile:
            <asp:Label ID="LinkedinProfileLabel" runat="server" Text='<%# Bind("LinkedinProfile") %>' Font-Bold="True" />
            <br />
            ContactName:
            <asp:Label ID="ContactNameLabel" runat="server" Text='<%# Bind("ContactName") %>' Font-Bold="True" />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [EmployeeMaster] WHERE [ContactID] = @original_ContactID" InsertCommand="INSERT INTO [EmployeeMaster] ([ContactID], [ContactStatus], [DateLastUpdated], [DateCreated], [CreatedBy], [UpdatedBy], [FirstName], [LastName], [Organization], [RelationshipType], [ContactType], [JobTitle], [JobFunction], [DoNotContact], [OptedInEmail], [Description], [Address1], [Address2], [City], [State], [PostCode], [Country], [Email], [Website], [OtherSocialProfiles], [LinkedinProfile], [ContactName]) VALUES (@ContactID, @ContactStatus, @DateLastUpdated, @DateCreated, @CreatedBy, @UpdatedBy, @FirstName, @LastName, @Organization, @RelationshipType, @ContactType, @JobTitle, @JobFunction, @DoNotContact, @OptedInEmail, @Description, @Address1, @Address2, @City, @State, @PostCode, @Country, @Email, @Website, @OtherSocialProfiles, @LinkedinProfile, @ContactName)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [EmployeeMaster]" UpdateCommand="UPDATE [EmployeeMaster] SET [ContactStatus] = @ContactStatus, [DateLastUpdated] = @DateLastUpdated, [DateCreated] = @DateCreated, [CreatedBy] = @CreatedBy, [UpdatedBy] = @UpdatedBy, [FirstName] = @FirstName, [LastName] = @LastName, [Organization] = @Organization, [RelationshipType] = @RelationshipType, [ContactType] = @ContactType, [JobTitle] = @JobTitle, [JobFunction] = @JobFunction, [DoNotContact] = @DoNotContact, [OptedInEmail] = @OptedInEmail, [Description] = @Description, [Address1] = @Address1, [Address2] = @Address2, [City] = @City, [State] = @State, [PostCode] = @PostCode, [Country] = @Country, [Email] = @Email, [Website] = @Website, [OtherSocialProfiles] = @OtherSocialProfiles, [LinkedinProfile] = @LinkedinProfile, [ContactName] = @ContactName WHERE [ContactID] = @original_ContactID">
        <DeleteParameters>
            <asp:Parameter Name="original_ContactID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ContactID" Type="String" />
            <asp:Parameter Name="ContactStatus" Type="String" />
            <asp:Parameter Name="DateLastUpdated" Type="String" />
            <asp:Parameter Name="DateCreated" Type="String" />
            <asp:Parameter Name="CreatedBy" Type="String" />
            <asp:Parameter Name="UpdatedBy" Type="String" />
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Organization" Type="String" />
            <asp:Parameter Name="RelationshipType" Type="String" />
            <asp:Parameter Name="ContactType" Type="String" />
            <asp:Parameter Name="JobTitle" Type="String" />
            <asp:Parameter Name="JobFunction" Type="String" />
            <asp:Parameter Name="DoNotContact" Type="String" />
            <asp:Parameter Name="OptedInEmail" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Address1" Type="String" />
            <asp:Parameter Name="Address2" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="PostCode" Type="String" />
            <asp:Parameter Name="Country" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Website" Type="String" />
            <asp:Parameter Name="OtherSocialProfiles" Type="String" />
            <asp:Parameter Name="LinkedinProfile" Type="String" />
            <asp:Parameter Name="ContactName" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ContactStatus" Type="String" />
            <asp:Parameter Name="DateLastUpdated" Type="String" />
            <asp:Parameter Name="DateCreated" Type="String" />
            <asp:Parameter Name="CreatedBy" Type="String" />
            <asp:Parameter Name="UpdatedBy" Type="String" />
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Organization" Type="String" />
            <asp:Parameter Name="RelationshipType" Type="String" />
            <asp:Parameter Name="ContactType" Type="String" />
            <asp:Parameter Name="JobTitle" Type="String" />
            <asp:Parameter Name="JobFunction" Type="String" />
            <asp:Parameter Name="DoNotContact" Type="String" />
            <asp:Parameter Name="OptedInEmail" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Address1" Type="String" />
            <asp:Parameter Name="Address2" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="PostCode" Type="String" />
            <asp:Parameter Name="Country" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Website" Type="String" />
            <asp:Parameter Name="OtherSocialProfiles" Type="String" />
            <asp:Parameter Name="LinkedinProfile" Type="String" />
            <asp:Parameter Name="ContactName" Type="String" />
            <asp:Parameter Name="original_ContactID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:Label ID="Label3" runat="server" Font-Size="X-Large" Text="Edit/Delete Contact Records" Font-Bold="True"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ContactID" DataSourceID="EntityDataSource1" ForeColor="#333333" GridLines="None" Font-Size="Large">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="ContactID" HeaderText="ContactID" ReadOnly="True" SortExpression="ContactID" />
            <asp:BoundField DataField="ContactStatus" HeaderText="ContactStatus" SortExpression="ContactStatus" />
            <asp:BoundField DataField="DateLastUpdated" HeaderText="DateLastUpdated" SortExpression="DateLastUpdated" />
            <asp:BoundField DataField="DateCreated" HeaderText="DateCreated" SortExpression="DateCreated" />
            <asp:BoundField DataField="CreatedBy" HeaderText="CreatedBy" SortExpression="CreatedBy" />
            <asp:BoundField DataField="UpdatedBy" HeaderText="UpdatedBy" SortExpression="UpdatedBy" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="Organization" HeaderText="Organization" SortExpression="Organization" />
            <asp:BoundField DataField="RelationshipType" HeaderText="RelationshipType" SortExpression="RelationshipType" />
            <asp:BoundField DataField="ContactType" HeaderText="ContactType" SortExpression="ContactType" />
            <asp:BoundField DataField="JobTitle" HeaderText="JobTitle" SortExpression="JobTitle" />
            <asp:BoundField DataField="JobFunction" HeaderText="JobFunction" SortExpression="JobFunction" />
            <asp:BoundField DataField="DoNotContact" HeaderText="DoNotContact" SortExpression="DoNotContact" />
            <asp:BoundField DataField="OptedInEmail" HeaderText="OptedInEmail" SortExpression="OptedInEmail" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="Address1" HeaderText="Address1" SortExpression="Address1" />
            <asp:BoundField DataField="Address2" HeaderText="Address2" SortExpression="Address2" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
            <asp:BoundField DataField="PostCode" HeaderText="PostCode" SortExpression="PostCode" />
            <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Website" HeaderText="Website" SortExpression="Website" />
            <asp:BoundField DataField="OtherSocialProfiles" HeaderText="OtherSocialProfiles" SortExpression="OtherSocialProfiles" />
            <asp:BoundField DataField="LinkedinProfile" HeaderText="LinkedinProfile" SortExpression="LinkedinProfile" />
            <asp:BoundField DataField="ContactName" HeaderText="ContactName" SortExpression="ContactName" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
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
    <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=MuDatabaseEntities" DefaultContainerName="MuDatabaseEntities" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="EmployeeMasters">
    </asp:EntityDataSource>
    <br />
    </asp:Content>