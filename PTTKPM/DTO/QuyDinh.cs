using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PTTKPM.DTO
{
    public class QuyDinh
    {
        int maQuyDinh;

        public int MaQuyDinh
        {
            get { return maQuyDinh; }
            set { maQuyDinh = value; }
        }
        string tenQuyDinh;

        public string TenQuyDinh
        {
            get { return tenQuyDinh; }
            set { tenQuyDinh = value; }
        }
        string noiDungQuyDinh;

        public string NoiDungQuyDinh
        {
            get { return noiDungQuyDinh; }
            set { noiDungQuyDinh = value; }
        }
    }
}
