<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
body{background-image:url("m/15.jpg");
    background-color:black ;color:Yellow; 
    background-repeat:no-repeat;
    background-size:cover;
    }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
   
        
    SelectCommand="SELECT featuregames.game_id, featuregames.feature, featuregames.saleprice, games.name, games.price, games.small_image FROM featuregames INNER JOIN games ON featuregames.game_id = games.game_id"></asp:SqlDataSource>
<br />
<asp:DataList ID="DataList1" runat="server" BackColor="White" 
    BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" 
    CellSpacing="1" DataKeyField="game_id" DataSourceID="SqlDataSource1" 
    ForeColor="#0099FF" Height="10px" 
    onselectedindexchanged="DataList1_SelectedIndexChanged" Width="700px">
    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
    <ItemStyle BackColor="#DEDFDE" ForeColor="Black" />
    <ItemTemplate>
        <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>'></asp:Label>
        &gt;&gt;&gt;<asp:Label ID="Label1" runat="server" 
            Text='<%# Eval("price", "{0:C}") %>'></asp:Label>
        &nbsp;But now (&nbsp;
        <asp:Label ID="priceLabel" runat="server" 
            Text='<%# Eval("saleprice", "{0:C}") %>'></asp:Label>
        )&nbsp;<br />&nbsp; [<br />
        <asp:Label ID="featureLabel" runat="server" Text='<%# Eval("feature") %>'></asp:Label>
        &nbsp; ]<br /> <br />
        <asp:Image ID="Image1" runat="server" 
            ImageUrl='<%# bind("small_image", "~\m\{0}") %>' />
        <br />
        <br />
        click
        <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Select" 
            onclick="LinkButton1_Click1">LinkButton</asp:LinkButton>
        &nbsp;<br />
        <br />
    </ItemTemplate>
    <SelectedItemStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
</asp:DataList>
<br />
<br />
<asp:SqlDataSource ID="SqlDataSource3" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    SelectCommand="SELECT * FROM [games] ORDER BY [cat_id]" 
    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>">
</asp:SqlDataSource>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="game_id" DataSourceID="SqlDataSource3" 
    onselectedindexchanged="GridView1_SelectedIndexChanged" 
        HorizontalAlign="Center">
    <Columns>
        <asp:BoundField DataField="game_id" HeaderText="game_id" 
            SortExpression="game_id" InsertVisible="False" ReadOnly="True" />
        <asp:BoundField DataField="name" HeaderText="games" 
            SortExpression="name" />
        <asp:BoundField DataField="short_desc" HeaderText="description" 
            SortExpression="short_desc" />
        <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
        <asp:ImageField DataImageUrlField="small_image" 
            DataImageUrlFormatString="~/m/{0}" ItemStyle-Height="100" ItemStyle-Width="100">
            <ControlStyle Height="200px" Width="200px" />
<ItemStyle Height="100px" Width="100px"></ItemStyle>
        </asp:ImageField>
        <asp:CommandField ShowSelectButton="True" />
    </Columns>
</asp:GridView>
</asp:Content>

