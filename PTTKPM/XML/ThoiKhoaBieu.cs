using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PTTKPM.XML
{
    class ThoiKhoaBieu
    {
        List<Thu> dsThu = new List<Thu>();

        internal List<Thu> DsThu
        {
            get { return dsThu; }
            set { dsThu = value; }
        }
    }
}
