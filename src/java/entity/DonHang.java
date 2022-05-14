/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

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
    private String Diachigiao;
    private int maacc;
    
    private String hoten;
  //  private BigDecimal TongTien;

    public DonHang(int madon, boolean thanhtoan, String ngaydat, String ngaygiao, String dienthoai, String Diachigiao, int maacc, String hoten) {
        this.madon = madon;
        this.thanhtoan = thanhtoan;
        this.ngaydat = ngaydat;
        this.ngaygiao = ngaygiao;
        this.dienthoai = dienthoai;
        this.Diachigiao = Diachigiao;
        this.maacc = maacc;
        this.hoten = hoten;
    }
    
    
    
    public DonHang() {
    }

    public DonHang(int madon, boolean thanhtoan, String ngaydat, String ngaygiao, String dienthoai, String Diachigiao, int maacc) {
        this.madon = madon;
        this.thanhtoan = thanhtoan;
        this.ngaydat = ngaydat;
        this.ngaygiao = ngaygiao;
        this.dienthoai = dienthoai;
        this.Diachigiao = Diachigiao;
        this.maacc = maacc;
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

    public String getDiachigiao() {
        return Diachigiao;
    }

    public void setDiachigiao(String Diachigiao) {
        this.Diachigiao = Diachigiao;
    }

    public int getMaacc() {
        return maacc;
    }

    public void setMaacc(int maacc) {
        this.maacc = maacc;
    }

    public String getHoten() {
        return hoten;
    }

    public void setHoten(String hoten) {
        this.hoten = hoten;
    }

   
   

   

    
}
