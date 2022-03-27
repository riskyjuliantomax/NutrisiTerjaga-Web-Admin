<%-- 
    Document   : proses_mail_notifikasi
    Created on : Feb 6, 2021, 12:43:56 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String id = request.getParameter("id");
            String userid = request.getParameter("userid");
//            out.print(id + " " + userid);

            try {
                String hosts = "jdbc:mysql://localhost:3306/nutrisiterjaga";
                Connection conn = null;
                Statement statement = null;
                ResultSet rs = null;
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection(hosts, "root", "");
                statement = conn.createStatement();
                String data = "Select * from contact where id ='" + id + "'";

                rs = statement.executeQuery(data);
                while (rs.next()) {
                    String notifikasi = rs.getString("notifikasi");
                    if (notifikasi.equalsIgnoreCase("Belum baca")) {
                        try {
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con = DriverManager.getConnection(hosts, "root", "");
                            if (conn != null) {
                                if (id != null) {
                                    PreparedStatement pst = con.prepareStatement("update contact set notifikasi = ? where id='" + id + "'");
                                    pst.setString(1, "Sudah Baca");
                                    pst.executeUpdate();

                                    request.getRequestDispatcher("mail_view.jsp").forward(request, response);
                                }
                            } else {
                                out.print("Gagal Mengedit Notifikasi");
                                request.getRequestDispatcher("mail_view.jsp").forward(request, response);
                            }
                        } catch (SQLException ex) {
                            out.print("Gagal Koneksi");
                        } catch (Exception ex) {
                            out.print(ex.getMessage());
                        }
                    } else {
                        request.getRequestDispatcher("mail_view.jsp").forward(request, response);
                    }
                }

                rs.close();
                statement.close();
                conn.close();
            } catch (SQLException ex) {
                out.print("Gagal Koneksi");
            } catch (Exception ex) {
                out.print(ex.getMessage());
            }
        %>
    </body>
</html>
