<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Default2" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">
    <form runat="server">

   <h1>Login</h1>
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <table>
            <tr>
                <td style="width: 107px">

                    <asp:Label ID="Label1" runat="server" Text="Account Number"></asp:Label>

                </td>
                <td style="width: 391px">

                    <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 0px"></asp:TextBox>

                    <asp:FilteredTextBoxExtender ID="TextBox1_FilteredTextBoxExtender" runat="server" Enabled="True" FilterType="Numbers" TargetControlID="TextBox1">
                    </asp:FilteredTextBoxExtender>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>

                </td>
            </tr>
             <tr>
                <td style="width: 107px; height: 8px;">

                    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>

                </td>
                <td style="width: 391px; height: 8px;">

                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>

<%--                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="*"></asp:RequiredFieldValidator>--%>

                </td>
            </tr>
             <tr>
                 <td colspan="2">

                     <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />

                 </td>
                
            </tr>
        </table>
    </div>
         </form>
</asp:Content>

