using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using PTTKPM.Common;

namespace PTTKPM.DAO
{
    class BangDiemMonDAO
    {
        /// <summary>
        /// Procedure Thêm bảng điểm môn học
        /// </summary>
        /// <param name="maHS"></param>
        /// <param name="maDiem"></param>
        /// <param name="maMH"></param>
        /// <param name="maHK"></param>
        /// <returns></returns>
        public bool InsertMarkTable(int maHS, int maDiem, int maMH, int maHK)
        {
            string nameProc = "sp_ThemBangDiemMon";
            SqlParameter[] para = new SqlParameter[4];
            para[0] = new SqlParameter("@maHS", maHS);
            para[1] = new SqlParameter("@maDiem", maDiem);
            para[2] = new SqlParameter("@maMH", maMH);
            para[3] = new SqlParameter("@maHK", maHK);
            if (DataProvider.executeStoreProcedureNonQuery(nameProc, para) != 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}
