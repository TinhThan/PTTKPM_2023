using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using PTTKPM.DTO;
using PTTKPM.DAO;

namespace PTTKPM.BUS
{
    class DiemBUS
    {
        private DiemDAO adapterDAO = new DiemDAO();
        public Diem[] getMarkIf_BUS(int maLop, int maMonHoc, int maHocKi)
        {
            return adapterDAO.getMarkIf(maLop, maMonHoc, maHocKi);
        }

        public bool UpdateMark_BUS(Diem[] diem)
        {
            return adapterDAO.UpdateMark(diem);
        }

        public Diem[] getMarkIf_BUS(int maHocSinh, int maHocKi)
        {
            return adapterDAO.getMarkIf(maHocSinh, maHocKi);
        }
    }
}
