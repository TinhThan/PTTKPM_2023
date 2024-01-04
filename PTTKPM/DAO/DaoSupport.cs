using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PTTKPM.DAO
{
    public abstract class DaoSupport
    {
        /// <summary>
        /// Tạo object từ dòng dữ liệu
        /// </summary>
        /// <param name="row"></param>
        /// <returns></returns>
        protected abstract object createObjectFromDatarow(DataRow row);

        //protected List<T> getListFromDataTable<T>(DataTable dt)
        //{
        //    List<T> list = new List<T>();
        //    for (int i = 0; i < dt.Rows.Count; i++)
        //    {
        //        T t = (T)createObjectFromDatarow(dt.Rows[i]);
        //        list.Add(t);
        //    }
        //    return list;
        //}
        /// <summary>
        /// Xuất danh sách dữ liệu ra bảng
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="dt"></param>
        /// <returns></returns>
        protected T[] getListFromDataTable<T>(DataTable dt)
        {
            List<T> list = new List<T>();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                T t = (T)createObjectFromDatarow(dt.Rows[i]);
                list.Add(t);
            }
            return list.ToArray();
        }
        //protected abstract object[] getAll();

    }
}
