<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewerNotes.aspx.cs" Inherits="Test100Hours3.Viewer.ViewerNotes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Viewer Pages "></asp:Label>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Height="40px" OnClick="Button1_Click" Text="Contacts" Width="200px" Font-Size="X-Large" />
    <asp:Button ID="Button2" runat="server" Height="40px" OnClick="Button2_Click" Text="Notes" Width="200px" Font-Size="X-Large" />
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Font-Size="X-Large" Text="Query Notes" Font-Bold="True"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="DateCreated [FROM]" Font-Size="Large"></asp:Label>
    <asp:TextBox ID="DateFrom" runat="server" Height="16px"></asp:TextBox>
    <asp:Label ID="Label4" runat="server" Text="[TO]" Font-Size="Large"></asp:Label>
    <asp:TextBox ID="DateTo" runat="server" Height="16px"></asp:TextBox>
    <asp:Button ID="Button3" runat="server" Height="28px" Text="Search" Font-Size="Large" OnClick="Button3_Click" />
    <br />
    <asp:Label ID="LabelDate" runat="server" Font-Size="X-Large" Font-Bold="False" Font-Underline="True"></asp:Label>
    <br />
    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="NotesID" DataSourceID="SqlDataSource4" Font-Size="Large">
        <Columns>
            <asp:BoundField DataField="NotesID" HeaderText="NotesID" InsertVisible="False" ReadOnly="True" SortExpression="NotesID" />
            <asp:BoundField DataField="ContactName" HeaderText="ContactName" SortExpression="ContactName" />
            <asp:BoundField DataField="Organization" HeaderText="Organization" SortExpression="Organization" />
            <asp:BoundField DataField="DateCreated" HeaderText="DateCreated" SortExpression="DateCreated" />
            <asp:BoundField DataField="Note" HeaderText="Note" SortExpression="Note" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Notes] WHERE (([DateCreated] &gt;= @DateCreated) AND ([DateCreated] &lt;= @DateCreated2))">
        <SelectParameters>
            <asp:ControlParameter ControlID="DateFrom" DbType="Date" Name="DateCreated" PropertyName="Text" />
            <asp:ControlParameter ControlID="DateTo" DbType="Date" Name="DateCreated2" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:Label ID="Label5" runat="server" Text="ContactName" Font-Size="Large"></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" AutoPostBack="True" DataTextField="ContactName" DataValueField="ContactName" OnDataBound="dropdown_DataBound" Font-Size="Medium" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [ContactName] FROM [Notes] ORDER BY [ContactName]"></asp:SqlDataSource>
    <asp:Label ID="Label6" runat="server" Text="Organization" Font-Size="Large"></asp:Label>
    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="Organization" DataValueField="Organization" OnDataBound="dropdown_DataBound" Font-Size="Medium" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [Organization] FROM [Notes] ORDER BY [Organization]"></asp:SqlDataSource>
    <br />
    <asp:Label ID="Label9" runat="server" Font-Size="X-Large" Font-Bold="False" Font-Underline="True"></asp:Label>
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="NotesID" DataSourceID="SqlDataSource1" Font-Size="Large">
        <Columns>
            <asp:BoundField DataField="NotesID" HeaderText="NotesID" InsertVisible="False" ReadOnly="True" SortExpression="NotesID" />
            <asp:BoundField DataField="ContactName" HeaderText="ContactName" SortExpression="ContactName" />
            <asp:BoundField DataField="Organization" HeaderText="Organization" SortExpression="Organization" />
            <asp:BoundField DataField="DateCreated" HeaderText="DateCreated" SortExpression="DateCreated" />
            <asp:BoundField DataField="Note" HeaderText="Note" SortExpression="Note" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Notes] WHERE (([ContactName] = @ContactName) OR ([Organization] = @Organization))">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="ContactName" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="DropDownList2" Name="Organization" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:Label ID="Label7" runat="server" Font-Size="X-Large" Text="View Notes" Font-Bold="True"></asp:Label>
    <br />
    <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="NotesID" DataSourceID="SqlDataSource5" ForeColor="#333333" GridLines="None" Font-Size="Large">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
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
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Notes] ORDER BY [DateCreated] DESC"></asp:SqlDataSource>
    <br />
    <br />
</asp:Content>
