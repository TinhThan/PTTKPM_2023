using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using PTTKPM.DTO;
using System.Data;
using PTTKPM.Common;
using System.Data.SqlClient;

namespace PTTKPM.DAO
{
    class LopDAO : DaoSupport
    {

        /// <summary>
        /// Tạo đối tượng từ dòng dữ liệu
        /// </summary>
        /// <param name="row"></param>
        /// <returns></returns>
        protected override object createObjectFromDatarow(DataRow row)
        {
            //throw new NotImplementedException();
            Lop lop = new Lop();
            lop.MaGV_ChuNhiem = Convert.ToInt32(row["maGV_ChuNhiem"].ToString());
            lop.MaLop = Convert.ToInt32(row["maLop"].ToString());
            lop.MaKHoi = Convert.ToInt32(row["maKhoi"].ToString());
            lop.TenLop = row["tenLop"].ToString();
            lop.SiSo = Convert.ToInt32(row["siSo"].ToString());
            return lop;
        }

        /// <summary>
        /// Xuất danh sách lớp
        /// </summary>
        /// <returns></returns>
        public Lop[] getAllClass()
        {
            string strSql = "SELECT * FROM Lop";
            DataTable dt = DataProvider.executeQuery(strSql);
            return getListFromDataTable<Lop>(dt);
            //int n = dt.Rows.Count;
            //Lop[] allClass = new Lop[n];
            //for (int i = 0; i < n; i++)
            //{
            //    Lop TK = GetDataFromDataRow(dt, i);
            //    allClass[i] = TK;
            //}
            //return allClass;
        }


        /// <summary>
        /// Procedure số lượng học sinh đạt
        /// </summary>
        /// <param name="maMonHoc"></param>
        /// <param name="maHocKi"></param>
        /// <param name="maLop"></param>
        /// <returns></returns>
        public int soLuongDat(int maMonHoc, int maHocKi, int maLop)
        {
            string nameProc = "sp_SoLuongHocSinhDat";
            SqlParameter[] para = new SqlParameter[3];
            para[0] = new SqlParameter("@maLop", maLop);
            para[1] = new SqlParameter("@maMonHoc", maMonHoc);
            para[2] = new SqlParameter("@maHocKi", maHocKi);
            int n = DataProvider.ExecuteScalarProcedureNonQuery(nameProc, para);
            return n;
        }

        /// <summary>
        /// Số lượng học sinh đạt học kỳ
        /// </summary>
        /// <param name="maHocKi"></param>
        /// <param name="maLop"></param>
        /// <returns></returns>
        public int soLuongDatHocKi(int maHocKi, int maLop)
        {
            string nameProc = "sp_SoLuongHocSinhDatHocKi";
            SqlParameter[] para = new SqlParameter[2];
            para[0] = new SqlParameter("@maLop", maLop);
            para[1] = new SqlParameter("@maHocKi", maHocKi);
            int n = DataProvider.ExecuteScalarProcedureNonQuery(nameProc, para);
            return n;
        }


        /// <summary>
        /// Procesure lấy danh sách lớp
        /// </summary>
        /// <returns></returns>
        public Lop[] layDanhSachLop_DAO()
        {
            Lop[] dsLop;
            string name_Proc_LayDSLop = "sp_layDanhSachLop";
            DataTable bangDSLop = DataProvider.executeStoreProcedureQuery(name_Proc_LayDSLop, null);
            dsLop = layDanhSachLop_Tu_Bang(bangDSLop);
            return dsLop;
        }


        /// <summary>
        /// Lấy danh sách từ bảng
        /// </summary>
        /// <param name="bangDSLop"></param>
        /// <returns></returns>
        public Lop[] layDanhSachLop_Tu_Bang(DataTable bangDSLop)
        {
            Lop[] dsLop = new Lop[bangDSLop.Rows.Count];
            for (int i = 0; i < bangDSLop.Rows.Count; i++)
            {
                Lop lop = new Lop();
                lop.MaLop = Convert.ToInt32(bangDSLop.Rows[i]["maLop"]);
                lop.TenLop = bangDSLop.Rows[i]["tenLop"].ToString();
                lop.SiSo = Convert.ToInt32(bangDSLop.Rows[i]["siSo"]);
                lop.MaKHoi = Convert.ToInt32(bangDSLop.Rows[i]["maKhoi"]);
                lop.MaGV_ChuNhiem = Convert.ToInt32(bangDSLop.Rows[i]["maGV_ChuNhiem"]);
                dsLop[i] = lop;
            }
            return dsLop;
        }


        /// <summary>
        /// Lấy thông tin giáo viên từ mã lớp
        /// </summary>
        /// <param name="maLop"></param>
        /// <returns></returns>
        public string layTenGiaoVien_Tu_MaLop_DAO(int maLop)
        {
            string name_Proc_LayTenGiaoVien_MaLop = "sp_layTenGiaoVien_Tu_MaLop";
            SqlParameter para1 = new SqlParameter("@maLop", maLop);
            DataTable bangDSLop = DataProvider.executeStoreProcedureQuery(name_Proc_LayTenGiaoVien_MaLop, para1);
            if (bangDSLop.Rows.Count != 0)
            {
                return bangDSLop.Rows[0]["hoTen"].ToString();
            }
            return null;
        }


        /// <summary>
        /// Lấy tên lớp từ mã lớp
        /// </summary>
        /// <param name="maLop"></param>
        /// <returns></returns>
        public string layTenLop_Tu_MaLop_DAO(int maLop)
        {
            string name_Proc_LayTenGiaoVien_MaLop = "sp_layTenLop_Tu_MaLop";
            SqlParameter para1 = new SqlParameter("@maLop", maLop);
            DataTable bangDSLop = DataProvider.executeStoreProcedureQuery(name_Proc_LayTenGiaoVien_MaLop, para1);
            if (bangDSLop.Rows.Count != 0)
            {
                return bangDSLop.Rows[0]["tenLop"].ToString();
            }
            return null;
        }

        /// <summary>
        /// Lấy thời khóa biểu từ mã lớp
        /// </summary>
        /// <param name="maLop"></param>
        /// <returns></returns>
        public string layThoiKhoaBieu_Tu_MaLop(int maLop)
        {
            string name_Proc_LayTenGiaoVien_MaLop = "sp_layTenLop_Tu_MaLop";
            SqlParameter para1 = new SqlParameter("@maLop", maLop);
            DataTable bangDSLop = DataProvider.executeStoreProcedureQuery(name_Proc_LayTenGiaoVien_MaLop, para1);
            if (bangDSLop.Rows.Count != 0)
            {
                return bangDSLop.Rows[0]["thoiKhoaBieu"].ToString();
            }
            return null;
        }

    }
}
