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
                                    <form action="produk_list_search.jsp" class="pull-right mail-src-position">
                                        <div class="input-append">
                                            <input type="text" class="form-control " placeholder="Cari Produk" name="cari">
                                        </div>
                                    </form>
                                    <hr>
                                    <thead>
                                        <tr>
                                            <th><i class="fa">Nama</i></th>
                                            <th><i class="fa">Harga</i> </th>
                                            <th><i class="fa">Stok</i> </th>
                                            <th><i class="fa">Jenis</i></th>
                                            <th><i class="fa">Satuan</i></th>
                                            <th><i class=" fa fa-edit"></i> Aksi</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%    try {
                                                String cari = request.getParameter("cari");
                                                String hosts = "jdbc:mysql://localhost:3306/nutrisiterjaga";
                                                Connection conn = null;
                                                Statement statement = null;
                                                ResultSet rs = null;
                                                Class.forName("com.mysql.jdbc.Driver");
                                                conn = DriverManager.getConnection(hosts, "root", "");
                                                statement = conn.createStatement();
                                                String data = "Select * from produk where nama like '%"+cari+"%' OR stok >= '"+cari+"' OR jenis like '%"+cari+"%'  order by nama asc";
                                                rs = statement.executeQuery(data);
                                        %>
                                        <%while (rs.next()) {%>
                                    <td>
                                        <%= rs.getString("nama")%>
                                    </td>
                                    <td>
                                        <%= rs.getString("harga")%> 

                                    </td>
                                    <td>
                                        <%
                                            int stok = Integer.parseInt(rs.getString("stok"));
                                            if (stok >= 10) {
                                        %>
                                        <span class="label label-success label-mini"><%= rs.getString("stok")%></span>
                                        <%
                                        } else if (stok < 10 && stok >= 5) {
                                        %>
                                        <span class="label label-warning label-mini"><%= rs.getString("stok")%></span>
                                        <%
                                        } else {
                                        %> 
                                        <span class="label label-danger label-mini"><%= rs.getString("stok")%></span>
                                        <% }
                                        %>
                                    </td>
                                    <td><%= rs.getString("jenis")%></td>
                                    <td><%= rs.getString("satuan")%></td>
                                    <td>
                                        <a href="produk_edit.jsp?id=<%= rs.getString("id")%>" class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></a>
                                        <a href="delete_produk.jsp?id=<%= rs.getString("id")%>" class="btn btn-danger btn-xs"><i class="fa fa-trash-o " onclick="return confirm('Apakah Ingin Hapus Data? Produk : <%= rs.getString("nama")%>')"></i></button>
                                    </td>
                                    </tr>
                                    <% } %>
                                    <%
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
                                            document.getElementById("list_produk").classList.add('active');
                                            document.getElementById("produk").classList.add('active');

        </script>
    </body>

</html>
