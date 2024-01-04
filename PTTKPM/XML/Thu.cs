using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PTTKPM.XML
{
    class Thu
    {
        string tenThu;

        public string TenThu
        {
            get { return tenThu; }
            set { tenThu = value; }
        }
        List<Mon> dsMon = new List<Mon>();

        internal List<Mon> DsMon
        {
            get { return dsMon; }
            set { dsMon = value; }
        }
    }
}
