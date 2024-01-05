using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PTTKPM.DAO;
using PTTKPM.DTO;

namespace PTTKPM.GUI
{
    public partial class frmMain : DevComponents.DotNetBar.Office2007RibbonForm
    {
        ThongBao[] listThongBao;
        public frmMain()
        {
            InitializeComponent();
        }


        private void Form1_Load(object sender, EventArgs e)
        {
            lbGioiThieu.Text = "Thông tin giới thiệu về trường";

            lbGioiThieu2.Text = "Thông tin giới thiệu về trường";

            lbGioiThieu3.Text = "Thông tin giới thiệu về trường";

            ribAo.Visible = false;
            switch (BienToanCuc.loai_nguoi_dung)
            {
                case 1:// giao vu
                    ribbonHS.Visible = false;
                    ribbonBGH.Visible = false;
                    ribbonGV.Visible = false;
                    ribbonGVu.Visible = true;
                    break;
                case 2:// giao vien
                    ribbonHS.Visible = false;
                    ribbonBGH.Visible = false;
                    ribbonGV.Visible = true;
                    ribbonGVu.Visible = false;
                    break;
                case 3: // hoc sinh
                    ribbonHS.Visible = true;
                    ribbonBGH.Visible = false;
                    ribbonGV.Visible = false;
                    ribbonGVu.Visible = false;
                    break;
                case 4:// ban giam hieu
                    ribbonHS.Visible = false;
                    ribbonBGH.Visible = true;
                    ribbonGV.Visible = false;
                    ribbonGVu.Visible = false;
                    break;
            }
           
        }
        #region Các chức năng của giáo vụ
        private void btnThayDHSHS_GV_Click(object sender, EventArgs e)
        {
            frmTiepNhanHocSinh frmtiepnhanhocsinh_gv = new frmTiepNhanHocSinh();
            frmtiepnhanhocsinh_gv.ShowDialog();
        }

        private void btnThayDDSL_GVu_Click_1(object sender, EventArgs e)
        {
            frmLapDanhSachLop frmlapdanhsachlop = new frmLapDanhSachLop();
            frmlapdanhsachlop.ShowDialog();
        }
        private void btnThayDBD_GVu_Click(object sender, EventArgs e)
        {
            frmThayDoiBangDiem frmThayDoiBangDiem = new frmThayDoiBangDiem();
            frmThayDoiBangDiem.ShowDialog();
        }
        private void btnLapTB_GVu_Click(object sender, EventArgs e)
        {
            frmLapThongBao frmlapthongbao = new frmLapThongBao();
            frmlapthongbao.ShowDialog();
        }
        private void btnXemTB_GVu_Click(object sender, EventArgs e)
        {
            frmXemThongBao frmxemthongbao = new frmXemThongBao();
            frmxemthongbao.ShowDialog();
        }
        private void btnLapBCTKM_GVu_Click(object sender, EventArgs e)
        {
            frmBaoCaoTongKetMon frm = new frmBaoCaoTongKetMon();
            frm.ShowDialog();
        }
        private void btnLapBCTKHK_GVu_Click(object sender, EventArgs e)
        {
            frmBaoCaoTongKetHocKi frm = new frmBaoCaoTongKetHocKi();
            frm.ShowDialog();
        }
        private void btnLapTKB_GVu_Click(object sender, EventArgs e)
        {
            frmLapThoiKhoaBieu frmlapthoikhoabieu = new frmLapThoiKhoaBieu();
            frmlapthoikhoabieu.ShowDialog();
        }
        private void btnXemTKB_GVu_Click(object sender, EventArgs e)
        {
            frmXemThoiKhoaBieu frmxemthoikhoabieu = new frmXemThoiKhoaBieu();
            frmxemthoikhoabieu.ShowDialog();
        }
        private void btbTraCHS_GVu_Click(object sender, EventArgs e)
        {
            frmTraCuuHocSinh frmtracuu_hs = new frmTraCuuHocSinh();
            frmtracuu_hs.ShowDialog();
        }
        private void btnXemBD_GVu_Click(object sender, EventArgs e)
        {

        }
#endregion
        #region Các chức năng của học sinh
        private void btnXemD_HSinh_Click(object sender, EventArgs e)
        {
            frmXemBangDiemCaNhan frm = new frmXemBangDiemCaNhan();
            frm.ShowDialog();
        }
        private void btnXemTTCN_HSinh_Click(object sender, EventArgs e)
        {
            frmXemThongTinCaNhan frm = new frmXemThongTinCaNhan();
            frm.ShowDialog();
        }
        private void btnXemTB_HSinh_Click(object sender, EventArgs e)
        {
            frmXemThongBao frmxemthongbao_hs = new frmXemThongBao();
            frmxemthongbao_hs.ShowDialog();
        }
        private void btnXemTKB_HSinh_Click(object sender, EventArgs e)
        {
            frmXemThoiKhoaBieu frmxemthoikhoabieu_hs = new frmXemThoiKhoaBieu();
            frmxemthoikhoabieu_hs.ShowDialog();
        }
        #endregion
        #region Các chức năng của giáo viên
        private void btnThayDBD_GVien_Click(object sender, EventArgs e)
        {
            frmThayDoiBangDiem frmThayDoiBangDiem = new frmThayDoiBangDiem();
            frmThayDoiBangDiem.ShowDialog();
        }
        private void btnTraCuu_GVien_Click(object sender, EventArgs e)
        {
            frmTraCuuHocSinh frmtracuu_hs = new frmTraCuuHocSinh();
            frmtracuu_hs.ShowDialog();
        }
        
        #endregion
        #region Các chức năng của ban giám hiệu
        private void btnXemBCTKHK_BGHieu_Click(object sender, EventArgs e)
        {
            frmBaoCaoTongKetHocKi frm = new frmBaoCaoTongKetHocKi();
            frm.ShowDialog();
        }
        private void btnXemBCTKM_BGHieu_Click(object sender, EventArgs e)
        {
            frmBaoCaoTongKetMon frm = new frmBaoCaoTongKetMon();
            frm.ShowDialog();
        }
        #endregion

        private void buttonItem2_Click(object sender, EventArgs e)
        {
            frmThayDoiQuyDinh frm = new frmThayDoiQuyDinh();
            frm.ShowDialog();
        }


    }
}
