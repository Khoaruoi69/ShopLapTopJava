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
public class Comment {
    private int madanhgia;
    private String ten;
    private String noidung;
    private int vote;
    private Date ngaydanhgia;
    private int malaptop;

    public Comment() {
    }

    public Comment(int madanhgia, String ten, String noidung, int vote, Date ngaydanhgia, int malaptop) {
        this.madanhgia = madanhgia;
        this.ten = ten;
        this.noidung = noidung;
        this.vote = vote;
        this.ngaydanhgia = ngaydanhgia;
        this.malaptop = malaptop;
    }

    public int getMadanhgia() {
        return madanhgia;
    }

    public String getTen() {
        return ten;
    }

    public String getNoidung() {
        return noidung;
    }

    public int getVote() {
        return vote;
    }

    public Date getNgaydanhgia() {
        return ngaydanhgia;
    }

    public int getMalaptop() {
        return malaptop;
    }

    public void setMadanhgia(int madanhgia) {
        this.madanhgia = madanhgia;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public void setNoidung(String noidung) {
        this.noidung = noidung;
    }

    public void setVote(int vote) {
        this.vote = vote;
    }

    public void setNgaydanhgia(Date ngaydanhgia) {
        this.ngaydanhgia = ngaydanhgia;
    }

    public void setMalaptop(int malaptop) {
        this.malaptop = malaptop;
    }

    @Override
    public String toString() {
        return "Comment{" + "madanhgia=" + madanhgia + ", ten=" + ten + ", noidung=" + noidung + ", vote=" + vote + ", ngaydanhgia=" + ngaydanhgia + ", malaptop=" + malaptop + '}';
    }
    
}
