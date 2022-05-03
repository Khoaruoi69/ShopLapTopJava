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
    private String ngaydat;
    private String ngaygiao;
    private String dienthoai;
    private String DiaChiGiao;
    private int maacc;
    private BigDecimal TongTien;

    public DonHang() {
    }

    public DonHang(int madon, boolean thanhtoan, String ngaydat, String ngaygiao, String dienthoai, String DiaChiGiao, int maacc, BigDecimal TongTien) {
        this.madon = madon;
        this.thanhtoan = thanhtoan;
        this.ngaydat = ngaydat;
        this.ngaygiao = ngaygiao;
        this.dienthoai = dienthoai;
        this.DiaChiGiao = DiaChiGiao;
        this.maacc = maacc;
        this.TongTien = TongTien;
    }

    public DonHang(int aInt, boolean aBoolean, String string, String string0, String string1, String string2, int aInt0) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
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

    public String getNgaydat() {
        return ngaydat;
    }

    public void setNgaydat(String ngaydat) {
        this.ngaydat = ngaydat;
    }

    public String getNgaygiao() {
        return ngaygiao;
    }

    public void setNgaygiao(String ngaygiao) {
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
