<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="Dashboard">
        <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
        <title>Admin | Produk List</title>

        <!-- Favicons -->
        <link href="img/favicon.png" rel="icon">
        <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

        <!-- Bootstrap core CSS -->
        <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!--external css-->
        <link href="lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
        <!-- Custom styles for this template -->
        <link href="css/style.css" rel="stylesheet">
        <link href="css/style-responsive.css" rel="stylesheet">

        <!-- =======================================================
          Template Name: Dashio
          Template URL: https://templatemag.com/dashio-bootstrap-admin-template/
          Author: TemplateMag.com
          License: https://templatemag.com/license/
        ======================================================= -->
    </head>

    <body>
        <section id="container">
            <%@include file="sidebar.jsp" %>
            <!-- **********************************************************************************************************************************************************
                MAIN CONTENT
                *********************************************************************************************************************************************************** -->
            <!--main content start-->
            <section id="main-content">
                <section class="wrapper">

                    <!-- row -->
                    <div class="row mt">
                        <div class="col-md-12">
                            <div class="content-panel">
                                <table class="table table-striped table-advance table-hover">
                                    <h4><i class="fa fa-angle-right"></i>Table Produk</h4>
                                    <form action="pembayaran_list_cari.jsp" class="pull-right mail-src-position">
                                        <div class="input-append">
                                            <input type="text" class="form-control " placeholder="Cari Pembayaran (Nama Depan / NamaBelakang / Metode Bayar / Tanggal Beli/ Nama Produk)" name="cari">
                                        </div>
                                    </form>
                                    <hr>
                                    <thead>
                                        <tr>
                                            <th><i class="fa">Tanggal Beli</i></th>
                                            <th><i class="fa">Nama</i> </th>
                                            <th><i class="fa">No Hp</i> </th>
                                            <th><i class="fa">Metode Bayar</i></th>
                                            <th><i class="fa">Nama Produk</i></th>
                                            <th><i class="fa">Harga X Jumlah</i></th>
                                            <th><i class="fa">Total</i></th>
                                            <th><i class=" fa fa-edit"></i> Aksi</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%                                                    
                                            try {
                                                String cari = request.getParameter("cari");
                                                String hosts = "jdbc:mysql://localhost:3306/nutrisiterjaga";
                                                Connection conn = null;
                                                Statement statement = null;
                                                ResultSet rs = null;
                                                Class.forName("com.mysql.jdbc.Driver");
                                                conn = DriverManager.getConnection(hosts, "root", "");
                                                statement = conn.createStatement();
                                                String data = "Select * from pembayaran_user where namadepan like'%"+cari+"%' || namabelakang like '%"+cari+"%' || metodepembayaran like '%"+cari+"%' || metodepembayaran like '%"+cari+"%' || tgl_beli like '%"+cari+"%'";
                                                rs = statement.executeQuery(data);
                                                while (rs.next()) {
                                                    String useridbayar = rs.getString("userid");
                                                    String jammenit = rs.getString("jammenit");
                                                    Connection con2 = DriverManager.getConnection(host, "root", "");
                                                    Statement stmt2 = con2.createStatement();
                                                    String data2 = "select(harga*jumlah), id , id_produk, harga,jumlah,jammenit,userid from pembayaran where userid = '"+useridbayar+"'&&jammenit='"+jammenit+"'";
                                                    ResultSet rs2 = stmt2.executeQuery(data2);

                                                    while (rs2.next()) {
                                                        String id_produk = rs2.getString("id_produk");
                                                        Connection con3 = DriverManager.getConnection(host, "root", "");
                                                        Statement stmt3 = con3.createStatement();
                                                        String data3 = "select * from produk where id='" + id_produk + "' || nama like'"+cari+"'";
                                                        ResultSet rs3 = stmt3.executeQuery(data3);
                                                        while (rs3.next()) {
                                        %>

                                    <td>
                                        <%= rs.getString("tgl_beli")%>
                                    </td>
                                    <td>
                                        <%= rs.getString("namadepan")%>  <%= rs.getString("namabelakang")%> 

                                    </td>
                                    <td>
                                       <%= rs.getString("nohp")%>
                                    </td>
                                    <td><%= rs.getString("metodepembayaran")%></td>
                                    <td>
                                        <%= rs3.getString("nama") %>
                                    </td>
                                    <td>
                                        <%= rs2.getString("harga") %> X <%= rs2.getString("jumlah")%>
                                    </td>
                                    <td>
                                        <%= rs2.getString(1) %>
                                    </td>
                                    <td>
                                        <a href="detail_pembayaran.jsp?id_pembayaran=<%= rs2.getString("id")%>&&userbayar=<%= rs.getString("id") %>" class="btn btn-primary btn-xs"><i class="fa fa-list"></i></a>
                                    </td>
                                    </tr>
                                    <%      }

                                                    rs3.close();
                                                    stmt3.close();
                                                    con3.close();
                                                }
                                                rs2.close();
                                                stmt2.close();
                                                con2.close();
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

                                    </tbody>
                                </table>
                            </div>
                            <!-- /content-panel -->
                        </div>
                        <!-- /col-md-12 -->
                    </div>
                    <!-- /row -->
                </section>
            </section>
        </section>
        <!-- js placed at the end of the document so the pages load faster -->
        <script src="lib/jquery/jquery.min.js"></script>
        <script src="lib/bootstrap/js/bootstrap.min.js"></script>
        <script class="include" type="text/javascript" src="lib/jquery.dcjqaccordion.2.7.js"></script>
        <script src="lib/jquery.scrollTo.min.js"></script>
        <script src="lib/jquery.nicescroll.js" type="text/javascript"></script>
        <!--common script for all pages-->
        <script src="lib/common-scripts.js"></script>
        <!--script for this page-->
        <script>
            document.getElementById("pembayaran").classList.add('active');

        </script>
    </body>

</html>
