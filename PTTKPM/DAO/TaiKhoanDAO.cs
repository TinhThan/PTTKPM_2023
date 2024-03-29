﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using PTTKPM.DTO;
using System.Data;
using PTTKPM.Common;

namespace PTTKPM.DAO
{
    class TaiKhoanDAO : DaoSupport
    {
        //private TaiKhoanDangNhap GetDataFromDataRow(DataTable dt, int i)
        //{
        //    TaiKhoanDangNhap TK = new TaiKhoanDangNhap();
        //    TK.MaTaiKhoan =Convert.ToInt32(dt.Rows[i]["maTaiKhoan"].ToString());
        //    TK.LoaiTaiKhoan = Convert.ToInt32(dt.Rows[i]["loaiTaiKhoan"].ToString());
        //    TK.TenTaiKhoan = dt.Rows[i]["tenTaiKhoan"].ToString();
        //    TK.MatKhau = dt.Rows[i]["matKhau"].ToString();
        //    return TK;
        //}

        /// <summary>
        /// Tạo đối tượng từ dòng dữ liệu
        /// </summary>
        /// <param name="row"></param>
        /// <returns></returns>
        protected override object createObjectFromDatarow(DataRow row)
        {
            TaiKhoanDangNhap TK = new TaiKhoanDangNhap();
            TK.MaTaiKhoan = Convert.ToInt32(row["maTaiKhoan"].ToString());
            TK.LoaiTaiKhoan = Convert.ToInt32(row["loaiTaiKhoan"].ToString());
            TK.TenTaiKhoan = row["tenTaiKhoan"].ToString();
            TK.MatKhau = row["matKhau"].ToString();
            return TK;
        }

        /// <summary>
        /// Xuất danh sách tài khoản
        /// </summary>
        /// <returns></returns>
        public TaiKhoanDangNhap[] getAllUser()
        {
            string strSql = "SELECT * FROM TaiKhoanDangNhap";
            DataTable dt = DataProvider.executeQuery(strSql);
            return getListFromDataTable<TaiKhoanDangNhap>(dt);
            //int n = dt.Rows.Count;
            //TaiKhoanDangNhap[] allUser = new TaiKhoanDangNhap[n];
            //for (int i = 0; i < n; i++)
            //{
            //    TaiKhoanDangNhap TK = GetDataFromDataRow(dt, i);
            //    allUser[i] = TK;
            //}
            //return allUser;
        }
    }
}
