using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

namespace WebApplication7
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                MailMessage poruka = new MailMessage(txtemail.Text, "gymneverclose@gmail.com");
                poruka.Subject = txtnaslov.Text;
                poruka.IsBodyHtml = true;
                poruka.Body = "Posiljatelj: "+ txtemail.Text + "<br/>" + txtporuka.Text;
                

                SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
                client.EnableSsl = true;
                client.Credentials = new System.Net.NetworkCredential("gymneverclose@gmail.com", "5mUV8Wrv");
                client.Send(poruka);
                ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Poruka uspješno poslana. Hvala.')", true);
                txtime.Text = "";
                txtemail.Text = "";
                txtnaslov.Text = "";
                txtporuka.Text = "";
                txtime.Enabled = false;
                txtemail.Enabled = false;
                txtnaslov.Enabled = false;
                txtporuka.Enabled = false;
            }
            catch
            {
                lblsubmit.Text = "Greška. Poruka nije poslana.";
            }
            



        }
    }
}