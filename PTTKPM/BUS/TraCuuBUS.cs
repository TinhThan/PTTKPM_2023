using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using PTTKPM.Common;
using PTTKPM.DTO;
using PTTKPM.DAO;

namespace PTTKPM.BUS
{
    public class TraCuuBUS
    {
        private TraCuuDAO tracuu = new TraCuuDAO();
        public HocSinh[] traCuuHocSinh_BUS(string search, int loaiTraCuu)
        {
            return tracuu.traCuuHocSinh_DAO(search, 1);
        }

    }
}
