using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WebInterface_Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            UpdateCaptchaText();
        } 
    }
    
    private void UpdateCaptchaText()
    {
        txtCaptchaText.Text = string.Empty;
        lblStatus.Visible = false;
        Session["Captcha"] = Guid.NewGuid().ToString().Substring(0, 6);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        bool success = false;
        if (Session["Captcha"] != null)
        {
            if (Convert.ToString(Session["Captcha"]) == txtCaptchaText.Text.Trim())
            {
                success = true;
            }
        }

        lblStatus.Visible = true;
        if (success)
        {
            lblStatus.Text = "";
            lblStatus.ForeColor = System.Drawing.Color.Green;
        }
        else
        {
            lblStatus.Text = "Invalid Text";
            lblStatus.ForeColor = System.Drawing.Color.Red;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        UpdateCaptchaText();
    }
}