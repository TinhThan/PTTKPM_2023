using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using PTTKPM.DTO;
using PTTKPM.DAO;

namespace PTTKPM.BUS
{
    class HocKiBUS
    {
        private HocKiDAO adapterDAO = new HocKiDAO();
        public HocKi[] getAllHK_BUS()
        {
            return adapterDAO.getAllHK();
        }
    }
}
