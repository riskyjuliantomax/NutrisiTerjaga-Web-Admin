<%-- 
    Document   : delete_produk
    Created on : Jan 23, 2021, 4:28:09 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete</title>
    </head>
    <body>
        <%
            String id = request.getParameter("id");
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nutrisiterjaga", "root", "");
                if (con != null) {
                    Statement st = con.createStatement();
                    st.executeUpdate("Delete from produk where id = '" + id + "'");
                    response.sendRedirect("produk_list.jsp");
                } else {
        %>
        <script>
            window.onload = function () {
                alert('Gagal Menghapus Produk');
                window.location.href = "roduk_list.jsp";
            }

        </script>
        <% }
            } catch (Exception e) {
                out.print("Can't Connect Database : " + e.getMessage());
            }
        %>
</html>
