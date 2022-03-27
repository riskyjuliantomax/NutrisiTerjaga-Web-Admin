<%-- 
    Document   : edit_akun_setting
    Created on : Jan 24, 2021, 11:34:29 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.io.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Akun Setting</title>
    </head>
    <body style="background-color: #000">
        <%
            String id = request.getParameter("id");
            String pronvisi = request.getParameter("provinsi");
            String kabupaten = request.getParameter("kabupaten");
            String kecamatan = request.getParameter("kecamatan");
            String nohp = request.getParameter("nohp");
            String alamat = request.getParameter("alamat");
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nutrisiterjaga", "root", "");
                if (con != null) {
                    if (id != "") {
                        PreparedStatement ps = con.prepareStatement("update admin set provinsi=?,kabupaten=?,kecamatan=?,nohp=?,alamat=? where id = '" + id + "'");
                        ps.setString(1, pronvisi);
                        ps.setString(2, kabupaten);
                        ps.setString(3, kecamatan);
                        ps.setString(4, nohp);
                        ps.setString(5, alamat);
                        ps.executeUpdate();
        %>
        <script>
            window.onload = function () {
                alert('Berhasil Edit');
                window.location.href = 'akunsetting.jsp';
            }
        </script>
        <%
        } else {
        %>
        <script>
            window.onload = function () {
                alert('Gagal Edit!');
                window.location.href = 'akunsetting.jsp';
            }

        </script>
        <%}
                }
            } catch (Exception e) {
                out.print("can't connect database : " + e.getMessage());
            }%>
    </body>
</html>
