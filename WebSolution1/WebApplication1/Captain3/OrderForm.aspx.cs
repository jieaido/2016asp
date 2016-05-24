using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Captain3
{
    public partial class OrderForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_OnClick(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                LblResult.Text = @"<br/> Product:" + txtProductName.Text + "<br/>Price:" + txtProductPrice.Text +
                                 "<br/>Quantity:" + txtProductQuantity.Text;
            }
        }
    }
}