<%@ Page Title="" Language="C#" MasterPageFile="~/WebInterface/MasterPage.master" AutoEventWireup="true" CodeFile="Previous Payment view.aspx.cs" Inherits="WebInterface_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">
    <h1> Previous Payments</h1>
    <table>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server"></asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

