<%@ Page Title="" Language="C#" MasterPageFile="~/WebInterface/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Default2" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">
    <form runat="server">

   <h1>Login</h1>
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <table>
            <tr>
                <td style="width: 107px">

                    <asp:Label ID="Label1" runat="server" Text="Account Number" Font-Bold="True" Font-Size="Small"></asp:Label>

                </td>
                <td style="width: 180px">

                    <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 0px"></asp:TextBox>

                    <asp:FilteredTextBoxExtender ID="TextBox1_FilteredTextBoxExtender" runat="server" Enabled="True" FilterType="Numbers" TargetControlID="TextBox1">
                    </asp:FilteredTextBoxExtender>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="TextBox1" Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>

                </td>
            </tr>
             <tr>
                <td style="width: 107px; height: 8px;">

                    <asp:Label ID="Label2" runat="server" Text="Password" Font-Bold="True" Font-Size="Small"></asp:Label>

                </td>
                <td style="width: 180px; height: 8px;">

                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>

                </td>
            </tr>
             <tr>
                 <td colspan="2">
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" Font-Bold="True" Font-Size="Small" />

                     <asp:HyperLink ID="HyperLink1" runat="server" Font-Underline="True" ForeColor="Blue" NavigateUrl="~/WebInterface/Forget Password.aspx">Forget Password</asp:HyperLink>

                 </td>
                
            </tr>
        </table>
    </div>
         </form>
</asp:Content>

