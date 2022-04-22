/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Khoa
 */
public class Account {
    private int maacc;
    private String hoten;
    private String matkhau;
    private  String email;
    private String dienthoai;
    private boolean admin;
    private boolean sell;

    public Account() {
    }

    public Account(int maacc, String hoten, String matkhau, String email, String dienthoai, boolean admin, boolean sell) {
        this.maacc = maacc;
        this.hoten = hoten;
        this.matkhau = matkhau;
        this.email = email;
        this.dienthoai = dienthoai;
        this.admin = admin;
        this.sell = sell;
    }

    public int getMaacc() {
        return maacc;
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

    public boolean isAdmin() {
        return admin;
    }

    public boolean isSell() {
        return sell;
    }

    public void setMaacc(int maacc) {
        this.maacc = maacc;
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

    public void setAdmin(boolean admin) {
        this.admin = admin;
    }

    public void setSell(boolean sell) {
        this.sell = sell;
    }

    @Override
    public String toString() {
        return "Account{" + "maacc=" + maacc + ", hoten=" + hoten + ", matkhau=" + matkhau + ", email=" + email + ", dienthoai=" + dienthoai + ", admin=" + admin + ", sell=" + sell + '}';
    }
    
}
