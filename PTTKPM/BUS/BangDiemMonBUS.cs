using PTTKPM.DAO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PTTKPM.BUS
{
    class BangDiemMonBUS
    {
        private BangDiemMonDAO adapterDAO = new BangDiemMonDAO();
        public bool InsertMarkTable_BUS(int maHS, int maDiem, int maMH, int maHK)
        {
            return adapterDAO.InsertMarkTable(maHS, maDiem, maMH, maHK);
        }
    }
}
