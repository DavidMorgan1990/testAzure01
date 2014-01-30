<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Viewer.aspx.cs" Inherits="Test100Hours3.Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Viewer Pages "></asp:Label>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Height="40px" Text="Contacts" Width="200px" OnClick="Button1_Click" Font-Size="X-Large" />
    <asp:Button ID="Button2" runat="server" Height="40px" Text="Notes" Width="200px" OnClick="Button2_Click" Font-Size="X-Large" />
    <br />
    <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Query Contacts"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label17" runat="server" Text="Contact Name" Font-Size="Large"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" Height="16px"></asp:TextBox>
    <asp:Button ID="Button3" runat="server" Height="33px" Text="Search" Font-Size="Large" Width="150px" OnClick="Button3_Click" />
    <br />
    <asp:Label ID="Label18" runat="server" Text="Organization" Font-Size="Large"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server" Height="16px"></asp:TextBox>
    <asp:Button ID="Button4" runat="server" Height="33px" Text="Search" Font-Size="Large" Width="150px" OnClick="Button4_Click" />
    <br />
    <asp:Label ID="Label19" runat="server" Text="JobTitle" Font-Size="Large"></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server" Height="16px"></asp:TextBox>
    <asp:Button ID="Button5" runat="server" Height="32px" Text="Search" Font-Size="Large" Width="150px" OnClick="Button5_Click" />
    <br />
    <asp:Label ID="Label20" runat="server" Text="Email" Font-Size="Large"></asp:Label>
    <asp:TextBox ID="TextBox4" runat="server" Height="16px"></asp:TextBox>
    <asp:Button ID="Button6" runat="server" Height="33px" Text="Search" Font-Size="Large" Width="150px" OnClick="Button6_Click" />
    <br />
    <br />
    <asp:Label ID="LabelSearch" runat="server" Font-Bold="False" Font-Size="Large" Font-Underline="True"></asp:Label>
    <asp:GridView ID="GridView3" runat="server">
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource16" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [EmployeeMaster] WHERE ([Organization] LIKE '%' + @Organization + '%')">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox2" Name="Organization" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource17" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [EmployeeMaster] WHERE ([JobTitle] LIKE '%' + @JobTitle + '%')">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox3" Name="JobTitle" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource18" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [EmployeeMaster] WHERE ([Email] LIKE '%' + @Email + '%')">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox4" Name="Email" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [EmployeeMaster] WHERE (([ContactName] LIKE '%' + @ContactName + '%'))">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="ContactName" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:Label ID="Label1" runat="server" Text="DateLastUpdated" Font-Size="Large"></asp:Label>
    <asp:DropDownList ID="ddDateLastUpdated" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4" DataValueField="DateLastUpdated" DataTextField="DateLastUpdated" OnDataBound="dropdown_DataBound" style="width: 200px" Font-Size="Medium" OnSelectedIndexChanged="ddDateLastUpdated_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [DateLastUpdated] FROM [EmployeeMaster] ORDER BY [DateLastUpdated] DESC"></asp:SqlDataSource>
    <asp:Label ID="Label2" runat="server" Text="UpdatedBy" Font-Size="Large"></asp:Label>
    <asp:DropDownList ID="ddUpdatedBy" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource5" DataValueField="UpdatedBy" DataTextField="UpdatedBy" OnDataBound="dropdown_DataBound" style="width: 200px" Font-Size="Medium" OnSelectedIndexChanged="ddUpdatedBy_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [UpdatedBy] FROM [EmployeeMaster]"></asp:SqlDataSource>
    &nbsp;<asp:Label ID="Label9" runat="server" Text="JobFunction" Font-Size="Large"></asp:Label>
    <asp:DropDownList ID="ddJobFunction" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource6" DataValueField="JobFunction" DataTextField="JobFunction" OnDataBound="dropdown_DataBound" style="width: 200px" Font-Size="Medium" OnSelectedIndexChanged="ddJobFunction_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [JobFunction] FROM [EmployeeMaster]"></asp:SqlDataSource>
    <asp:Label ID="Label3" runat="server" Text="ContactStatus" Font-Size="Large"></asp:Label>
    <asp:DropDownList ID="ddContactStatus" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource7" DataValueField="ContactStatus" DataTextField="ContactStatus" OnDataBound="dropdown_DataBound" style="width: 200px" Font-Size="Medium" OnSelectedIndexChanged="ddContactStatus_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [ContactStatus] FROM [EmployeeMaster]"></asp:SqlDataSource>
    <asp:Label ID="Label4" runat="server" Text="Organization" Font-Size="Large"></asp:Label>
    <asp:DropDownList ID="ddOrganization" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource8" DataValueField="Organization" DataTextField="Organization" OnDataBound="dropdown_DataBound" style="width: 200px" Font-Size="Medium" OnSelectedIndexChanged="ddOrganization_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [Organization] FROM [EmployeeMaster]"></asp:SqlDataSource>
    &nbsp;<asp:Label ID="label10" runat="server" Text="City" Font-Size="Large"></asp:Label>
    <asp:DropDownList ID="ddCity" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource9" DataValueField="City" DataTextField="City" OnDataBound="dropdown_DataBound" style="width: 200px" Font-Size="Medium" OnSelectedIndexChanged="ddCity_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [City] FROM [EmployeeMaster]"></asp:SqlDataSource>
    <asp:Label ID="Label5" runat="server" Text="ContactName" Font-Size="Large"></asp:Label>
    <asp:DropDownList ID="ddContactName" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource10" DataValueField="ContactName" DataTextField="ContactName" OnDataBound="dropdown_DataBound" style="width: 200px" Font-Size="Medium" OnSelectedIndexChanged="ddContactName_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [ContactName] FROM [EmployeeMaster]"></asp:SqlDataSource>
    &nbsp;<asp:Label ID="Label6" runat="server" Text="RelationshipType" Font-Size="Large"></asp:Label>
