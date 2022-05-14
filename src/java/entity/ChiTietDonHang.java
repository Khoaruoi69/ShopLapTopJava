/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

import java.math.BigDecimal;

/**
 *
 * @author Khoa
 */
public class ChiTietDonHang {
    private int madon;
    private int malaptop;
    private int soluong;
    private BigDecimal dongia;
    private String tenlaptop;

    public ChiTietDonHang() {
    }

    public ChiTietDonHang(int madon, int malaptop, int soluong, BigDecimal dongia, String tenlaptop) {
        this.madon = madon;
        this.malaptop = malaptop;
        this.soluong = soluong;
        this.dongia = dongia;
        this.tenlaptop = tenlaptop;
    }
    

    public ChiTietDonHang(int madon, int malaptop, int soluong, BigDecimal dongia) {
        this.madon = madon;
        this.malaptop = malaptop;
        this.soluong = soluong;
        this.dongia = dongia;
    }

    public int getMadon() {
        return madon;
    }

    public int getMalaptop() {
        return malaptop;
    }

    public int getSoluong() {
        return soluong;
    }

    public BigDecimal getDongia() {
        return dongia;
    }

    public void setMadon(int madon) {
        this.madon = madon;
    }

    public void setMalaptop(int malaptop) {
        this.malaptop = malaptop;
    }

    public void setSoluong(int soluong) {
        this.soluong = soluong;
    }

    public void setDongia(BigDecimal dongia) {
        this.dongia = dongia;
    }

    public String getTenlaptop() {
        return tenlaptop;
    }

    public void setTenlaptop(String tenlaptop) {
        this.tenlaptop = tenlaptop;
    }

    @Override
    public String toString() {
        return "ChiTietDonHang{" + "madon=" + madon + ", malaptop=" + malaptop + ", soluong=" + soluong + ", dongia=" + dongia + '}';
    }
    
}
