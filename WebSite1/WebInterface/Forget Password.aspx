<%@ Page Title="" Language="C#" MasterPageFile="~/WebInterface/MasterPage.master" AutoEventWireup="true" CodeFile="Forget Password.aspx.cs" Inherits="WebInterface_Default2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">
    <style type="text/css">
        .txtInput
        {
            width: 250px;
            height: 28px;
            padding: 3px;
        }
        div
        {
            margin: 5px;
        }
        .validator
        {
            color: Red;
        }
    </style>
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
              <div>
        <fieldset>
            <h3>
                Enter the Text Below</h3>
            <div>
                <img src="GenerateCaptcha.ashx" /><br />
                <asp:TextBox ID="txtCaptchaText" runat="server"></asp:TextBox><br />
                <asp:Label ID="lblStatus" runat="server" Font-Bold="true"></asp:Label><br />
                <asp:Button ID="btnReGenerate_Click" runat="server" Text="Regenerate Captcha"  ForeColor="#0099CC" onclick="Button1_Click" />
            </div>
        </fieldset>
                  </div>
            </td>
        </tr>
        <tr>
            <td colspan="2">

                <asp:Button ID="Submit" runat="server" Text="Button" OnClick="Button2_Click" />

            </td>
         
        </tr>
    </table>
    </form>
</asp:Content>

