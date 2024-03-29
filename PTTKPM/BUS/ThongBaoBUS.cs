﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PTTKPM.DTO;
using PTTKPM.DAO;

namespace PTTKPM.BUS
{
    public class ThongBaoBUS
    {
        private ThongBaoDAO thongbao_DAO = new ThongBaoDAO();
        public void taoThongBao_BUS(ThongBao thongbao)
        {
            thongbao_DAO.taoThongBao_DAO(thongbao);
        }
        public ThongBao[] layTatCaThongBao_BUS()
        {
            return thongbao_DAO.layTatCaThongBao_DAO();
        }
        public void xoaThongBao_MaThongBao_BUS(int maThongBao)
        {
            thongbao_DAO.xoaThongBao_MaThongBao_DAO(maThongBao);
        }
    }
}
