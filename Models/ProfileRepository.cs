using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace RoyalInnSuites
{
    public class ProfileRepository : IProfile
    {
        private int SUCCESS = 0;
        private int FAIL = -1;

        public int Delete(string email)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DropDownBedTypeConnectionString"].ConnectionString);
                conn.Open();
                string deleteQuery = "DELETE FROM PROFILE WHERE EMAIL=@email)";
                SqlCommand cmd = new SqlCommand(deleteQuery, conn);
                cmd.Parameters.AddWithValue("@email", email);
                cmd.ExecuteNonQuery();

                Console.Write("successfully deleted user with email = " + email);

                conn.Close();
                return SUCCESS;
            }
            catch (Exception ex)
            {
                Console.Write("error" + ex.ToString());
            }
            return FAIL;
        }

        public int Insert(Profile profile)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DropDownBedTypeConnectionString"].ConnectionString);
                conn.Open();
                string insertQuery = "INSERT INTO PROFILE(EMAIL,FIRST_NAME,LAST_NAME,TELEPHONE,CONTACT_METHOD,PROVINCE)values(@email,@firstname,@lastname,@telephone,@contact,@province)";
                SqlCommand cmd = new SqlCommand(insertQuery, conn);
                cmd.Parameters.AddWithValue("@email", profile.Email);
                cmd.Parameters.AddWithValue("@firstname", profile.FirstName);
                cmd.Parameters.AddWithValue("@lastname", profile.LastName);
                cmd.Parameters.AddWithValue("@telephone", profile.Phone);
                cmd.Parameters.AddWithValue("@contact", profile.ContactMethod);
                cmd.Parameters.AddWithValue("@province", profile.Province);
                cmd.ExecuteNonQuery();

                Console.Write("successfully added user profile with email =" + profile.Email);

                conn.Close();
                return SUCCESS;
            }
            catch (Exception ex)
            {
                Console.Write("error" + ex.ToString());
            }
            return FAIL;
        }

        public int Update(Profile profile)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DropDownBedTypeConnectionString"].ConnectionString);
                conn.Open();
                string insertQuery = "UPDATE PROFILE SET FIRST_NAME=@firstname, LAST_NAME=@lastname, TELEPHONE=@phone, CONTACT_METHOD = @contact, PROVINCE=@province WHERE EMAIL=@email";
                SqlCommand cmd = new SqlCommand(insertQuery, conn);
                cmd.Parameters.AddWithValue("@email", profile.Email);
                cmd.Parameters.AddWithValue("@firstname", profile.FirstName);
                cmd.Parameters.AddWithValue("@lastname", profile.LastName);
                cmd.Parameters.AddWithValue("@telephone", profile.Phone);
                cmd.Parameters.AddWithValue("@contact", profile.ContactMethod);
                cmd.Parameters.AddWithValue("@province", profile.Province);
                cmd.ExecuteNonQuery();

                Console.Write("successfully updated profile with email =" + profile.Email);

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