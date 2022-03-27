/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Admin;
import  java.util.*;
import java.sql.*;
/**
 *
 * @author USER
 */
public class AdminConnection {
     public static Connection getConnection() {
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nutrisiterjaga", "root", "");
        } catch (Exception e) {
            System.out.println(e);
        }
        return con;
    }
     public static boolean ceklogin(AdminNutrisiTerjaga a){
         boolean status = false;
        try {
            Connection con = AdminConnection.getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "select * from admin where admin_name=? and admin_password=?");
            ps.setString(1, a.getUser());
            ps.setString(2, a.getPass());

            ResultSet rs = ps.executeQuery();
            status = rs.next();

        } catch (Exception ex) {}
        return status;
     }
     public static int saveproduk(AdminNutrisiTerjaga e) {
        int status = 0;
        try {
            Connection con = AdminConnection.getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "insert into produk values(?,?,?,?,?,?,?)");
            ps.setString(1, e.getNamaproduk());
            ps.setString(2, e.getSatuanproduk());
            ps.setInt(3, e.getHargaproduk());
            ps.setInt(4, e.getJenisproduk());
            ps.setInt(5, e.getStokproduk());
            ps.setString(6, e.getLokasi_gambarproduk());
            ps.setString(7, e.getDeskripsiproduk());
            status = ps.executeUpdate();
            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return status;
    }
}
