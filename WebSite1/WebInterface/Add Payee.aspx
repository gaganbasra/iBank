<%@ Page Title="" Language="C#" MasterPageFile="~/WebInterface/MasterPage.master" AutoEventWireup="true" CodeFile="Add Payee.aspx.cs" Inherits="WebInterface_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">
    <h1> Modify Payee</h1>
    <form id="form1" runat="server">
<table>
    <tr>
        <td style="width: 121px">
           Enter Payee Name
        </td>
        <td>

            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

        </td>
        <td>

        &nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Height="20px" Text="Search" />

        </td>
    </tr>
</table>

    </form>

</asp:Content>

