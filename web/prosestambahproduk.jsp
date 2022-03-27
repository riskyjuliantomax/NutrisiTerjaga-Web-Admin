<%-- 
    Document   : prosestambahproduk
    Created on : Jan 22, 2021, 9:09:44 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.io.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Proses Tambah Produk</title>
    </head>
    <body>
        <%
            String nama = request.getParameter("nama");
            String satuan = request.getParameter("satuan");
            String harga = request.getParameter("harga");
            String jenis = request.getParameter("jenis");
            String stok = request.getParameter("stok");
            String gambar = request.getParameter("gambar");
            String deskripsi = request.getParameter("deskripsi");
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/nutrisiterjaga", "root", "");
                if (conn != null) {
                    if (nama != "") {
                        PreparedStatement pst = conn.prepareStatement("insert into produk(nama,satuan,harga,jenis,stok,lokasi_gambar,deskripsi) values(?,?,?,?,?,?,?)");
                        pst.setString(1, nama);
                        pst.setString(2, satuan);
                        pst.setString(3, harga);
                        pst.setString(4, jenis);
                        pst.setString(5, stok);
                        pst.setString(6, gambar);
                        pst.setString(7, deskripsi);
                        pst.executeUpdate();
        %>
        <script>
            window.onload = function () {
                alert('Berhasil Di Tambahkan');
                window.location.href="produk_list.jsp";
            }
        </script>
        <%
            response.sendRedirect("produk_list.jsp");
        } else  {
        %>
        <script>
            window.onload = function () {
                alert('Gagal Menambahkan produk');
                 window.location.href="tambahproduk.jsp";
            }

        </script>
        <%
                    }
                }
            } catch (SQLException ex) {
                out.print("Gagal Koneksi");
            } catch (Exception ex) {
                out.print(ex.getMessage());
            }
        %>
    </body>
</html>