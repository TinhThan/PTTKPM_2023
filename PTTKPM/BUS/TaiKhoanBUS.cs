using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using PTTKPM.DAO;
using PTTKPM.DTO;

namespace PTTKPM.BUS
{
    class TaiKhoanBUS
    {
        private TaiKhoanDAO adapterDAO = new TaiKhoanDAO();
        public TaiKhoanDangNhap[] getAllUser_BUS()
        {
            return adapterDAO.getAllUser();
        }
    }
}
