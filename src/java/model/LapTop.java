/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;
import java.math.BigDecimal;
import java.util.Date;
import microsoft.sql.DateTimeOffset;

/**
 *
 * @author Khoa
 */
public class LapTop {
  

    private int malaptop;
    private String tenlaptop;
    private BigDecimal giaban;
    private String mota;
    private String hinh;
    private int mahang;
    private String cpu;
    private String gpu;
    private String ram;
    private String hardware;
    private String manghing;
    private int soluong;
    private String pin;
    private boolean trangthai;

    public LapTop() {
    }

    public LapTop(int malaptop, String tenlaptop, BigDecimal giaban, String mota, String hinh, int mahang, String cpu, String gpu, String ram, String hardware, String manghing, int soluong, String pin, boolean trangthai) {
        this.malaptop = malaptop;
        this.tenlaptop = tenlaptop;
        this.giaban = giaban;
        this.mota = mota;
        this.hinh = hinh;
        this.mahang = mahang;
        this.cpu = cpu;
        this.gpu = gpu;
        this.ram = ram;
        this.hardware = hardware;
        this.manghing = manghing;
        this.soluong = soluong;
        this.pin = pin;
        this.trangthai = trangthai;
    }

    public int getMalaptop() {
        return malaptop;
    }

    public String getTenlaptop() {
        return tenlaptop;
    }

    public BigDecimal getGiaban() {
        return giaban;
    }

    public String getMota() {
        return mota;
    }

    public String getHinh() {
        return hinh;
    }

    public int getMahang() {
        return mahang;
    }

    public String getCpu() {
        return cpu;
    }

    public String getGpu() {
        return gpu;
    }

    public String getRam() {
        return ram;
    }

    public String getHardware() {
        return hardware;
    }

    public String getManghing() {
        return manghing;
    }

    public int getSoluong() {
        return soluong;
    }

    public String getPin() {
        return pin;
    }

    public boolean isTrangthai() {
        return trangthai;
    }

    public void setMalaptop(int malaptop) {
        this.malaptop = malaptop;
    }

    public void setTenlaptop(String tenlaptop) {
        this.tenlaptop = tenlaptop;
    }

    public void setGiaban(BigDecimal giaban) {
        this.giaban = giaban;
    }

    public void setMota(String mota) {
        this.mota = mota;
    }

    public void setHinh(String hinh) {
        this.hinh = hinh;
    }

    public void setMahang(int mahang) {
        this.mahang = mahang;
    }

    public void setCpu(String cpu) {
        this.cpu = cpu;
    }

    public void setGpu(String gpu) {
        this.gpu = gpu;
    }

    public void setRam(String ram) {
        this.ram = ram;
    }

    public void setHardware(String hardware) {
        this.hardware = hardware;
    }

    public void setManghing(String manghing) {
        this.manghing = manghing;
    }

    public void setSoluong(int soluong) {
        this.soluong = soluong;
    }

    public void setPin(String pin) {
        this.pin = pin;
    }

    public void setTrangthai(boolean trangthai) {
        this.trangthai = trangthai;
    }

    @Override
    public String toString() {
        return "LapTop{" + "malaptop=" + malaptop + ", tenlaptop=" + tenlaptop + ", giaban=" + giaban + ", mota=" + mota + ", hinh=" + hinh + ", mahang=" + mahang + ", cpu=" + cpu + ", gpu=" + gpu + ", ram=" + ram + ", hardware=" + hardware + ", manghing=" + manghing + ", soluong=" + soluong + ", pin=" + pin + ", trangthai=" + trangthai + '}';
    }

    
    
}
