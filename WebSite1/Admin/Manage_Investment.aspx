<%@ Page Title="" Language="C#" MasterPageFile="~/WebSite1/Admin/MasterPage_admin.master" AutoEventWireup="true" CodeFile="Manage_Investment.aspx.cs" Inherits="Admin_Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div>
   
        Mange Investment Rates<br />
        <br />
        Current Investment Rates:
    
    </div>
    <p>
&nbsp;Rate of Intrest
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>2.0</asp:ListItem>
            <asp:ListItem>2.2</asp:ListItem>
            <asp:ListItem>3.1</asp:ListItem>
            <asp:ListItem>3.2</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p>
        Type of Accounts<asp:DropDownList ID="DropDownList2" runat="server">
            <asp:ListItem>Check in</asp:ListItem>
            <asp:ListItem>Saving</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p>
        <asp:Button ID="Change_invest" runat="server" onclick="Button1_Click" 
            style="text-align: center" Text="Update" Width="145px" />
    </p>
   
</asp:Content>

