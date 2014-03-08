<%@ Page Title="" Language="C#" MasterPageFile="~/WebInterface/MasterPage.master" AutoEventWireup="true" CodeFile="Pay Payee.aspx.cs" Inherits="WebInterface_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">
    <h1>Pay Payee</h1>
    <form runat="server">
    <table>
        <tr>
            <td style="width: 93px">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
            <td style="width: 131px">
                <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 93px">
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
            <td style="width: 138px">
                <asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList>
            </td>
            
           
                <tr>
                     <td colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Button" />
                         </td>
                </tr>
    </table>
        </form>
</asp:Content>

