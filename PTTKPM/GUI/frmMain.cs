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
            lbGioiThieu.Text = "Trường được thành lập năm 1994 theo QĐ 768 ngày 9/8/1994 của UBND tỉnh. \n"
                + "Lúc ấy Trường mang tên “Trường PTTH Bán công Phan Thiết” toạ lạc tại 391 Trần Hưng Đạo,\n"
                + "Đây là cơ sở của Trường tiển học được xây dựng trước năm 1975 gồm 7 phòng học diện tích khoảng 32m2/phòng. \n"
                + "Khi tiếp nhận cơ sở này, chỉ có phòng không vườn trống, không bàn ghế, không điện. \n"
                + "Do mặt bằng thấp nên mùa mưa toàn bộ ngập tràn trong biển nước. Đội ngũ VBGVNV chỉ có 19 người. \n"
                + "Học sinh cũng chỉ có 622 em/13 lớp, trong đó có 4 lớp 11 là học sinh hệ B từ trường Phan Bội Châu chuyển qua \n";

            lbGioiThieu2.Text = "Thế rồi như một quy luật tất yếu của sự sinh tồn, toàn thể thầy và trò đã gồng mình lên để vượt qua gian khó, \n"
                +"để tự khẳng định mình với tinh thần “khó khăn khắc phục, lấy bất biến ứng vạn biến”. \n"
                +"Cứ như thế, từng ngày, từng tháng, kiên trì, nhẫn nại, bình tĩnh vượt qua và tồn tại, \n"
                + "để đến ngày 26/2/1997 bắt đầu có ngôi trường mới với 12 phòng học, tại địa điểm bây giờ. \n";

            lbGioiThieu3.Text = "Trường được Bộ Giáo dục tặng 01 Bằng khen, Bộ Văn hoá thể thao du lịch tặng 01 Bằng khen ;\n "
                +"Chi bộ được Tỉnh Uỷ công nhận trong sạch vững mạnh tiêu biểu cấp Tỉnh 9 năm liền (1999-2007). \n"
                +"Có thể nói đây là năm học đạt được nhiều kết quả tốt đẹp nhất";

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
