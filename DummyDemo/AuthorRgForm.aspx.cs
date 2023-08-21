using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace DummyDemo
{
    public partial class AuthorRgForm : System.Web.UI.Page
    {
        String constring = "Data Source=(LocalDB)\\MSSQLLocalDB;Initial Catalog=test2;Integrated Security=True";
       
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(constring);
            string FileName = "";
            if (fileupload.PostedFile != null)
            {
                FileName = Path.GetFileName(fileupload.PostedFile.FileName);
                //Save files to disk
                fileupload.SaveAs(Server.MapPath("~/UserImages/" + FileName));

            }




            if (nameTextBox.Text.Length > 0)
            {
             
                SqlCommand cmd = new SqlCommand("insert into authorImg values(@name,@comment,@filename)", con);
                cmd.Parameters.AddWithValue("@name", nameTextBox.Text);
                cmd.Parameters.AddWithValue("@comment", commentTextBox.Text);
                string savepath = "~/UserImages/" + FileName;
                cmd.Parameters.AddWithValue("@filename", savepath);
                con.Open();
                cmd.ExecuteNonQuery();
                GridView2.DataBind();
                con.Close();
                nameTextBox.Text = "";
                Response.Redirect(Request.Url.AbsoluteUri);
            }
            else
            {
                nameTextBox.Text = "You have to type something buddy!";
            }
        }
    }
}