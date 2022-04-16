using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class central : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnexam_Click(object sender, EventArgs e)
        {
            int id = datastore.getid();
            int status = datastore.idpresent();
            if (status == 1)
            {
                //Response.Write("<script>alert('attended')</script>");
                Response.Redirect("examover.aspx");
            }
            else
            {
                //Response.Write("<script>alert('not attended')</script>");
                Response.Redirect("exam.aspx");
            }

        }

        protected void btnout_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void btnscore_Click(object sender, EventArgs e)
        {
            int id = datastore.getid();
            int status = datastore.idpresent();
            if (status == 1)
            {
                //Response.Write("<script>alert('5 attended')</script>");
                Response.Redirect("yesscore.aspx");
            }
            else
            {
                //Response.Write("<script>alert('exam attend first')</script>");
                Response.Redirect("noscore.aspx");
            }
        }
    }
}