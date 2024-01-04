using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using PTTKPM.DTO;
using System.Data.SqlClient;
using PTTKPM.Common;
using System.Data;

namespace PTTKPM.DAO
{
    public class ThongBaoDAO
    {

        /// <summary>
        /// Tạo thông báo
        /// </summary>
        /// <param name="thongbao"></param>
        public void taoThongBao_DAO(ThongBao thongbao)
        {
            string name_Proc_TaoThongBao = "sp_taoThongBao";
            SqlParameter para1 = new SqlParameter("@tenThongBao", thongbao.TenThongBao);
            SqlParameter para2 = new SqlParameter("@noiDungThongBao", thongbao.NoiDungThongBao);
            SqlParameter para3 = new SqlParameter("@ngayThongBao", thongbao.NgayThongBao);
            DataProvider.executeStoreProcedureQuery(name_Proc_TaoThongBao, para1, para2, para3);
        }

        /// <summary>
        /// Lấy danh sách thông báo từ bảng
        /// </summary>
        /// <param name="bangThongBao"></param>
        /// <returns></returns>
        public ThongBao[] layDanhSachThongBao_Tu_bang(DataTable bangThongBao)
        {
            ThongBao[] dsThongBao = new ThongBao[bangThongBao.Rows.Count];
            for (int i = 0; i < bangThongBao.Rows.Count; i++)
            {
                ThongBao tb = new ThongBao();
                tb.MaThongBao = Convert.ToInt32(bangThongBao.Rows[i]["maThongBao"]);
                tb.TenThongBao = bangThongBao.Rows[i]["tenThongBao"].ToString();
                tb.NgayThongBao = Convert.ToDateTime(bangThongBao.Rows[i]["ngayThongBao"]);
                tb.NoiDungThongBao = bangThongBao.Rows[i]["noiDungThongBao"].ToString();
                dsThongBao[i] = tb;
            }
            return dsThongBao;
        }

        /// <summary>
        /// Lấy tất cả thông báo từ bảng
        /// </summary>
        /// <returns></returns>
        public ThongBao[] layTatCaThongBao_DAO()
        {
            ThongBao[] dsThongBao;
            string name_Proc_LayTatCaThongBao = "sp_layTatCaThongBao";
            DataTable table = DataProvider.executeStoreProcedureQuery(name_Proc_LayTatCaThongBao);
            dsThongBao = layDanhSachThongBao_Tu_bang(table);
            return dsThongBao;
        }

        /// <summary>
        /// Xóa thông báo
        /// </summary>
        /// <param name="maThongBao"></param>
        public void xoaThongBao_MaThongBao_DAO(int maThongBao)
        {
            string name_Proc_XoaThongBao_MaThongBao = "sp_xoaThongBao_MaThongBao";
            SqlParameter para1 = new SqlParameter("@maThongBao", maThongBao);
            DataProvider.executeStoreProcedureNonQuery(name_Proc_XoaThongBao_MaThongBao, para1);
        }
    }
}
