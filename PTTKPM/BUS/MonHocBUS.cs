using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using PTTKPM.DAO;
using PTTKPM.DTO;

namespace PTTKPM.BUS
{
    class MonHocBUS
    {
        private MonHocDAO adapterDAO = new MonHocDAO();
        public MonHoc[] getAllMH_BUS()
        {
            return adapterDAO.getAllMH();
        }
    }
}
