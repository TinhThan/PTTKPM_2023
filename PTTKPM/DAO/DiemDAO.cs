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
    class DiemDAO
    {
        private int maDiem = -1;
        /// <summary>
        /// Xuất dữ liệu từ dòng trong bảng
        /// </summary>
        /// <param name="dt"></param>
        /// <param name="i"></param>
        /// <returns></returns>
        private Diem GetDataFromDataRow(DataTable dt, int i)
        {
            maDiem = -1;
            Diem diem = new Diem();
            if (dt.Rows[i]["maDiem"].ToString() == "")
            {

                //Them 1 diem moi sau do tra ve diem do
                if (InsertMark(0, 0, 0))
                {
                    diem = layDongDuLieuVuaThemVao();
                    maDiem = diem.MaDiem;
                }
                else
                {
                }
            }
            else
            {
                diem.MaDiem = Convert.ToInt32(dt.Rows[i]["maDiem"].ToString());
                diem.Diem15Phut = Convert.ToInt32(dt.Rows[i]["diem15Phut"].ToString());
                diem.Diem1Tiet = Convert.ToInt32(dt.Rows[i]["diem1Tiet"].ToString());
                diem.DiemHocKi = Convert.ToInt32(dt.Rows[i]["diemHocKi"].ToString());
            }
            return diem;
        }

        /// <summary>
        /// Xuất dữ liệu từ dòng trong bảng
        /// </summary>
        /// <param name="dt"></param>
        /// <param name="i"></param>
        /// <returns></returns>
        private Diem GetDataFromDataRow2(DataTable dt, int i)
        {
            maDiem = -1;
            Diem diem = new Diem();
            if (dt.Rows[i]["maDiem"].ToString() == "")
            {
                diem.MaDiem = 0;
                diem.Diem15Phut = 0;
                diem.Diem1Tiet = 0;
                diem.DiemHocKi = 0;
            }
            else
            {
                diem.MaDiem = Convert.ToInt32(dt.Rows[i]["maDiem"].ToString());
                diem.Diem15Phut = Convert.ToInt32(dt.Rows[i]["diem15Phut"].ToString());
                diem.Diem1Tiet = Convert.ToInt32(dt.Rows[i]["diem1Tiet"].ToString());
                diem.DiemHocKi = Convert.ToInt32(dt.Rows[i]["diemHocKi"].ToString());
            }
            return diem;
        }

        /// <summary>
        /// Procedure xuất bảng điểm môn học của lớp
        /// </summary>
        /// <param name="maLop"></param>
        /// <param name="maMonHoc"></param>
        /// <param name="maHocKi"></param>
        /// <returns></returns>
        public Diem[] getMarkIf(int maLop, int maMonHoc, int maHocKi)
        {
            string nameProc = "sp_LayBangDiem1MonCuaLop";
            SqlParameter[] para = new SqlParameter[3];
            para[0] = new SqlParameter("@maLop", maLop);
            para[1] = new SqlParameter("@maMonHoc", maMonHoc);
            para[2] = new SqlParameter("@maHocKi", maHocKi);

            DataTable dt = DataProvider.executeStoreProcedureQuery(nameProc, para);

            HocSinhDAO adapterHs = new HocSinhDAO();
            HocSinh[] HS = adapterHs.getStudentIf(maLop, maMonHoc, maHocKi);

            int n = dt.Rows.Count;
            Diem[] allMark = new Diem[n];
            for (int i = 0; i < n; i++)
            {
                Diem TK = GetDataFromDataRow(dt, i);
                allMark[i] = TK;
                if (maDiem != -1)
                {
                    BangDiemMonDAO adapter = new BangDiemMonDAO();
                    adapter.InsertMarkTable(HS[i].MaHocSinh, maDiem, maMonHoc, maHocKi);
                }
            }
            return allMark;
        }


        /// <summary>
        /// Procedure lấy điểm học sinh
        /// </summary>
        /// <param name="maHocSinh"></param>
        /// <param name="maHocKi"></param>
        /// <returns></returns>
        public Diem[] getMarkIf(int maHocSinh, int maHocKi)
        {
            string nameProc = "sp_LayDiemHocSinh";
            SqlParameter[] para = new SqlParameter[2];
            para[0] = new SqlParameter("@maHocSinh", maHocSinh);
            para[1] = new SqlParameter("@maHocKi", maHocKi);

            DataTable dt = DataProvider.executeStoreProcedureQuery(nameProc, para);
            int n = dt.Rows.Count;
            Diem[] allMark = new Diem[n];
            for (int i = 0; i < n; i++)
            {
                Diem TK = GetDataFromDataRow2(dt, i);
                allMark[i] = TK;
            }
            return allMark;
        }


        /// <summary>
        /// Chỉnh sửa điểm
        /// </summary>
        /// <param name="diem"></param>
        /// <returns></returns>
        public bool UpdateMark(Diem[] diem)
        {
            string strSql = "sp_UpdateMark";
            int n;
            foreach (Diem a in diem)
            {
                SqlParameter[] para = new SqlParameter[4];
                para[0] = new SqlParameter("@maDiem", a.MaDiem);
                para[1] = new SqlParameter("@diem15Phut", a.Diem15Phut);
                para[2] = new SqlParameter("@diem1Tiet", a.Diem1Tiet);
                para[3] = new SqlParameter("@diemHocKi", a.DiemHocKi);
                n = DataProvider.executeStoreProcedureNonQuery(strSql, para);
                if (n == 0)
                {
                    return false;
                }
            }
            return true;
        }

        /// <summary>
        /// Thêm điểm số
        /// </summary>
        /// <param name="diem15P"></param>
        /// <param name="diem1T"></param>
        /// <param name="diemHK"></param>
        /// <returns></returns>
        public bool InsertMark(float diem15P, float diem1T, float diemHK)
        {

            string nameProc = "sp_ThemDiem";
            SqlParameter[] para = new SqlParameter[3];
            para[0] = new SqlParameter("@diem15P", diem15P);
            para[1] = new SqlParameter("@diem1T", diem1T);
            para[2] = new SqlParameter("@diemHK", diemHK);

            if (DataProvider.executeStoreProcedureNonQuery(nameProc, para) != 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }


        /// <summary>
        /// Xuất dữ liệu vừa thêm vào mới nhất
        /// </summary>
        /// <returns></returns>
        private Diem layDongDuLieuVuaThemVao()
        {
            Diem diem = new Diem();
            string nameProc = "sp_LayDongCuoiTrongBangDiem";
            DataTable dt = DataProvider.executeStoreProcedureQuery(nameProc);
            int n = dt.Rows.Count;
            if (n == 1)
            {
                diem.MaDiem = Convert.ToInt32(dt.Rows[0]["maDiem"].ToString());
                diem.Diem15Phut = Convert.ToInt32(dt.Rows[0]["diem15Phut"].ToString());
                diem.Diem1Tiet = Convert.ToInt32(dt.Rows[0]["diem1Tiet"].ToString());
                diem.DiemHocKi = Convert.ToInt32(dt.Rows[0]["diemHocKi"].ToString());
            }
            return diem;
        }


    }
}
