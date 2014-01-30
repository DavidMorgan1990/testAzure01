<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OwnerFields.aspx.cs" Inherits="Test100Hours3.Owner.OwnerFields" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <h3>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Owner Pages "></asp:Label>
        &nbsp;</h3>
    <h3>
        <asp:Button ID="Button1" runat="server" Height="40px" OnClick="Button1_Click" Text="Export" Width="200px" Font-Size="X-Large" />
        <asp:Button ID="Button2" runat="server" Height="40px" OnClick="Button2_Click" Text="Edit Fields" Width="200px" Font-Size="X-Large" />
    </h3>
    <p>
        <asp:Label ID="Label2" runat="server" Font-Size="X-Large" Text="Add/Delete Contact Status" Font-Bold="True"></asp:Label>
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ContactStatus" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Font-Size="Large">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
                <asp:BoundField DataField="ContactStatus" HeaderText="ContactStatus" ReadOnly="True" SortExpression="ContactStatus" />
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
    </p>
    <p>
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" CellPadding="4" DataKeyNames="ContactStatus" DataSourceID="SqlDataSource1" ForeColor="#333333" Font-Size="Large">
            <EditItemTemplate>
                ContactStatus:
                <asp:Label ID="ContactStatusLabel1" runat="server" Text='<%# Eval("ContactStatus") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                ContactStatus:
                <asp:TextBox ID="ContactStatusTextBox" runat="server" Text='<%# Bind("ContactStatus") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                ContactStatus:
                <asp:Label ID="ContactStatusLabel" runat="server" Text='<%# Eval("ContactStatus") %>' />
                <br />
                <asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [ContactStatus] WHERE [ContactStatus] = @original_ContactStatus" InsertCommand="INSERT INTO [ContactStatus] ([ContactStatus]) VALUES (@ContactStatus)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [ContactStatus]">
            <DeleteParameters>
                <asp:Parameter Name="original_ContactStatus" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ContactStatus" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:Label ID="Label3" runat="server" Font-Size="X-Large" Text="Add/Delete Relationship Type" Font-Bold="True"></asp:Label>
    </p>
    <p>
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="RelationshipType" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Font-Size="Large">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
                <asp:BoundField DataField="RelationshipType" HeaderText="RelationshipType" ReadOnly="True" SortExpression="RelationshipType" />
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
    </p>
    <p>
        <asp:FormView ID="FormView2" runat="server" AllowPaging="True" CellPadding="4" DataKeyNames="RelationshipType" DataSourceID="SqlDataSource2" ForeColor="#333333" Font-Size="Large">
            <EditItemTemplate>
                RelationshipType:
                <asp:Label ID="RelationshipTypeLabel1" runat="server" Text='<%# Eval("RelationshipType") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                RelationshipType:
                <asp:TextBox ID="RelationshipTypeTextBox" runat="server" Text='<%# Bind("RelationshipType") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                RelationshipType:
                <asp:Label ID="RelationshipTypeLabel" runat="server" Text='<%# Eval("RelationshipType") %>' />
                <br />
                <asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [RelationshipType] WHERE [RelationshipType] = @RelationshipType" InsertCommand="INSERT INTO [RelationshipType] ([RelationshipType]) VALUES (@RelationshipType)" SelectCommand="SELECT * FROM [RelationshipType]">
            <DeleteParameters>
                <asp:Parameter Name="RelationshipType" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="RelationshipType" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:Label ID="Label4" runat="server" Font-Size="X-Large" Text="Add/Delete Contact Type" Font-Bold="True"></asp:Label>
    </p>
    <p>
        <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ContactType" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" Font-Size="Large">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
                <asp:BoundField DataField="ContactType" HeaderText="ContactType" ReadOnly="True" SortExpression="ContactType" />
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
    </p>
    <p>
        <asp:FormView ID="FormView3" runat="server" AllowPaging="True" CellPadding="4" DataKeyNames="ContactType" DataSourceID="SqlDataSource3" ForeColor="#333333" Font-Size="Large">
            <EditItemTemplate>
                ContactType:
                <asp:Label ID="ContactTypeLabel1" runat="server" Text='<%# Eval("ContactType") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                ContactType:
                <asp:TextBox ID="ContactTypeTextBox" runat="server" Text='<%# Bind("ContactType") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                ContactType:
                <asp:Label ID="ContactTypeLabel" runat="server" Text='<%# Eval("ContactType") %>' />
                <br />
                <asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [ContactType] WHERE [ContactType] = @ContactType" InsertCommand="INSERT INTO [ContactType] ([ContactType]) VALUES (@ContactType)" SelectCommand="SELECT * FROM [ContactType]">
            <DeleteParameters>
                <asp:Parameter Name="ContactType" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ContactType" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:Label ID="Label5" runat="server" Font-Size="X-Large" Text="Add/Delete Job Function" Font-Bold="True"></asp:Label>
    </p>
    <p>
        <asp:GridView ID="GridView4" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="JobFunction" DataSourceID="SqlDataSource4" ForeColor="#333333" GridLines="None" Font-Size="Large">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
                <asp:BoundField DataField="JobFunction" HeaderText="JobFunction" ReadOnly="True" SortExpression="JobFunction" />
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
    </p>
    <p>
        <asp:FormView ID="FormView4" runat="server" AllowPaging="True" CellPadding="4" DataKeyNames="JobFunction" DataSourceID="SqlDataSource4" ForeColor="#333333" Font-Size="Large">
            <EditItemTemplate>
                JobFunction:
                <asp:Label ID="JobFunctionLabel1" runat="server" Text='<%# Eval("JobFunction") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                JobFunction:
                <asp:TextBox ID="JobFunctionTextBox" runat="server" Text='<%# Bind("JobFunction") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                JobFunction:
                <asp:Label ID="JobFunctionLabel" runat="server" Text='<%# Eval("JobFunction") %>' />
                <br />
                <asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [JobFunction] WHERE [JobFunction] = @JobFunction" InsertCommand="INSERT INTO [JobFunction] ([JobFunction]) VALUES (@JobFunction)" SelectCommand="SELECT * FROM [JobFunction]">
            <DeleteParameters>
                <asp:Parameter Name="JobFunction" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="JobFunction" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
    </p>
    </asp:Content>
