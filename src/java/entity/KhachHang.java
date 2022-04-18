/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author Khoa
 */
public class KhachHang {
    private int makh;
    private String hoten;
    private String matkhau;
    private  String email;
    private String dienthoai;

    public KhachHang() {
    }

    public KhachHang(int makh, String hoten, String matkhau, String email, String dienthoai) {
        this.makh = makh;
        this.hoten = hoten;
        this.matkhau = matkhau;
        this.email = email;
        this.dienthoai = dienthoai;
    }

    public int getMakh() {
        return makh;
    }

    public String getHoten() {
        return hoten;
    }

    public String getMatkhau() {
        return matkhau;
    }

    public String getEmail() {
        return email;
    }

    public String getDienthoai() {
        return dienthoai;
    }

    public void setMakh(int makh) {
        this.makh = makh;
    }

    public void setHoten(String hoten) {
        this.hoten = hoten;
    }

    public void setMatkhau(String matkhau) {
        this.matkhau = matkhau;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setDienthoai(String dienthoai) {
        this.dienthoai = dienthoai;
    }
    
}
