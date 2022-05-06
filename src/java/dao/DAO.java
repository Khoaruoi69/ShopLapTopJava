/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import Context.DBContext;
import model.Hang;
import model.Account;
import model.LapTop;
import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import model.ChiTietDonHang;
import model.DonHang;

import sun.misc.Signal;

/**
 *
 * @author Khoa
 */
public class DAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    // lay tat ca laptop .................................
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
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getInt(12),
                        rs.getString(13),
                        rs.getBoolean(14))
                );
            }
        } catch (Exception e) {
        }
        return list;
    }
    // Lay các hãng laoptop ..............................

    public List<Hang> getAllHang() throws Exception {
        List<Hang> list = new ArrayList<>();
        String query = "select * from Hang";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Hang(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3)
                ));
            }
        } catch (Exception e) {

        }
        return list;
    }

    // lay san pham cuoi cung .................................
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
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getInt(12),
                        rs.getString(13),
                        rs.getBoolean(14));
            }
        } catch (Exception e) {
        }
        return null;
    }

    // Cac laptop theo hang ..............................
    public List<LapTop> getHangLapTops(String mahang) {
        List<LapTop> list = new ArrayList<>();
        String query = "select * from Laptop\n"
                + "where mahang=?";
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
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getInt(12),
                        rs.getString(13),
                        rs.getBoolean(14))
                );
            }
        } catch (Exception e) {
        }
        return list;
    }

    // Detail ...................
    public LapTop getDetail(String malaptop) {
        String query = "select * from Laptop\n"
                + "where malaptop = ?";

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
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getInt(12),
                        rs.getString(13),
                        rs.getBoolean(14));
            }
        } catch (Exception e) {
        }
        return null;
    }

    // Searrch ....................
    public List<LapTop> SearrchName(String txtSearch) {
        List<LapTop> list = new ArrayList<>();
        String query = "select * from Laptop\n"
                + "where [tenlaptop] like ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + txtSearch + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new LapTop(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getBigDecimal(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getInt(12),
                        rs.getString(13),
                        rs.getBoolean(14))
                );
            }
        } catch (Exception e) {
        }
        return list;
    }
    // Login .............................

    public Account login(String user, String pass) {
        String query = "select * from Account\n"
                + "where dienthoai =? and matkhau= ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getBoolean(6),
                        rs.getBoolean(7));
            }

        } catch (Exception e) {
        }
        return null;
    }
    //  check account exxit 

    public Account checkAccountExits(String dienthoai) {
        String query = "select * from Account\n"
                + "where dienthoai =?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, dienthoai);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getBoolean(6),
                        rs.getBoolean(7));
            }

        } catch (Exception e) {
        }
        return null;
    }

    // SIgn UPP
    public void Signup(String user, String pass, String email, String dienthoai) {
        String query = "insert into Account\n"
                + "values(?,?,?,?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            ps.setString(3, email);
            ps.setString(4, dienthoai);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    // quan ly san pham 
    public List<LapTop> getProduct() {
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
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getInt(12),
                        rs.getString(13),
                        rs.getBoolean(14))
                );
            }
        } catch (Exception e) {
        }
        return list;
    }

    // Delete product
    public void deleteProduct(String pmalaptop) {
        String query = "delete from Laptop\n"
                + " where malaptop = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, pmalaptop);
            ps.executeUpdate();

        } catch (Exception e) {
        }
    }
    // Insert du lieu laptop

    public void insertProduct(String tenlaptop, BigDecimal giaban, String mota, String hinh, int mahang, String cpu, String gpu, String ram, String hardware, String manghing, int soluong, String pin, boolean trangthai) {
        String query = "INSERT  [dbo].[Laptop] \n"
                + "( [tenlaptop], [giaban], [mota] ,[hinh], [mahang], [cpu] , [gpu], [ram], [hardware], [manhinh], [soluongton]\n"
                + ",[pin], [trangthai] ) VALUES( ?,?,?,?,?,?,?,?,?,?,?,?,?)";

        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, tenlaptop);
            ps.setBigDecimal(2, giaban);
            ps.setString(3, mota);
            ps.setString(4, hinh);
            ps.setInt(5, mahang);
            ps.setString(6, cpu);
            ps.setString(7, gpu);
            ps.setString(8, ram);
            ps.setString(9, hardware);
            ps.setString(10, manghing);
            ps.setInt(11, soluong);
            ps.setString(12, pin);
            ps.setBoolean(13, trangthai);

            ps.executeUpdate();

        } catch (Exception e) {
        }
    }

    // edit producrt ................................
    public void EditProduct(String tenlaptop, BigDecimal giaban, String mota, String hinh, int mahang, String cpu, String gpu, String ram, String hardware, String manghing, int soluong, String pin, boolean trangthai, int malaptop) {
        String query = "UPDATE  Laptop set \n"
                + "      [tenlaptop] = ?\n"
                + "      ,[giaban] = ?\n"
                + "      ,[mota] = ?\n"
                + "      ,[hinh] = ?\n"
                + "      ,[mahang] = ?\n"
                + "      ,[cpu] = ?\n"
                + "      ,[gpu]= ?\n"
                + "      ,[ram]= ?\n"
                + "      ,[hardware]= ?\n"
                + "      ,[manhinh]= ?\n"
                + "      ,[soluongton]= ?\n"
                + "      ,[pin]= ?\n"
                + "      ,[trangthai] = ? \n"
                + "WHERE malaptop = ?";

        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, tenlaptop);
            ps.setBigDecimal(2, giaban);
            ps.setString(3, mota);
            ps.setString(4, hinh);
            ps.setInt(5, mahang);
            ps.setString(6, cpu);
            ps.setString(7, gpu);
            ps.setString(8, ram);
            ps.setString(9, hardware);
            ps.setString(10, manghing);
            ps.setInt(11, soluong);
            ps.setString(12, pin);
            ps.setBoolean(13, trangthai);
            ps.setInt(14, malaptop);

            ps.executeUpdate();

        } catch (Exception e) {
        }
    }

    // lay id lap top vao gio hang 
    public LapTop getLapTop(String malaptop) {
        String query = "select * from Laptop\n"
                + "where malaptop = ?";
        List<LapTop> list = new ArrayList<>();

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
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getInt(12),
                        rs.getString(13),
                        rs.getBoolean(14), 1);
            }
        } catch (Exception e) {
        }
        return null;
    }

    /// lam don hang ///////////////////////////////////////////////////////////////////////////////
    // insert don hang
    public void insertDonHang(boolean thanhtoan, String ngaydat, String ngaygiao, String dienthoai, String Diachigiao, int maacc) {
        String query = "INSERT  [dbo].[DonHang] \n"
                + "( [thanhtoan], [ngaydat], [ngaygiao] ,[dienthoai], [Diachigiao], [maacc] )\n"
                + "VALUES( ?,?,?,?,?,?)";

        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setBoolean(1, thanhtoan);
            ps.setString(2, ngaydat);
            ps.setString(3, ngaygiao);
            ps.setString(4, dienthoai);
            ps.setString(5, Diachigiao);
            ps.setInt(6, maacc);

            ps.executeUpdate();

        } catch (Exception e) {
        }
    }

    // lay don hang 
    public List<DonHang> getDonHang() {
        List<DonHang> list = new ArrayList<>();
        String query = "select * from DonHang";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new DonHang(
                        rs.getInt(1),
                        rs.getBoolean(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7))
                );
            }
        } catch (Exception e) {

        }
        return list;
    }

    // don hang da thanh toan 
    // lay don hang 
    public List<DonHang> getDonHangDTT() {
        List<DonHang> list = new ArrayList<>();
        String query = "select * from DonHang where thanhtoan='1'";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new DonHang(
                        rs.getInt(1),
                        rs.getBoolean(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7))
                );
            }
        } catch (Exception e) {

        }
        return list;
    }

    // don hang chua thanh toan
    public List<DonHang> getDonHangCTT() {
        List<DonHang> list = new ArrayList<>();
        String query = "select * from DonHang where thanhtoan='0'";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new DonHang(
                        rs.getInt(1),
                        rs.getBoolean(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7))
                );
            }
        } catch (Exception e) {

        }
        return list;
    }

    // lay ma don hang cuoi cung 
    public DonHang getDonHanglast() {

        String query = "select top 1 * from DonHang order by madon desc";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new DonHang(
                        rs.getInt(1),
                        rs.getBoolean(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7));
            }
        } catch (Exception e) {
        }
        return null;
    }

    // them chi tiet don hang 
    public void insertCTDonHang(int madon, int malaptop, int soluong, BigDecimal dongia) {
        String query = "INSERT  [dbo].[ChiTietDonHang] \n"
                + "( [madon], [malaptop], [soluong] ,[dongia] )\n"
                + "VALUES( ?,?,?,?)";

        try {

            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, madon);
            ps.setInt(2, malaptop);
            ps.setInt(3, soluong);
            ps.setBigDecimal(4, dongia);

            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    // lay thong tin chi tiet don hang
    public ChiTietDonHang getCTTDonHang(String madon) {
        String query = "select * from ChiTietDonHang\n"
                + "where madon = ?";

        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, madon);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new ChiTietDonHang(
                        rs.getInt(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getBigDecimal(4));
            }
        } catch (Exception e) {
        }
        return null;
    }

    // edit don hang 
    public void EditBill(String madon, boolean thanhtoan, String ngaydat, String ngaygiao, String dienthoai, String diachigiao, String maacc) {
        String query = "UPDATE  DonHang set \n"
                + "      [madon] = ?\n"
                + "      ,[thanhtoan] = ?\n"
                + "      ,[ngaydat] = ?\n"
                + "      ,[ngaygiao] = ?\n"
                + "      ,[dienthoai] = ?\n"
                + "      ,[Diachigiao] = ?\n"
                + "      ,[maacc]= ?\n"
                + "WHERE madon = ?";

        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, madon);
            ps.setBoolean(2, thanhtoan);
            ps.setString(3, ngaydat);
            ps.setString(4, ngaygiao);
            ps.setString(5, diachigiao);
            ps.setString(6, maacc);

            ps.executeUpdate();

        } catch (Exception e) {
        }
    }

    /// lay don hang theo ma de edit don hang
    public DonHang getMaDonHang(String madon) {
        String query = "select * from DonHang where madon= ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, madon);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new DonHang(
                        rs.getInt(1),
                        rs.getBoolean(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7));
            }
        } catch (Exception e) {

        }
        return null;
    }

    public static void main(String[] args) {
        DAO dao = new DAO();
        // List<DonHang> list = dao.getDonHangDTT();
        DonHang list = dao.getMaDonHang("37");
        System.out.println(list);

    }

}
