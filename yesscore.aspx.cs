using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;

namespace WebApplication1
{
    public partial class yesscore : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string constr = WebConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            int idval = 0,scoreval=0;
            string nameval="";
            try
            {
                con.Open();
                idval = datastore.getid();
                string str = "select * from scoretable where id=" + idval + " ";   //"++" //int
                SqlCommand cmd = new SqlCommand(str, con);                         //'"++"' //string
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                cmd.ExecuteNonQuery();
                nameval = dt.Rows[0][1].ToString();
                scoreval = (int)dt.Rows[0][2];
            }
            catch (Exception ex)
            {

            }
            finally
            {
                con.Close();
            }
            id.Text = idval.ToString();
            name.Text = nameval;
            score.Text = scoreval.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        
    }
}