<%@ Page Title="" Language="C#" MasterPageFile="~/WebInterface/MasterPage.master" AutoEventWireup="true" CodeFile="Forget Password.aspx.cs" Inherits="WebInterface_Default2" %>
<%@ Register Assembly="MSCaptcha" Namespace="MSCaptcha" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">
    <form id="form1" runat="server">
    <table>
        <tr>
            <td style="width: 120px">

                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Small" Text="Security Question"></asp:Label>

            </td>
            <td style="width: 188px">

                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>

            </td>
        </tr>
        <tr>
            <td style="width: 120px">

                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Small" Text="Answer"></asp:Label>

            </td>
            <td style="width: 188px">

                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>

            </td>
        </tr>
         <tr>
             <td colspan="2" align="center">
              <div align="center" style="border-style: ridge; border-width: thin; width: 250px">
                        <cc1:CaptchaControl ID="ccJoin" runat="server" CaptchaBackgroundNoise="none" 
                                 CaptchaLength="5" CaptchaHeight="60" CaptchaWidth="200" CaptchaLineNoise="None" 
                                 CaptchaMinTimeout="5" CaptchaMaxTimeout="240" 
                                 CustomValidatorErrorMessage="Invalid Captcha" CaptchaChars="ACDEFGHJKLNPQRTUVXYZ23546789" />
                  
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="Try a new code"  ForeColor="#0099CC" onclick="Button1_Click" />
             </div>
            </td>
        </tr>
        <tr>
            <td colspan="2">

                <asp:Button ID="Button2" runat="server" Text="Button" OnClick="Button2_Click" />

            </td>
         
        </tr>
    </table>
    </form>
</asp:Content>

