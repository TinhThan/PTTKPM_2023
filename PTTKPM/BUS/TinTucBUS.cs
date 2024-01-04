using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using PTTKPM.DTO;
using PTTKPM.DAO;

namespace PTTKPM.BUS
{
    class TinTucBUS
    {
        private TinTucDAO adapterDAO = new TinTucDAO();
        public ThongBao[] getAllNews_BUS()
        {
            return adapterDAO.getAllNews();
        }
    }
}
