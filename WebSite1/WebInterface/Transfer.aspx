<%@ Page Title="" Language="C#" MasterPageFile="~/WebInterface/MasterPage.master" AutoEventWireup="true" CodeFile="Transfer.aspx.cs" Inherits="WebInterface_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">
    <h1>Transfer</h1>
    <form id="form1" runat="server">
    <table>
        <tr>
            <td style="width: 122px; height: 45px">


                <asp:Label ID="Label1" runat="server" Text="From"></asp:Label>


            </td>
            <td style="width: 137px; height: 45px">

                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>

            </td>
        </tr>
        <tr>
            <td>

                <asp:Label ID="Label2" runat="server" Text="To"></asp:Label>

            </td>
            <td>

                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Button" />
            </td>
        </tr>
    </table>
    </form>
</asp:Content>

