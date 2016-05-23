using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.captain2
{
    public partial class ButtonCommand : System.Web.UI.Page
    {
        public List<string> groceris=new List<string>(); 
        protected void Page_Load(object sender, EventArgs e)
        {
            groceris.Add("Milk");
            groceris.Add("Steak");
            groceris.Add("Fish");

        }

        void Page_PreRender()
        {
            bltGroceies.DataSource = groceris;
            bltGroceies.DataBind(); 
        }

        int SortASC(string x, string y)
        {
            return string.Compare(x, y);
        }

        int SortDSC(string x,string y)
        {
            return SortASC(x, y)*-1;
        }

        protected void Sort_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName=="Sort")
            {
                switch (e.CommandArgument.ToString())
                {
                    case "ASC":
                        groceris.Sort(SortASC);
                        break;
                    case "DSC":
                        groceris.Sort(SortDSC);
                        break;
                }
            }
        }
    }
}