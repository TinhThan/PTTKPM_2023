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
    class HocSinhDAO : DaoSupport
    {
        /// <summary>
        /// Lấy dữ liệu từng học sinh
        /// </summary>
        /// <param name="dt"></param>
        /// <param name="i"></param>
        /// <returns></returns>
        private HocSinh GetDataFromDataRow(DataTable dt, int i)
        {
            HocSinh HS = new HocSinh();
            HS.MaHocSinh = Convert.ToInt32(dt.Rows[i]["maHocSinh"].ToString());
            HS.MaLop = Convert.ToInt32(dt.Rows[i]["maLop"].ToString());
            HS.MaTaiKhoan = Convert.ToInt32(dt.Rows[i]["maTaiKhoan"].ToString());
            HS.HoTen = dt.Rows[i]["hoTen"].ToString();
            HS.GioiTinh = Convert.ToBoolean(dt.Rows[i]["gioiTinh"].ToString());
            HS.NgaySinh = Convert.ToDateTime(dt.Rows[i]["ngaySinh"].ToString());
            HS.Email = dt.Rows[i]["email"].ToString();
            HS.Diachi = dt.Rows[i]["diaChi"].ToString();
            return HS;
        }

        /// <summary>
        /// Tao đối tượng học sinh
        /// </summary>
        /// <param name="row"></param>
        /// <returns></returns>
        protected override object createObjectFromDatarow(DataRow row)
        {
            HocSinh HS = new HocSinh();
            HS.MaHocSinh = Convert.ToInt32(row["maHocSinh"].ToString());
            HS.MaLop = Convert.ToInt32(row["maLop"].ToString());
            HS.MaTaiKhoan = Convert.ToInt32(row["maTaiKhoan"].ToString());
            HS.HoTen = row["hoTen"].ToString();
            HS.GioiTinh = Convert.ToBoolean(row["gioiTinh"].ToString());
            HS.NgaySinh = Convert.ToDateTime(row["ngaySinh"].ToString());
            HS.Email = row["email"].ToString();
            HS.Diachi = row["diaChi"].ToString();
            return HS;
        }

        /// <summary>
        /// Xuất danh sách học sinh
        /// </summary>
        /// <returns></returns>
        public HocSinh[] getAllStudent()
        {
            string strSql = "SELECT * FROM HocSinh";
            DataTable dt = DataProvider.executeQuery(strSql);
            //int n = dt.Rows.Count;
            //HocSinh[] allStudent = new HocSinh[n];
            //for (int i = 0; i < n; i++)
            //{
            //    HocSinh TK = GetDataFromDataRow(dt, i);
            //    allStudent[i] = TK;
            //}
            return getListFromDataTable<HocSinh>(dt);
            //return allStudent;
        }

        /// <summary>
        /// Xuất danh sách học sinh của 1 lớp theo môn học
        /// </summary>
        /// <param name="maLop"></param>
        /// <param name="maMonHoc"></param>
        /// <param name="maHocKi"></param>
        /// <returns></returns>
        public HocSinh[] getStudentIf(int maLop, int maMonHoc, int maHocKi)
        {
            string nameProc = "sp_LayDanhSachHocSinhCua1LopTheoMonHoc";
            SqlParameter[] para = new SqlParameter[3];
            para[0] = new SqlParameter("@maLop", maLop);
            para[1] = new SqlParameter("@maMonHoc", maMonHoc);
            para[2] = new SqlParameter("@maHocKi", maHocKi);

            DataTable dt = DataProvider.executeStoreProcedureQuery(nameProc, para);
            return getListFromDataTable<HocSinh>(dt);

            //int n = dt.Rows.Count;
            //HocSinh[] allStudent = new HocSinh[n];
            //for (int i = 0; i < n; i++)
            //{
            //    HocSinh TK = GetDataFromDataRow(dt, i);
            //    allStudent[i] = TK;
            //}
            //return allStudent;
        }

        /// <summary>
        /// Xuất thông tin từ tài khoản
        /// </summary>
        /// <param name="maTaiKhoan"></param>
        /// <returns></returns>
        public HocSinh getStudentIf(int maTaiKhoan)
        {
            string nameProc = "sp_LayThongTinHocSinhTuTaiKhoan";
            SqlParameter[] para = new SqlParameter[1];
            para[0] = new SqlParameter("@maTK", maTaiKhoan);
            DataTable dt = DataProvider.executeStoreProcedureQuery(nameProc, para);
            int n = dt.Rows.Count;
            HocSinh HS = new HocSinh();
            if (n == 1)
            {
                HS = GetDataFromDataRow(dt, 0);
                return HS;
            }
            else
            {
                return null;
            }

        }

        /// <summary>
        /// lấy mã tài khoản từ bảng tài khoản( lấy theo tên đăng nhập)
        /// </summary>
        /// <param name="bangMaTaiKhoan"></param>
        /// <returns></returns>
        public int layMaTaiKhoan_TuBang_MaTaiKhoan(DataTable bangMaTaiKhoan)
        {
            return Convert.ToInt32(bangMaTaiKhoan.Rows[0]["maTaiKhoan"]);
        }


        /// <summary>
        /// lấy mã tài tài khoản học sinh
        /// </summary>
        /// <param name="bangMaTaiKhoan"></param>
        /// <returns></returns>
        public int layMaTaiKhoanHS_TuBang_MaTaiKhoan(DataTable bangMaTaiKhoan)
        {
            return Convert.ToInt32(bangMaTaiKhoan.Rows[0]["maTaiKhoan"]);
        }

        /// <summary>
        /// Procedure lấy tên lớp từ mã học sinh
        /// </summary>
        /// <param name="hocsinh"></param>
        /// <returns></returns>
        public string layTenLop_TuHocSinh_DAO(HocSinh hocsinh)
        {
            string nameProc_LayDSHocSinh_DaCoLop = "sp_layTenLop_TuHocSinh";
            SqlParameter para1 = new SqlParameter("@maHocSinh", hocsinh.MaHocSinh);
            DataTable bangDSHocSinh = DataProvider.executeStoreProcedureQuery(nameProc_LayDSHocSinh_DaCoLop, para1);
            return bangDSHocSinh.Rows[0]["tenLop"].ToString();
        }

        /// <summary>
        /// Lấy mã lớp từ mã học sinh
        /// </summary>
        /// <param name="hocsinh"></param>
        /// <returns></returns>
        public int layMaLop_TuHocSinh_DAO(HocSinh hocsinh)
        {
            string nameProc_LayDSHocSinh_DaCoLop = "sp_layTenLop_TuHocSinh";
            SqlParameter para1 = new SqlParameter("@maHocSinh", hocsinh.MaHocSinh);
            DataTable bangDSHocSinh = DataProvider.executeStoreProcedureQuery(nameProc_LayDSHocSinh_DaCoLop, para1);
            return Convert.ToInt32(bangDSHocSinh.Rows[0]["maLop"]);
        }

        /// <summary>
        /// Procedure tiếp nahanj học sinh
        /// </summary>
        /// <param name="hocsinh"></param>
        /// <returns></returns>
        public bool tiepNhanHocSinhDAO(HocSinh hocsinh)
        {
            string nameProc_TNHocSinh = "sp_tiepNhanHocSinh";
            string nameProc_ThemTaiKhoan = "sp_them_TaiKhoanDangNhap";
            string nameProc_LayMaTaiKhoan = "sp_layMaTaiKhoan_TheoTenTK";

            //------------------
            SqlParameter pa1 = new SqlParameter("@tenTaiKhoan", hocsinh.Email.ToLower());
            SqlParameter pa2 = new SqlParameter("@matKhau", hocsinh.Email.ToString());
            SqlParameter pa3 = new SqlParameter("@loaiTaiKhoan", 3);
            DataProvider.executeStoreProcedureNonQuery(nameProc_ThemTaiKhoan, pa1, pa2, pa3);
            SqlParameter pa = new SqlParameter("@tenTaiKhoan", hocsinh.Email.ToLower());
            DataTable bangMaTaiKhoan = DataProvider.executeStoreProcedureQuery(nameProc_LayMaTaiKhoan, pa);
            hocsinh.MaTaiKhoan = layMaTaiKhoan_TuBang_MaTaiKhoan(bangMaTaiKhoan);
            //-----------------
            SqlParameter para1 = new SqlParameter("@hoTen", hocsinh.HoTen);
            SqlParameter para2 = new SqlParameter("@ngaySinh", hocsinh.NgaySinh);
            SqlParameter para3 = new SqlParameter("@gioiTinh", hocsinh.GioiTinh);
            SqlParameter para4 = new SqlParameter("@email", hocsinh.Email);
            SqlParameter para5 = new SqlParameter("@diaChi", hocsinh.Diachi);
            SqlParameter para6 = new SqlParameter("@maTaiKhoan", hocsinh.MaTaiKhoan);

            int ketqua = DataProvider.executeStoreProcedureNonQuery(nameProc_TNHocSinh, para1, para2, para3, para4, para5, para6);
            if (ketqua != 0)
            {
                return true;
            }
            return false;
        }

        /// <summary>
        /// Lấy danh sách học sinh từ bảng dữ liệu
        /// </summary>
        /// <param name="bangDSHocSinh"></param>
        /// <returns></returns>
        public HocSinh[] layDanhSachHocSinh_Tu_Bang(DataTable bangDSHocSinh)
        {
            HocSinh[] dsHocSinh = new HocSinh[bangDSHocSinh.Rows.Count];
            for (int i = 0; i < bangDSHocSinh.Rows.Count; i++)
            {
                HocSinh hs = new HocSinh();
                string a = bangDSHocSinh.Rows[i]["hoTen"].ToString();
                hs.HoTen = bangDSHocSinh.Rows[i]["hoTen"].ToString();
                hs.NgaySinh = Convert.ToDateTime(bangDSHocSinh.Rows[i]["ngaySinh"]);
                hs.Diachi = bangDSHocSinh.Rows[i]["diaChi"].ToString();
                hs.Email = bangDSHocSinh.Rows[i]["email"].ToString();
                hs.MaTaiKhoan = Convert.ToInt32(bangDSHocSinh.Rows[i]["maTaiKhoan"]);
                //int l = Convert.ToInt32(bangDSHocSinh.Rows[i]["maLop"]);
                //hs.MaLop = Convert.ToInt32(bangDSHocSinh.Rows[i]["maLop"]);
                hs.GioiTinh = Convert.ToBoolean(bangDSHocSinh.Rows[i]["gioiTinh"]);
                hs.MaHocSinh = Convert.ToInt32(bangDSHocSinh.Rows[i]["maHocSinh"]);
                dsHocSinh[i] = hs;
            }
            return dsHocSinh;
        }

        /// <summary>
        /// Lấy danh sách học sinh đã có lớp từ bảng
        /// </summary>
        /// <param name="bangDSHocSinh"></param>
        /// <returns></returns>
        public HocSinh[] layDanhSachHocSinh_DaCoLop_TuBang(DataTable bangDSHocSinh)
        {
            HocSinh[] dsHocSinh = new HocSinh[bangDSHocSinh.Rows.Count];
            for (int i = 0; i < bangDSHocSinh.Rows.Count; i++)
            {
                HocSinh hs = new HocSinh();
                string a = bangDSHocSinh.Rows[i]["hoTen"].ToString();
                hs.HoTen = bangDSHocSinh.Rows[i]["hoTen"].ToString();
                hs.NgaySinh = Convert.ToDateTime(bangDSHocSinh.Rows[i]["ngaySinh"]);
                hs.Diachi = bangDSHocSinh.Rows[i]["diaChi"].ToString();
                hs.Email = bangDSHocSinh.Rows[i]["email"].ToString();
                hs.MaTaiKhoan = Convert.ToInt32(bangDSHocSinh.Rows[i]["maTaiKhoan"]);
                hs.MaLop = Convert.ToInt32(bangDSHocSinh.Rows[i]["maLop"]);
                hs.GioiTinh = Convert.ToBoolean(bangDSHocSinh.Rows[i]["gioiTinh"]);
                hs.MaHocSinh = Convert.ToInt32(bangDSHocSinh.Rows[i]["maHocSinh"]);
                dsHocSinh[i] = hs;
            }
            return dsHocSinh;
        }

        /// <summary>
        /// Procedure lấy danh sách học sinh
        /// </summary>
        /// <returns></returns>
        public HocSinh[] layDanhSachHocSinh_DAO()
        {
            HocSinh[] dsHocSinh;
            string nameProc_LayDSHocSinh = "sp_layDanhSachHocSinh";
            DataTable bangDSHocSinh = DataProvider.executeStoreProcedureQuery(nameProc_LayDSHocSinh, null);
            dsHocSinh = layDanhSachHocSinh_Tu_Bang(bangDSHocSinh);
            return dsHocSinh;
        }


        /// <summary>
        ///  Lấy danh sách học sinh trong một lớp( học sinh đã có trong lớp))
        /// </summary>
        /// <param name="lop"></param>
        /// <returns></returns>
        public HocSinh[] layDanhSachHocSinh_DaCoLop_DAO(Lop lop)
        {
            HocSinh[] dsHocSinh;
            string nameProc_LayDSHocSinh_DaCoLop = "sp_layDanhSachHocSinh_DaCoLop";
            SqlParameter para1 = new SqlParameter("@maLop", lop.MaLop);
            DataTable bangDSHocSinh = DataProvider.executeStoreProcedureQuery(nameProc_LayDSHocSinh_DaCoLop, para1);
            dsHocSinh = layDanhSachHocSinh_DaCoLop_TuBang(bangDSHocSinh);
            return dsHocSinh;
        }

        /// <summary>
        /// Lấy danh sách học sinh chưa có lớp
        /// </summary>
        /// <returns></returns>
        public HocSinh[] layDanhSachHocSinh_ChuaCoLop_DAO()
        {
            HocSinh[] dsHocSinh;
            string nameProc_LayDSHocSinh_ChuaCoLop = "sp_layDanhSachHocSinh_ChuaCoLop";
            DataTable bangDSHocSinh_ChuaCoLop = DataProvider.executeStoreProcedureQuery(nameProc_LayDSHocSinh_ChuaCoLop, null);
            dsHocSinh = layDanhSachHocSinh_Tu_Bang(bangDSHocSinh_ChuaCoLop);
            return dsHocSinh;
        }


        /// <summary>
        /// Procedure xóa học sinh
        /// </summary>
        /// <param name="hocsinh"></param>
        /// <returns></returns>
        public bool xoaHocSinh_DAO(HocSinh hocsinh)
        {
            string nameProc_XoaHocSinh = "sp_xoaHocSinh";
            string nameProc_XoaTaiKhoan = "sp_xoa_TaiKhoanDangNhap";
            string nameProc_LayMaTaiKhoanHS = "sp_layHocSinh";
            //---------
            SqlParameter para1 = new SqlParameter("@maHocSinh", hocsinh.MaHocSinh);


            //------------------
            DataTable bangMaTaiKhoan = DataProvider.executeStoreProcedureQuery(nameProc_LayMaTaiKhoanHS, para1);
            hocsinh.MaTaiKhoan = layMaTaiKhoanHS_TuBang_MaTaiKhoan(bangMaTaiKhoan);
            SqlParameter para2 = new SqlParameter("@maTaiKhoan", hocsinh.MaTaiKhoan);
            SqlParameter para3 = new SqlParameter("@maHocSinh", hocsinh.MaHocSinh);
            int ketqua = DataProvider.executeStoreProcedureNonQuery(nameProc_XoaHocSinh, para3);
            DataProvider.executeStoreProcedureNonQuery(nameProc_XoaTaiKhoan, para2);
            if (ketqua != 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        /// <summary>
        /// Procedure sửa thông tin học sinh
        /// </summary>
        /// <param name="hocsinh"></param>
        /// <returns></returns>
        public bool suaHocSinh_DAO(HocSinh hocsinh)
        {
            string nameProc_TNHocSinh = "sp_suaHocSinh";
            SqlParameter para = new SqlParameter("@maHocSinh", hocsinh.MaHocSinh);
            SqlParameter para1 = new SqlParameter("@hoTen", hocsinh.HoTen);
            SqlParameter para2 = new SqlParameter("@ngaySinh", hocsinh.NgaySinh);
            SqlParameter para3 = new SqlParameter("@gioiTinh", hocsinh.GioiTinh);
            SqlParameter para4 = new SqlParameter("@email", hocsinh.Email);
            SqlParameter para5 = new SqlParameter("@diaChi", hocsinh.Diachi);
            int ketqua = DataProvider.executeStoreProcedureNonQuery(nameProc_TNHocSinh, para, para1, para2, para3, para4, para5);
            if (ketqua != 0)
            {
                return true;
            }
            return false;
        }

        /// <summary>
        /// Procedure thêm học sinh vào lớp
        /// </summary>
        /// <param name="hocsinh"></param>
        /// <param name="lop"></param>
        /// <returns></returns>
        public bool themHocSinh_VaoLop_DAO(HocSinh hocsinh, Lop lop)
        {
            string nameProc_ThemHocSinh_VaoLop = "sp_themHocSinh_VaoLop";
            SqlParameter para1 = new SqlParameter("@maHocSinh", hocsinh.MaHocSinh);
            SqlParameter para2 = new SqlParameter("@maLop", lop.MaLop);
            int ketqua = DataProvider.executeStoreProcedureNonQuery(nameProc_ThemHocSinh_VaoLop, para1, para2);
            if (ketqua != 0)
            {
                return true;
            }
            return false;
        }


        /// <summary>
        /// Procesure xóa học sinh ra khỏi lớp
        /// </summary>
        /// <param name="hocsinh"></param>
        /// <returns></returns>
        public bool xoaHocSinh_RaKhoiLop_DAO(HocSinh hocsinh)
        {
            string nameProc_ThemHocSinh_VaoLop = "sp_xoaHocSinh_RaKhoiLop";
            SqlParameter para1 = new SqlParameter("@maHocSinh", hocsinh.MaHocSinh);
            int ketqua = DataProvider.executeStoreProcedureNonQuery(nameProc_ThemHocSinh_VaoLop, para1);
            if (ketqua != 0)
            {
                return true;
            }
            return false;
        }

        /// <summary>
        /// Procedure sửa học sinh từ mã học sinh và mã lớp
        /// </summary>
        /// <param name="hocsinh"></param>
        /// <param name="lop"></param>
        /// <returns></returns>
        public bool suaHocSinh_SuaLop_DAO(HocSinh hocsinh, Lop lop)
        {
            string nameProc_SuaHocSinh_SuaLop = "sp_suaHocSinh_SuaLop";
            SqlParameter para1 = new SqlParameter("@maHocSinh", hocsinh.MaHocSinh);
            SqlParameter para2 = new SqlParameter("@maLop", lop.MaLop);
            int ketqua = DataProvider.executeStoreProcedureNonQuery(nameProc_SuaHocSinh_SuaLop, para1, para2);
            if (ketqua != 0)
            {
                return true;
            }
            return false;
        }
    }
}
