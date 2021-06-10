using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormsTest1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            //write the following code inside the body of html code
            //<body onload="startCountdown(20)">
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //to use this in submit_click remove <body onload="startCountdown(20)"> replace with <body> and uncomment below code
           
            ScriptManager.RegisterStartupScript(this.Page, Page.GetType(),
                "text", "startCountdown(20)", true);
          

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(FileUpload1.HasFile)
            {
                try
                {
                    string filename = Path.GetFileName(FileUpload1.FileName);
                    lblUpload.Text = "Upload Status : File Uploaded !!";
                }
                catch(Exception ex)
                {
                    lblUpload.Text = "Upload Status : The File could not be uploaded. The following error occured : "+ex.Message;
                }
            }
            else
            {
                lblUpload.Text = "Please select file to upload.";
            }
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            
        }

        protected void Upload(object sender, EventArgs e)
        {
            HttpPostedFile postedFile = Request.Files["FileUpload"];

            //Check if File is available.
            if (postedFile != null && postedFile.ContentLength > 0)
            {
                //Save the File.
                //string filePath = Server.MapPath("~/Uploads/") + Path.GetFileName(postedFile.FileName);
                //postedFile.SaveAs(filePath);
                lblMessage.Text = "File Uploaded successfully!!";
            }
            else
            {
                lblMessage.Text = "Select Files to upload...";
            }
        }
    }
}