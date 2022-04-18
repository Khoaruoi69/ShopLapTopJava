/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import Context.DBContext;
import entity.Hang;
import entity.LapTop;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import sun.misc.Signal;

/**
 *
 * @author Khoa
 */
public class DAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    public List<LapTop> getAllLaptop() {
        List<LapTop> list = new ArrayList<>();
        String query = "select * from Laptop";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new LapTop(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getBigDecimal(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getString(12),
                        rs.getDate(13),
                        rs.getInt(14),
                        rs.getString(15),
                        rs.getBoolean(16))
                );
            }
        } catch (Exception e) {
        }
        return list;
    }
    public List<Hang> getAllHang() throws Exception{
        List<Hang> list = new ArrayList<>();
        String query ="select * from Hang";
        try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs=ps.executeQuery();
            while(rs.next()){
                list.add(new Hang(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3)
                ));
            }
        }
        catch(Exception e){
            
        }
        return list;
    }
    public LapTop getLast() {
        String query = "select top 1 * from Laptop\n"
                     + "order by malaptop desc";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
               return new LapTop(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getBigDecimal(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getString(12),
                        rs.getDate(13),
                        rs.getInt(14),
                        rs.getString(15),
                        rs.getBoolean(16));
            }
        } catch (Exception e) {
        }
        return null;
    }
    public List<LapTop> getHangLapTops(String mahang) {
        List<LapTop> list = new ArrayList<>();
        String query = "select * from Laptop\n"
                       +"where mahang=?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, mahang);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new LapTop(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getBigDecimal(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getString(12),
                        rs.getDate(13),
                        rs.getInt(14),
                        rs.getString(15),
                        rs.getBoolean(16))
                );
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    // Detail ...................
    
    public LapTop getDetail(String malaptop) {
        String query = "select * from Laptop\n"
                +"where malaptop = ?";
                    
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, malaptop);
            rs = ps.executeQuery();
            while (rs.next()) {
               return new LapTop(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getBigDecimal(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getString(12),
                        rs.getDate(13),
                        rs.getInt(14),
                        rs.getString(15),
                        rs.getBoolean(16));
            }
        } catch (Exception e) {
        }
        return null;
    }
    
    
    public static void main(String[] args) {
        DAO dao = new DAO();
        LapTop list = dao.getLast();
       System.out.println(list);
       
    }
    
}