&nbsp;<asp:DropDownList ID="ddRelationshipType" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource11" DataValueField="RelationshipType" DataTextField="RelationshipType" OnDataBound="dropdown_DataBound" style="width: 200px" Font-Size="Medium" OnSelectedIndexChanged="ddRelationshipType_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource11" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [RelationshipType] FROM [EmployeeMaster]"></asp:SqlDataSource>
    <asp:Label ID="Label11" runat="server" Text="Country" Font-Size="Large"></asp:Label>
&nbsp;<asp:DropDownList ID="ddCountry" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource12" DataValueField="Country" DataTextField="Country" OnDataBound="dropdown_DataBound" style="width: 200px" Font-Size="Medium" OnSelectedIndexChanged="ddCountry_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource12" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [Country] FROM [EmployeeMaster]"></asp:SqlDataSource>
    <asp:Label ID="Label7" runat="server" Text="ContactType" Font-Size="Large"></asp:Label>
    <asp:DropDownList ID="ddContactType" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource13" DataValueField="ContactType" DataTextField="ContactType" OnDataBound="dropdown_DataBound" style="width: 200px" Font-Size="Medium" OnSelectedIndexChanged="ddContactType_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource13" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [ContactType] FROM [EmployeeMaster]"></asp:SqlDataSource>
&nbsp;<asp:Label ID="Label8" runat="server" Text="JobTitle" Font-Size="Large"></asp:Label>
    <asp:DropDownList ID="ddJobTitle" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource14" DataValueField="JobTitle" DataTextField="JobTitle" OnDataBound="dropdown_DataBound" style="width: 200px" Font-Size="Medium" OnSelectedIndexChanged="ddJobTitle_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource14" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [JobTitle] FROM [EmployeeMaster]"></asp:SqlDataSource>
    <asp:Label ID="Label12" runat="server" Text="Email" Font-Size="Large"></asp:Label>
    <asp:DropDownList ID="ddEmail" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource15" DataValueField="Email" DataTextField="Email" OnDataBound="dropdown_DataBound" style="width: 200px" Font-Size="Medium" OnSelectedIndexChanged="ddEmail_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource15" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [Email] FROM [EmployeeMaster]"></asp:SqlDataSource>
    <br />
    <br />
    <asp:Label ID="LabelDd" runat="server" Font-Bold="False" Font-Size="Large" Font-Underline="True"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ContactID" DataSourceID="SqlDataSource1" Font-Size="Large">
        <Columns>
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
    </asp:GridView>
    &nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [EmployeeMaster] WHERE (([DateLastUpdated] = @DateLastUpdated) OR ([UpdatedBy] = @UpdatedBy) OR ([JobFunction] = @JobFunction) OR ([ContactStatus] = @ContactStatus) OR ([Organization] = @Organization) OR ([City] = @City) OR ([ContactName] = @ContactName) OR ([RelationshipType] = @RelationshipType) OR ([Country] = @Country) OR ([ContactType] = @ContactType)
 OR ([JobTitle] = @JobTitle) OR ([Email] = @Email))">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddDateLastUpdated" Name="DateLastUpdated" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="ddUpdatedBy" Name="UpdatedBy" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="ddJobFunction" Name="JobFunction" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="ddContactStatus" Name="ContactStatus" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="ddOrganization" Name="Organization" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="ddCity" Name="City" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="ddContactName" Name="ContactName" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="ddRelationshipType" Name="RelationshipType" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="ddCountry" Name="Country" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="ddContactType" Name="ContactType" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="ddJobTitle" Name="JobTitle" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="ddEmail" Name="Email" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Size="X-Large" Text="View Contacts"></asp:Label>
    &nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;<br />
    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ContactID" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" Font-Size="Large">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
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
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [EmployeeMaster]"></asp:SqlDataSource>
    <br />
    <br />
</asp:Content>