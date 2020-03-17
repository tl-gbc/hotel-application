using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RoyalInnSuites
{
    public partial class RoyalSuitesInnContent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            if (!IsPostBack)
            {
                if (Session["Reservation"] != null)
                {
                    DisplayReservation();
                }
            }


        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                //PROFILE
                Profile profile = new Profile();
                profile.FirstName = txtFirstName.Text;
                profile.LastName = txtLastName.Text;
                profile.Email = txtEmail.Text;
                profile.Phone = txtPhoneNumber.Text;
                profile.ContactMethod = ddlContactMethod.SelectedValue;
                profile.Province = ddlProvince.SelectedValue;

                Session["Profile"] = profile;
                ProfileRepository pr = new ProfileRepository();
                pr.Insert(profile);

                //RESERVATION
                Reservation reservation = new Reservation();

                reservation.ArrivalDate = Convert.ToDateTime(txtArrival.Text);
                reservation.DepartureDate = Convert.ToDateTime(txtDeparture.Text);
                reservation.SpecialRequests = txtBoxSpecialInstructions.Text;
                reservation.NumOfPeople = Convert.ToInt32(ddlNumberOfPeople.SelectedValue);
                reservation.Email = txtEmail.Text;

                if (rdoKing.Checked)
                    reservation.BedType = "King";
                else if (rdoTwoQueen.Checked)
                    reservation.BedType = "Two Queen";
                else reservation.BedType = "One Queen";

                Session["Reservation"] = reservation;
                ReservationRepository rr = new ReservationRepository();
                rr.Insert(reservation);

                Server.Transfer("~/ConfirmationContent.aspx");
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            this.txtArrival.Text = "";
            this.txtBoxSpecialInstructions.Text = "";
            this.txtDeparture.Text = "";
            this.txtEmail.Text = "";
            this.txtFirstName.Text = "";
            this.txtLastName.Text = "";
            this.txtPhoneNumber.Text = "";
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string message = "";
            if (string.IsNullOrEmpty(this.txtArrival.Text.Trim()))
                message = message + "&nbsp;Arrival Date is required<br>";
            if (string.IsNullOrEmpty(this.txtDeparture.Text.Trim()))
                message = message + "&nbsp;Departure Date is required<br>";
            if (string.IsNullOrEmpty(this.txtFirstName.Text.Trim()))
                message = message + "&nbsp;First Name required<br>";
            if (string.IsNullOrEmpty(this.txtLastName.Text.Trim()))
                message = message + "&nbsp;Last Name required<br>";
            if (string.IsNullOrEmpty(this.txtEmail.Text.Trim()))
                message = message + "&nbsp;Email is required<br>";
            if (string.IsNullOrEmpty(this.txtPhoneNumber.Text.Trim()))
                message = message + "&nbsp;Phone number is required<br>";

            if (message.Length > 0)
            {
                args.IsValid = false;
                ((CustomValidator)source).ErrorMessage = @"&nbsp;Required fields missing:<br>" + message;
            }

        }

        private void DisplayReservation()
        {
            Reservation reservation = (Reservation)Session["Reservation"];
            Profile profile = (Profile)Session["Profile"];

            txtArrival.Text = Convert.ToDateTime(reservation.ArrivalDate).ToString("yyyy-MM-dd");
            txtDeparture.Text = Convert.ToDateTime(reservation.DepartureDate).ToString("yyyy-MM-dd");
            ddlNumberOfPeople.SelectedValue = reservation.NumOfPeople.ToString();

            if (reservation.BedType == "King")
                rdoKing.Checked = true;
            else if (reservation.BedType == "Two Queen")
                rdoTwoQueen.Checked = true;
            else rdoOneQueen.Checked = true;

            txtBoxSpecialInstructions.Text = reservation.SpecialRequests;

            txtFirstName.Text = profile.FirstName;
            txtLastName.Text = profile.LastName;
            txtEmail.Text = profile.Email;
            txtPhoneNumber.Text = profile.Phone;
            ddlContactMethod.Text = profile.ContactMethod;

        }
    }
}