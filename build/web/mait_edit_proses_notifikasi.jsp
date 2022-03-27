<%-- 
    Document   : mait_edit_proses_notifikasi
    Created on : Feb 9, 2021, 6:43:34 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*,java.io.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String status = request.getParameter("status");
            String id = request.getParameter("idcontact");

            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nutrisiterjaga", "root", "");
                if (con != null) {
                    if (id != null) {
                        PreparedStatement ps = con.prepareStatement("update contact set status=? where id = '" + id + "'");
                        ps.setString(1, status);
                        ps.executeUpdate();
                        request.getRequestDispatcher("mail_proses.jsp").forward(request, response);

                    } else {
        %>
        <script>
            window.onload = function () {
                alert('Gagal Mengedit');
                window.location.href = 'mail_proses.jsp';
            }

        </script>
        <%}
                }
            } catch (Exception e) {
                out.print("can't connect database : " + e.getMessage());
            }
        %>
    </body>
</html>
