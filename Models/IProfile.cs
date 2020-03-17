using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RoyalInnSuites
{
    interface IProfile
    {
        int Insert(Profile profile);
        int Delete(string email);
        int Update(Profile profile);
    }
}
