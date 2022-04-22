/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Khoa
 */
public class Hang {
    private int mahang;
    private String tenhang;
    private String hinh;

    public Hang() {
    }

    public Hang(int mahang, String tenhang, String hinh) {
        this.mahang = mahang;
        this.tenhang = tenhang;
        this.hinh = hinh;
    }

    public int getMahang() {
        return mahang;
    }

    public String getTenhang() {
        return tenhang;
    }

    public String getHinh() {
        return hinh;
    }

    public void setMahang(int mahang) {
        this.mahang = mahang;
    }

    public void setTenhang(String tenhang) {
        this.tenhang = tenhang;
    }

    public void setHinh(String hinh) {
        this.hinh = hinh;
    }
    
}
