<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AuthorNotes.aspx.cs" Inherits="Test100Hours3.Author.AuthorNotes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Author Pages"></asp:Label>
    <br />
    <asp:Button ID="Button1" runat="server" Font-Size="X-Large" Height="40px" OnClick="Button1_Click" Text="Contacts" Width="200px" />
    <asp:Button ID="Button2" runat="server" Font-Size="X-Large" Height="40px" OnClick="Button2_Click" Text="Notes" Width="200px" />
    <br />
    <asp:Label ID="Label2" runat="server" Font-Size="X-Large" Text="Add/Edit/Delete Notes Record" Font-Bold="True"></asp:Label>
    <br />
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="NotesID" DataSourceID="SqlDataSource1" Font-Size="Large">
        <EditItemTemplate>
            NotesID:
            <asp:Label ID="NotesIDLabel1" runat="server" Text='<%# Eval("NotesID") %>' />
            <br />
            ContactName:
            <asp:TextBox ID="ContactNameTextBox" runat="server" Text='<%# Bind("ContactName") %>' />
            <br />
            Organization:
            <asp:TextBox ID="OrganizationTextBox" runat="server" Text='<%# Bind("Organization") %>' />
            <br />
            DateCreated:
            <asp:TextBox ID="DateCreatedTextBox" runat="server" Text='<%# Bind("DateCreated") %>' TextMode="Date" />
            <br />
            Note:<br />
            &nbsp;<asp:TextBox ID="NoteTextBox" runat="server" Text='<%# Bind("Note") %>' Height="150px" Rows="100" TextMode="MultiLine" Width="300px" />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            ContactName:<br />
            <asp:DropDownList ID="DropDownList1" Text='<%# Bind("ContactName") %>' runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="ContactName" DataValueField="ContactName" Font-Size="Large" Width="249px"> 
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [ContactName] FROM [EmployeeMaster] ORDER BY [ContactName] DESC"></asp:SqlDataSource>
            &nbsp;<br /> Organization:
            <asp:TextBox ID="OrganizationTextBox" runat="server" Text='<%# Bind("Organization") %>' />
            <br />
            DateCreated:
            <asp:TextBox ID="DateCreatedTextBox" runat="server" Text='<%# Bind("DateCreated") %>' TextMode="Date" />
            <br />
            Note:<br />
            <asp:TextBox ID="NoteTextBox" runat="server" Text='<%# Bind("Note") %>' Height="151px" Rows="100" TextMode="MultiLine" Width="300px" />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            NotesID:
            <asp:Label ID="NotesIDLabel" runat="server" Text='<%# Eval("NotesID") %>' />
            <br />
            ContactName:
            <asp:Label ID="ContactNameLabel" runat="server" Text='<%# Bind("ContactName") %>' />
            <br />
            Organization:
            <asp:Label ID="OrganizationLabel" runat="server" Text='<%# Bind("Organization") %>' />
            <br />
            DateCreated:
            <asp:Label ID="DateCreatedLabel" runat="server" Text='<%# Bind("DateCreated") %>' />
            <br />
            Note:
            <asp:Label ID="NoteLabel" runat="server" Text='<%# Bind("Note") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Notes] WHERE [NotesID] = @NotesID" InsertCommand="INSERT INTO [Notes] ([ContactName], [Organization], [DateCreated], [Note]) VALUES (@ContactName, @Organization, @DateCreated, @Note)" SelectCommand="SELECT * FROM [Notes]" UpdateCommand="UPDATE [Notes] SET [ContactName] = @ContactName, [Organization] = @Organization, [DateCreated] = @DateCreated, [Note] = @Note WHERE [NotesID] = @NotesID">
        <DeleteParameters>
            <asp:Parameter Name="NotesID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ContactName" Type="String" />
            <asp:Parameter Name="Organization" Type="String" />
            <asp:Parameter DbType="Date" Name="DateCreated" />
            <asp:Parameter Name="Note" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ContactName" Type="String" />
            <asp:Parameter Name="Organization" Type="String" />
            <asp:Parameter DbType="Date" Name="DateCreated" />
            <asp:Parameter Name="Note" Type="String" />
            <asp:Parameter Name="NotesID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:Label ID="Label3" runat="server" Font-Size="X-Large" Text="Edit/Delete Notes Record" Font-Bold="True"></asp:Label>
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="NotesID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Font-Size="Large">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="NotesID" HeaderText="NotesID" InsertVisible="False" ReadOnly="True" SortExpression="NotesID" />
            <asp:BoundField DataField="ContactName" HeaderText="ContactName" SortExpression="ContactName" />
            <asp:BoundField DataField="Organization" HeaderText="Organization" SortExpression="Organization" />
            <asp:BoundField DataField="DateCreated" HeaderText="DateCreated" SortExpression="DateCreated" />
            <asp:BoundField DataField="Note" HeaderText="Note" SortExpression="Note" />
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
    <br />
    <br />
    </asp:Content>
