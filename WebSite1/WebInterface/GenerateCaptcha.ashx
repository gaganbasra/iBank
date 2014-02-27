<%@ WebHandler Language="C#" Class="GenerateCaptcha" %>

using System;
using System.Web;
using System.IO;
using System.Web.SessionState;
using System.Drawing;
using System.Drawing.Imaging;

public class GenerateCaptcha : IHttpHandler, IReadOnlySessionState {
    
    public void ProcessRequest (HttpContext context) {
        MemoryStream memStream = new MemoryStream();
        string phrase = Convert.ToString(context.Session["captcha"]);
        
        //Generate an image from the text stored in session
        Bitmap imgCapthca = GenerateImage(220, 70, phrase);
        imgCapthca.Save(memStream, System.Drawing.Imaging.ImageFormat.Jpeg);
        byte[] imgBytes = memStream.GetBuffer();

        imgCapthca.Dispose();
        memStream.Close();
        
        //Write the image as response, so it can be displayed
        context.Response.ContentType = "image/jpeg";
        context.Response.BinaryWrite(imgBytes);
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

    public Bitmap GenerateImage(int Width, int Height, string Phrase)
    {
        Bitmap CaptchaImg = new Bitmap(Width, Height);
        Random Randomizer = new Random();
        Graphics Graphic = Graphics.FromImage(CaptchaImg);
        Graphic.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.HighQuality;
        Graphic.TextRenderingHint = System.Drawing.Text.TextRenderingHint.AntiAlias;
        //Set height and width of captcha image
        Graphic.FillRectangle(new SolidBrush(Color.White), 0, 0, Width, Height);
        //Rotate text a little bit
        Graphic.RotateTransform(-3);
        Graphic.DrawString(Phrase, new Font("Verdana", 30),
            new SolidBrush(Color.Black), 15, 15);
        Graphic.Flush();
        return CaptchaImg;
    }

} 