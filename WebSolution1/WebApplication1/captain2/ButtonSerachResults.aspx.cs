using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.captain2
{
    public partial class ButtonSerachResults : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (PreviousPage!=null)
            {
                TextBox txtserach = (TextBox)PreviousPage.FindControl("txtserach");
                lblSerach.Text = string.Format("Serach For:{0}", txtserach.Text);
            }
        }   
    }
}