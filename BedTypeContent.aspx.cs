using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RoyalInnSuites
{
    public partial class BedTypeContent : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DropDownBedTypeConnectionString"].ConnectionString);
                conn.Open();
                string insertQuery = "SELECT * FROM PROFILE WHERE BED_TYPE = @bedtype)";
                SqlCommand cmd = new SqlCommand(insertQuery, conn);
                cmd.Parameters.AddWithValue("@bedtype", DropDownList1.SelectedValue);
                cmd.ExecuteNonQuery();

                Console.Write("successfully executed query for profile with selected bedtypes =" + DropDownList1.SelectedValue);

                conn.Close();
            }
            catch (Exception ex)
            {
                Console.Write("error" + ex.ToString());
            }

            FormView1.DataBind();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}