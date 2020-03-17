using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace RoyalInnSuites
{
    public class ReservationRepository : IReservation
    {
        private int SUCCESS = 0;
        private int FAIL = -1;

        public int Delete(int id)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DropDownBedTypeConnectionString"].ConnectionString);
                conn.Open();
                string deleteQuery = "DELETE FROM REPOSITORY WHERE ID=@id)";
                SqlCommand cmd = new SqlCommand(deleteQuery, conn);
                cmd.Parameters.AddWithValue("@id", id);
                cmd.ExecuteNonQuery();

                Console.Write("successfully deleted user with reservation with ID = " + id);

                conn.Close();
                return SUCCESS;
            }
            catch (Exception ex)
            {
                Console.Write("error" + ex.ToString());
            }
            return FAIL;
        }

        public int Insert(Reservation reservation)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DropDownBedTypeConnectionString"].ConnectionString);
                conn.Open();
                string insertQuery = "INSERT INTO RESERVATION(ARRIVAL_DATE,DEPARTURE_DATE,NUM_OF_PEOPLE,BED_TYPE,SPECIAL_INTEREST,EMAIL)values(@arrival,@departure,@numofpeople,@bedType,@special,@email)";
                SqlCommand cmd = new SqlCommand(insertQuery, conn);
                cmd.Parameters.AddWithValue("@arrival", reservation.ArrivalDate);
                cmd.Parameters.AddWithValue("@departure", reservation.DepartureDate);
                cmd.Parameters.AddWithValue("@numofpeople", reservation.NumOfPeople);
                cmd.Parameters.AddWithValue("@bedType", reservation.BedType);
                cmd.Parameters.AddWithValue("@special", reservation.SpecialRequests);
                cmd.Parameters.AddWithValue("@email", reservation.Email);
                cmd.ExecuteNonQuery();

                Console.Write("successfully added reservation");

                conn.Close();
                return SUCCESS;
            }
            catch (Exception ex)
            {
                Console.Write("error" + ex.ToString());
            }
            return FAIL;
        }

        public int Update(Reservation reservation)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DropDownBedTypeConnectionString"].ConnectionString);
                conn.Open();
                string insertQuery = "UPDATE RESERVATION SET ARRIVAL_DATE=@arrival, DEPARTURE_DATE=@departure, NUM_OF_PEOPLE=@numofpeople, BED_TYPE=@bedtypeSPECIAL_REQUEST=@special WHERE ID=@id";
                SqlCommand cmd = new SqlCommand(insertQuery, conn);
                cmd.Parameters.AddWithValue("@id", reservation.id);
                cmd.Parameters.AddWithValue("@arrival", reservation.ArrivalDate);
                cmd.Parameters.AddWithValue("@departure", reservation.DepartureDate);
                cmd.Parameters.AddWithValue("@numofpeople", reservation.NumOfPeople);
                cmd.Parameters.AddWithValue("@bedtype", reservation.BedType);
                cmd.Parameters.AddWithValue("@special", reservation.SpecialRequests);
                cmd.ExecuteNonQuery();

                Console.Write("successfully update reservation");

                conn.Close();
                return SUCCESS;

            }
            catch (Exception ex)
            {
                Console.Write("error" + ex.ToString());
            }
            return FAIL;
        }
    }
}
