using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;

namespace WebApplication1
{
    public partial class exam : System.Web.UI.Page
    {
        int scoreval = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnback_Click(object sender, EventArgs e)
        {
            Response.Redirect("central.aspx");
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            
            string constr = WebConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            int idval = 0;
            string nameval = "";
            try
            {
                con.Open();
                idval = datastore.getid();
                nameval = datastore.getname();
                string str = @"INSERT INTO [dbo].[scoretable]
           ([id]
           ,[name]
           ,[score])
            VALUES
           ("+idval+", '"+nameval+"', "+scoreval+")";
                SqlCommand cmd = new SqlCommand(str, con);                       
                
                cmd.ExecuteNonQuery();
                Response.Redirect("examsub.aspx");
                
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                con.Close();
            }


        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            scoreval = scoreval + 1;
        }

        protected void RadioButton6_CheckedChanged(object sender, EventArgs e)
        {
            scoreval = scoreval + 1;
        }

        protected void RadioButton11_CheckedChanged(object sender, EventArgs e)
        {
            scoreval = scoreval + 1;
        }





        
        
    }
}