<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="games.aspx.cs" Inherits="games" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
body{background-image:url("m/Uncharted.jpg");
    background-color:black ;color:Yellow; 
    background-repeat:no-repeat;
    background-size:cover;
    }
        
        .style3
        {
            width: 176px;
            height: 35px;
            margin-right: 0px;
            margin-top: 95px;
        }
        
    </style>
%<br />
&nbsp;&nbsp;&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
        
        
        SelectCommand="SELECT [cat_id], [name], [long_desc], [price], [large_image], [game_id] FROM [games] WHERE ([game_id] = @game_id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="game_id" QueryStringField="game_idPass" 
                Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
        
    &nbsp;<asp:Button ID="btnback" runat="server"  
    Text="back to the list of games" onclick="btnback_Click" 
        PostBackUrl="~/Default.aspx" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="game_id" 
        DataSourceID="SqlDataSource1" onpageindexchanging="FormView1_PageIndexChanging">
        <EditItemTemplate>
            cat_id:
            <asp:TextBox ID="cat_idTextBox" runat="server" Text='<%# Bind("cat_id") %>' />
            <br />
            name:
            <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
            <br />
            long_desc:
            <asp:TextBox ID="long_descTextBox" runat="server" 
                Text='<%# Bind("long_desc") %>' />
            <br />
            price:
            <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
            <br />
            large_image:
            <asp:TextBox ID="large_imageTextBox" runat="server" 
                Text='<%# Bind("large_image") %>' />
            <br />
            game_id:
            <asp:Label ID="game_idLabel1" runat="server" Text='<%# Eval("game_id") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            cat_id:
            <asp:TextBox ID="cat_idTextBox" runat="server" Text='<%# Bind("cat_id") %>' />
            <br />
            name:
            <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
            <br />
            long_desc:
            <asp:TextBox ID="long_descTextBox" runat="server" 
                Text='<%# Bind("long_desc") %>' />
            <br />
            price:
            <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
            <br />
            large_image:
            <asp:TextBox ID="large_imageTextBox" runat="server" 
                Text='<%# Bind("large_image") %>' />
            <br />

            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            cat_id:
            <asp:Label ID="cat_idLabel" runat="server" Text='<%# Bind("cat_id") %>' />
            <br />
            name:
            <asp:Label ID="nameLabel" runat="server" Text='<%# Bind("name") %>' />
            <br />
            long_desc:
            <asp:Label ID="long_descLabel" runat="server" Text='<%# Bind("long_desc") %>' />
            <br />
            price:
            <asp:Label ID="priceLabel" runat="server" Text='<%# Bind("price") %>' />
            <br />
            large_image:
            <asp:Image ID="Image1" runat="server" 
                ImageUrl='<%# Bind("large_image", "~\m\{0}") %>' />
            <br />
            <a id="addtocartLink" runat="server">
            <img alt="" class="style3" src="m/P.png" /></a>
            <br />

        </ItemTemplate>
    </asp:FormView>
<br />
&nbsp;&nbsp;
&nbsp;
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" DataSourceID="SqlDataSource1" 
        DataKeyNames="game_id" onselectedindexchanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="game_id" HeaderText="game_id" InsertVisible="False" 
                ReadOnly="True" SortExpression="game_id" />
            <asp:BoundField DataField="cat_id" HeaderText="cat_id" 
                SortExpression="cat_id" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="long_desc" HeaderText="long_desc" 
                SortExpression="long_desc" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
            <asp:ImageField DataImageUrlField="large_image" 
                DataImageUrlFormatString="~\m\{0}">
            </asp:ImageField>
        </Columns>
    </asp:GridView>
</asp:Content>

