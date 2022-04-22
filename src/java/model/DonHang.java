/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.Date;

/**
 *
 * @author Khoa
 */
public class DonHang {
    private int madon;
    private boolean thanhtoan;
    private Date ngaydat;
    private Date ngaygiao;
    private String dienthoai;
    private String DiaChiGiao;
    private String NguoiGiao;
    private String NguoiNhan;
    private int maacc;

    public DonHang() {
    }

    public DonHang(int madon, boolean thanhtoan, Date ngaydat, Date ngaygiao, String dienthoai, String DiaChiGiao, String NguoiGiao, String NguoiNhan, int maacc) {
        this.madon = madon;
        this.thanhtoan = thanhtoan;
        this.ngaydat = ngaydat;
        this.ngaygiao = ngaygiao;
        this.dienthoai = dienthoai;
        this.DiaChiGiao = DiaChiGiao;
        this.NguoiGiao = NguoiGiao;
        this.NguoiNhan = NguoiNhan;
        this.maacc = maacc;
    }

    public int getMadon() {
        return madon;
    }

    public boolean isThanhtoan() {
        return thanhtoan;
    }

    public Date getNgaydat() {
        return ngaydat;
    }

    public Date getNgaygiao() {
        return ngaygiao;
    }

    public String getDienthoai() {
        return dienthoai;
    }

    public String getDiaChiGiao() {
        return DiaChiGiao;
    }

    public String getNguoiGiao() {
        return NguoiGiao;
    }

    public String getNguoiNhan() {
        return NguoiNhan;
    }

    public int getMaacc() {
        return maacc;
    }

    public void setMadon(int madon) {
        this.madon = madon;
    }

    public void setThanhtoan(boolean thanhtoan) {
        this.thanhtoan = thanhtoan;
    }

    public void setNgaydat(Date ngaydat) {
        this.ngaydat = ngaydat;
    }

    public void setNgaygiao(Date ngaygiao) {
        this.ngaygiao = ngaygiao;
    }

    public void setDienthoai(String dienthoai) {
        this.dienthoai = dienthoai;
    }

    public void setDiaChiGiao(String DiaChiGiao) {
        this.DiaChiGiao = DiaChiGiao;
    }

    public void setNguoiGiao(String NguoiGiao) {
        this.NguoiGiao = NguoiGiao;
    }

    public void setNguoiNhan(String NguoiNhan) {
        this.NguoiNhan = NguoiNhan;
    }

    public void setMaacc(int maacc) {
        this.maacc = maacc;
    }

    @Override
    public String toString() {
        return "DonHang{" + "madon=" + madon + ", thanhtoan=" + thanhtoan + ", ngaydat=" + ngaydat + ", ngaygiao=" + ngaygiao + ", dienthoai=" + dienthoai + ", DiaChiGiao=" + DiaChiGiao + ", NguoiGiao=" + NguoiGiao + ", NguoiNhan=" + NguoiNhan + ", maacc=" + maacc + '}';
    }
    
}
