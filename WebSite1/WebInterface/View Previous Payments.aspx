<%@ Page Title="" Language="C#" MasterPageFile="~/WebInterface/MasterPage.master" AutoEventWireup="true" CodeFile="View Previous Payments.aspx.cs" Inherits="WebInterface_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">
    <h1>
        Previous Payments
    </h1>
    <form runat="server">
        <table>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server">

                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Search" />
            </td>

        </tr>
    </table>
    </form>
</asp:Content>

