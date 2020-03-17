using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RoyalInnSuites
{
    public partial class ConfirmationContent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DisplayReservation();
            }

        }

        protected void btn_ConfirmRequest(object sender, EventArgs e)
        {
            Session.Clear();
            lblConfirmationMessage.Text = "Thank-you for your request.<br/> We will get back to you within 24hrs.";
            //Response.Redirect(Page.ResolveClientUrl("~/RoyalInnSuites.aspx"));
        }

        protected void btn_ModifyRequest(object sender, EventArgs e)
        {
            Server.Transfer("~/RoyalSuitesInnContent.aspx", true);
        }

        private void DisplayReservation()
        {
            Reservation reservation = (Reservation)Session["Reservation"];
            Profile profile = (Profile)Session["Profile"];


            lblArrivalDateResp.Text = reservation.ArrivalDate.ToShortDateString(); ;
            lblDepartureDateResp.Text = reservation.DepartureDate.ToShortDateString(); ;
            lblNumberOfPeopleResp.Text = reservation.NumOfPeople.ToString();
            lblBedTypeResp.Text = reservation.BedType.ToString();
            lblSpecialRequestsResp.Text = reservation.SpecialRequests;

            lblFirstNameResp.Text = profile.FirstName;
            lblLastNameResp.Text = profile.LastName;
            lblEmailResp.Text = profile.Email;
            lblTelephoneResp.Text = profile.Phone;
            lblContactMethodResp.Text = profile.ContactMethod;
        }

    }
}