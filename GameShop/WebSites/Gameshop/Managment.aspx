<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Managment.aspx.cs" Inherits="Managment" %>

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
    <table style="width:100%;">
        <tr>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    DeleteCommand="DELETE FROM [games] WHERE [game_id] = @original_game_id AND [cat_id] = @original_cat_id AND [name] = @original_name AND [short_desc] = @original_short_desc AND [price] = @original_price" 
                    InsertCommand="INSERT INTO [games] ([cat_id], [name], [short_desc], [price]) VALUES (@cat_id, @name, @short_desc, @price)" 
                    SelectCommand="SELECT [game_id], [cat_id], [name], [short_desc], [price] FROM [games]" 
                    
                    UpdateCommand="UPDATE [games] SET [cat_id] = @cat_id, [name] = @name, [short_desc] = @short_desc, [price] = @price WHERE [game_id] = @original_game_id AND [cat_id] = @original_cat_id AND [name] = @original_name AND [short_desc] = @original_short_desc AND [price] = @original_price">
                    <DeleteParameters>
                        <asp:Parameter Name="original_game_id" Type="Int32" />
                        <asp:Parameter Name="original_cat_id" Type="String" />
                        <asp:Parameter Name="original_name" Type="String" />
                        <asp:Parameter Name="original_short_desc" Type="String" />
                        <asp:Parameter Name="original_price" Type="Decimal" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="cat_id" Type="String" />
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="short_desc" Type="String" />
                        <asp:Parameter Name="price" Type="Decimal" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="cat_id" Type="String" />
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="short_desc" Type="String" />
                        <asp:Parameter Name="price" Type="Decimal" />
                        <asp:Parameter Name="original_game_id" Type="Int32" />
                        <asp:Parameter Name="original_cat_id" Type="String" />
                        <asp:Parameter Name="original_name" Type="String" />
                        <asp:Parameter Name="original_short_desc" Type="String" />
                        <asp:Parameter Name="original_price" Type="Decimal" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:Button ID="Button1" runat="server" PostBackUrl="~/Default.aspx" 
                    Text="Back" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="game_id" DataSourceID="SqlDataSource1" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" CellPadding="0">
                    <Columns>
                        <asp:BoundField DataField="game_id" HeaderText="game_id" InsertVisible="False" 
                            ReadOnly="True" SortExpression="game_id" />
                        <asp:BoundField DataField="cat_id" HeaderText="cat_id" 
                            SortExpression="cat_id" />
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="short_desc" HeaderText="short_desc" 
                            SortExpression="short_desc" />
                        <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                        <asp:CommandField ShowEditButton="True" />
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:CommandField ShowDeleteButton="True" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>
                ID:<asp:TextBox ID="Textid" runat="server" MaxLength="50" 
                  ></asp:TextBox>
                <br />
                category :<asp:TextBox ID="Textcat" runat="server" MaxLength="50" 
                    ></asp:TextBox>
                <br />
                Name of the game :<asp:TextBox ID="Textname" runat="server" MaxLength="50"></asp:TextBox>
                <br />
                desc:<asp:TextBox ID="Textdesc" runat="server" MaxLength="50"></asp:TextBox>
&nbsp;Price:
                <asp:TextBox ID="Textprice" runat="server" MaxLength="50"></asp:TextBox>
                <br />
                <asp:Button ID="Add" runat="server" onclick="Add_Click" Text="click to add" />
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblmass" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

