﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.captain2
{
    public partial class textboxautopostback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void textserach_OnTextChanged(object sender, EventArgs e)
        {
            lblserach.Text = "Serach For:" + textserach.Text;
        }
    }
}