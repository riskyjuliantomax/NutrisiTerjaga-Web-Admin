<%@page import="java.sql.*,java.io.*" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="Dashboard">
        <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
        <title>Admin | Edit Produk</title>

        <!-- Favicons -->
        <link href="img/favicon.png" rel="icon">
        <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

        <!-- Bootstrap core CSS -->
        <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!--external css-->
        <link href="lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
        <link rel="stylesheet" type="text/css" href="lib/bootstrap-datepicker/css/datepicker.css" />
        <link rel="stylesheet" type="text/css" href="lib/bootstrap-daterangepicker/daterangepicker.css" />
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
                    <h3><i class="fa fa-angle-right"></i>Detail Pembayaran</h3>
                    <!-- BASIC FORM ELELEMNTS -->
                    <div class="row mt">
                        <div class="col-lg-12">
                            <div class="form-panel">
                                <%                                    try {
                                        String userids = (String) session.getAttribute("sessuser");
                                        String userbayar = request.getParameter("userbayar");
                                        String idbayar = request.getParameter("id_pembayaran");
                                        String hosts = "jdbc:mysql://localhost:3306/nutrisiterjaga";
                                        Connection conn = null;
                                        Statement statement = null;
                                        ResultSet rs = null;
                                        Class.forName("com.mysql.jdbc.Driver");
                                        conn = DriverManager.getConnection(hosts, "root", "");
                                        statement = conn.createStatement();
                                        String data = "Select * from pembayaran_user where id ='" + userbayar + "'";
                                        rs = statement.executeQuery(data);
                                        while (rs.next()) {
                                            String jammenit = rs.getString("jammenit");
                                            Connection con2 = DriverManager.getConnection(host, "root", "");
                                            Statement stmt2 = con2.createStatement();
                                            String data2 = "select(harga*jumlah), id , id_produk, harga,jumlah,jammenit,userid from pembayaran where id ='" + idbayar + "'";
                                            ResultSet rs2 = stmt2.executeQuery(data2);

                                            while (rs2.next()) {
                                                String id_produk = rs2.getString("id_produk");
                                                Connection con3 = DriverManager.getConnection(host, "root", "");
                                                Statement stmt3 = con3.createStatement();
                                                String data3 = "select * from produk where id='" + id_produk + "'";
                                                ResultSet rs3 = stmt3.executeQuery(data3);
                                                while (rs3.next()) {
                                %>
                                <h4 class="mb"><i class="fa fa-calendar"></i> <%= rs.getString("tgl_beli")%><br><br><i class="fa fa-clock-o"></i> <%= rs.getString("jammenit") %></h4>

                                <form class="form-horizontal style-form" method="post">
                                    <div class="form-group">
                                        <label class="col-sm-2 col-sm-2 control-label">Atas Nama Pembeli</label>
                                        <div class="col-sm-4">
                                            <input type="text" class="form-control" value="<%= rs.getString("namadepan")%> <%= rs.getString("namabelakang")%>" disabled="" style="cursor: default; background: #fff">
                                        </div>
                                        <label class="col-sm-2 col-sm-1 control-label">No Hp</label>
                                        <div class="col-sm-5">
                                            <input type="text" class="form-control" value="<%= rs.getString("nohp")%>" disabled="" style="cursor: default; background: #fff">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 col-sm-2 control-label">Alamat Pembeli</label>
                                        <div class="col-sm-10">

                                            <textarea class="form-control" name="deskripsi" id="contact-message"
                                                      rows="5" data-rule="required" data-msg="" disabled="" style="cursor: default; background: #fff"><%= rs.getString("alamat")%></textarea>
                                            <div class="validate"></div>

                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 col-sm-2 control-label">Tempat Tinggal / Kota</label>
                                        <div class="col-sm-5">
                                            <input type="text" class="form-control" value="<%= rs.getString("tmp_tinggal")%>" disabled="" style="cursor: default; background: #fff">
                                        </div>
                                        <div class="col-sm-5">
                                            <input type="text" class="form-control" value="<%= rs.getString("kota")%> " disabled="" style="cursor: default; background: #fff">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 col-sm-2 control-label">Kabupaten / Provinsi</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" value="<%= rs.getString("kabpro")%>" disabled="" style="cursor: default; background: #fff">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-sm-2 col-sm-2 control-label">Kodepos</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control"  value="<%= rs.getString("kodepos") %>" disabled="" style="cursor: default; background: #fff">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 col-sm-2 control-label">Nama Produk</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" value="<%= rs3.getString("nama") %>" disabled="" style="cursor: default; background: #fff">
                                        </div>
                                    </div>
                                          <div class="form-group">
                                        <label class="col-sm-2 col-sm-2 control-label">Harga x Jumlah</label>
                                        <div class="col-sm-3">
                                            <input type="text" class="form-control" value="<%= rs2.getString("harga") %>" disabled="" style="cursor: default; background: #fff">
                                        </div>
                                         <label class="col-sm-0 col-sm-0 control-label"></label>
                                        <div class="col-sm-1">
                                            <input type="text" class="form-control" value="<%= rs2.getString("jumlah") %>" disabled="" style="cursor: default; background: #fff">
                                        </div>
                                        <label class="col-sm-0 col-sm-1 control-label">Total</label>
                                        <div class="col-sm-5"><input type="text" class="form-control" value="<%= rs2.getString(1) %>" disabled="" style="cursor: default; background: #fff">
                                        </div>
                                    </div>
                                           <div class="form-group">
                                        <label class="col-sm-2 col-sm-2 control-label">Metode Pembayaran</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" value="<%= rs.getString("metodepembayaran") %>" disabled="" style="cursor: default; background: #fff">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 col-sm-2 control-label">Catatan Pembeli</label>
                                        <div class="col-sm-10">

                                            <textarea class="form-control" name="deskripsi" id="contact-message"
                                                      rows="5" data-rule="required" disabled="" style="cursor: default; background: #fff" ><%= rs.getString("catatan") %></textarea>
                                            <div class="validate"></div>

                                        </div>
                                    </div>
                                    <button type="button" class="btn btn-danger" onclick="window.location.href = 'pembayaran_list.jsp'">Kembali</button>
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
                            </div>
                        </div>
                    </div>


                    <!-- /row -->
                </section>
                <!-- /wrapper -->
            </section>
            <!-- /MAIN CONTENT -->
            <!--main content end-->
            <!--footer start-->

            <!--footer end-->
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
        <script src="lib/jquery-ui-1.9.2.custom.min.js"></script>
        <!--custom switch-->
        <script src="lib/bootstrap-switch.js"></script>
        <!--custom tagsinput-->
        <script src="lib/jquery.tagsinput.js"></script>
        <!--custom checkbox & radio-->
        <script type="text/javascript" src="lib/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
        <script type="text/javascript" src="lib/bootstrap-daterangepicker/date.js"></script>
        <script type="text/javascript" src="lib/bootstrap-daterangepicker/daterangepicker.js"></script>
        <script type="text/javascript" src="lib/bootstrap-inputmask/bootstrap-inputmask.min.js"></script>
        <script src="lib/form-component.js"></script>

        <script>
                                        document.getElementById("pembayaran").classList.add('active');
        </script>
    </body>

</html>
