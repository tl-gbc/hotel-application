using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RoyalInnSuites
{
    public partial class ProvinceContent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
                
        protected void DetailsView1_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
        {
            //Bind the data changes to the GridView to render immediately
            GridView1.DataBind();

            //close the DetailView by recalibrating GridView selected row to -1 (non-row)
            GridView1.SelectRow(-1);
        }
               
        protected void DetailsView1_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
        {
            GridView1.DataBind();
            GridView1.SelectRow(-1);
        }

        protected void DetailsView1_ItemDeleted(object sender, DetailsViewDeletedEventArgs e)
        {
            GridView1.DataBind();
            GridView1.SelectRow(-1);
        }
    }
    
}