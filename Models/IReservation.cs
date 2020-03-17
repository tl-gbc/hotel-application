using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RoyalInnSuites
{
    interface IReservation
    {
        int Insert(Reservation reservation);
        int Delete(int id);
        int Update(Reservation reservation);
    }
}
