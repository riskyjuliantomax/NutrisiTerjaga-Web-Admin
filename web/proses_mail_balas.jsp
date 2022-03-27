<%-- 
    Document   : proses_mail_balas
    Created on : Feb 9, 2021, 7:43:07 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.io.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String userid = request.getParameter("userid");
            String nama = request.getParameter("namauser");
            String judul = request.getParameter("judul");
            String isi = request.getParameter("isi");
            String contactid = request.getParameter("contactid");
//            out.print(nama + judul + isi);
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/nutrisiterjaga", "root", "");
                if (conn != null) {
                    if (nama != "" || nama != null) {
                        PreparedStatement pst = conn.prepareStatement("insert into mail_balas(userid,judul,isi,status) values(?,?,?,?)");
                        pst.setString(1, userid);
                        pst.setString(2, judul);
                        pst.setString(3, isi);
                        pst.setString(4, "Belum Baca");
                        pst.executeUpdate();
                        response.sendRedirect("mail.jsp");
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
