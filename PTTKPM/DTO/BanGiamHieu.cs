using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PTTKPM.DTO
{
    public class BanGiamHieu
    {
        #region "Variable"
        int maBanGiamHieu;
        string hoTen;
        int maTaiKhoa;
        #endregion

        #region "Method"
        public int MaTaiKhoa
        {
            get { return maTaiKhoa; }
            set { maTaiKhoa = value; }
        }

        public string HoTen
        {
            get { return hoTen; }
            set { hoTen = value; }
        }

        public int MaBanGiamHieu
        {
            get { return maBanGiamHieu; }
            set { maBanGiamHieu = value; }
        }
        #endregion
    }
}
