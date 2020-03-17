using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RoyalInnSuites
{
    public partial class Reservation
    {
        public int id { get; set; }
        public DateTime ArrivalDate { get; set; }
        public DateTime DepartureDate { get; set; }
        public int NumOfDays { get; set; }
        public int NumOfPeople { get; set; }
        public string BedType { get; set; }
        public string SpecialRequests { get; set; }
        public string Email { get; set; }
        
    }
}
