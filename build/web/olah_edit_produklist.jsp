<%-- 
    Document   : olah_edit_produklist
    Created on : Jan 23, 2021, 2:37:05 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*,java.io.*"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Proses Edit</title>
    </head>
    <body> 
        <%
            String id = request.getParameter("id");
            String nama = request.getParameter("nama");
            String satuan = request.getParameter("satuan");
            String jenis = request.getParameter("jenis");
            String harga = request.getParameter("harga");
            String stok = request.getParameter("stok");
            String gambar = request.getParameter("gambar");
            String deskripsi = request.getParameter("deskripsi");
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nutrisiterjaga", "root", "");
                if (con != null) {
                    if (jenis != null && satuan != null) {
                        PreparedStatement ps = con.prepareStatement("update produk set nama=?,satuan=?,harga=?,jenis=?,stok=?,lokasi_gambar=?,deskripsi=? where id = '" + id + "'");
                        ps.setString(1, nama);
                        ps.setString(2, satuan);
                        ps.setString(3, harga);
                        ps.setString(4, jenis);
                        ps.setString(5, stok);
                        ps.setString(6, gambar);
                        ps.setString(7, deskripsi);
                        ps.executeUpdate();
        %>
        <script>
            window.onload = function () {
                alert('Berhasil Di Tambahkan');
            }
        </script>
        <%
            response.sendRedirect("produk_list.jsp");
        } else {
        %>
        <script>
            window.onload = function () {
                alert('Gagal Menambahkan produk');
               window.location.href='produk_list.jsp';
            }

        </script>
        <%}
                }
            } catch (Exception e) {
                out.print("can't connect database : " + e.getMessage());
            }%>
    </body>
</html>
