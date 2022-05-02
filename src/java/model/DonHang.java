/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.math.BigDecimal;
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
    private int maacc;
    private BigDecimal TongTien;

    public DonHang(int madon, boolean thanhtoan, Date ngaydat, Date ngaygiao, String dienthoai, String DiaChiGiao, int maacc, BigDecimal TongTien) {
        this.madon = madon;
        this.thanhtoan = thanhtoan;
        this.ngaydat = ngaydat;
        this.ngaygiao = ngaygiao;
        this.dienthoai = dienthoai;
        this.DiaChiGiao = DiaChiGiao;
        this.maacc = maacc;
        this.TongTien = TongTien;
    }

    public DonHang() {
    }

    public int getMadon() {
        return madon;
    }

    public void setMadon(int madon) {
        this.madon = madon;
    }

    public boolean isThanhtoan() {
        return thanhtoan;
    }

    public void setThanhtoan(boolean thanhtoan) {
        this.thanhtoan = thanhtoan;
    }

    public Date getNgaydat() {
        return ngaydat;
    }

    public void setNgaydat(Date ngaydat) {
        this.ngaydat = ngaydat;
    }

    public Date getNgaygiao() {
        return ngaygiao;
    }

    public void setNgaygiao(Date ngaygiao) {
        this.ngaygiao = ngaygiao;
    }

    public String getDienthoai() {
        return dienthoai;
    }

    public void setDienthoai(String dienthoai) {
        this.dienthoai = dienthoai;
    }

    public String getDiaChiGiao() {
        return DiaChiGiao;
    }

    public void setDiaChiGiao(String DiaChiGiao) {
        this.DiaChiGiao = DiaChiGiao;
    }

    public int getMaacc() {
        return maacc;
    }

    public void setMaacc(int maacc) {
        this.maacc = maacc;
    }

    public BigDecimal getTongTien() {
        return TongTien;
    }

    public void setTongTien(BigDecimal TongTien) {
        this.TongTien = TongTien;
    }

  

    
}
