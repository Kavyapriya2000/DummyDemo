using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;

namespace DummyDemo
{
    public partial class RegisterationPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Label9.Visible = false;

            }
        }

        protected void submitButton_Click(object sender, EventArgs e)
        {
            String constring = "Data Source=(LocalDB)\\MSSQLLocalDB;Initial Catalog=test2;Integrated Security=True";
            SqlConnection con = new SqlConnection(constring);
            FileUpload1.SaveAs(Server.MapPath("~/UserImages/") + Path.GetFileName(FileUpload1.FileName));
            String link = "UserImages/" + Path.GetFileName(FileUpload1.FileName);

            String query = "Insert into UserDetails values(@name,@email,@password,@mobilenumber,@location,@image)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@name", nameTextBox.Text);
            cmd.Parameters.AddWithValue("@email", emailTextBox.Text);
            cmd.Parameters.AddWithValue("@password", passwordTextBox.Text);
            cmd.Parameters.AddWithValue("@mobilenumber", mobileNumberTextBox.Text);
            cmd.Parameters.AddWithValue("@location", locationTextBox.Text);
            cmd.Parameters.AddWithValue("@image", link);
            con.Open();
            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {

                Label9.Visible = true;
                Label9.ForeColor = System.Drawing.Color.Green;
                Label9.Text = "Data has been saved successfully";
            }
            else
            {
                Label9.Visible = true;
                Label9.ForeColor = System.Drawing.Color.Red;
                Label9.Text = "Data insertion failed";
            }
            con.Close();


        }
    }
}