using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2.Captain3
{
    public partial class ShowCustomValidator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void valCommnets_OnServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = args.Value.Length <= 10;
        }
    }
}