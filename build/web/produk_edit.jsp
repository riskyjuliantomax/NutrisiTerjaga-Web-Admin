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
                    <h3><i class="fa fa-angle-right"></i>Edit Produk</h3>
                    <!-- BASIC FORM ELELEMNTS -->
                    <div class="row mt">
                        <div class="col-lg-12">
                            <div class="form-panel">
                                <h4 class="mb"><i class="fa fa-angle-right"></i>Edit Produk</h4>
                                <%     try {
                                        String id = request.getParameter("id");
                                        Connection con = null;
                                        Statement statement = null;
                                        ResultSet rs = null;
                                        Class.forName("com.mysql.jdbc.Driver");
                                        con = DriverManager.getConnection(host, "root", "");
                                        statement = con.createStatement();
                                        String data = "select * from produk where id ='" + id + "'";
                                        rs = statement.executeQuery(data);
                                        while (rs.next()) {
                                %>
                                <form class="form-horizontal style-form" method="post" action="olah_edit_produklist.jsp?id=<%= rs.getString("id")%>">
                                    <div class="form-group">
                                        <label class="col-sm-2 col-sm-2 control-label">Nama Barang</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" value="<%= rs.getString("nama")%>" name="nama">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 col-sm-2 control-label">Hitung Satuan</label>
                                        <div class="col-sm-10">
                                            <div class="btn-group">
                                                <select type="button" class="btn btn-theme dropdown-toggle" data-toggle="dropdown" name="satuan">
                                                    <%
                                                        String satuan = rs.getString("satuan");
                                                    %>
                                                    <option selected><%=  rs.getString("satuan")%></option>
                                                    <%
                                                        if (satuan.equalsIgnoreCase("KG")) {
                                                    %>
                                                    <option>GRAM</option>
                                                    <option>IKAT</option>
                                                    <%} else if (satuan.equalsIgnoreCase("GRAM")) {
                                                    %>
                                                    <option>KG</option>
                                                    <option>IKAT</option>
                                                    <%} else if (satuan.equalsIgnoreCase("IKAT")) {
                                                    %>
                                                    <option>KG</option>
                                                    <option>GRAM</option>
                                                    <%}%>
                                                </select>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 col-sm-2 control-label">Harga Persatuan</label>
                                        <div class="col-sm-10">
                                            <input type="number" class="form-control" value="<%= rs.getString("harga")%>" name="harga">
                                            <span class="help-block">Penginputan Menggunakan Nomor Tidak menggunakan Spasi,koma dan titik.</span>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 col-sm-2 control-label">Jenis Produk</label>
                                        <div class="col-sm-10">
                                            <div class="btn-group">
                                                <select type="button" class="btn btn-theme dropdown-toggle" data-toggle="dropdown" name="jenis">
                                                    <%
                                                        String jenis = rs.getString("jenis");
                                                    %>
                                                    <option selected><%=  rs.getString("jenis")%></option>
                                                    <%
                                                        if (jenis.equalsIgnoreCase("SAYUR")) {
                                                    %>
                                                    <option>Buahan</option>
                                                    <%} else if (jenis.equalsIgnoreCase("BUAHAN")) {
                                                    %>
                                                    <option>Sayur</option>
                                                    <%}%>
                                                </select>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-sm-2 col-sm-2 control-label">Stok</label>
                                        <div class="col-sm-10">
                                            <input type="number" class="form-control"  value="<%= rs.getString("stok")%>" name="stok">
                                            <span class="help-block">Penginputan Menggunakan Nomor Tidak menggunakan Spasi,koma dan titik.</span>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 col-sm-2 control-label">Lokasi Gambar</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" name="gambar" value="<%= rs.getString("lokasi_gambar") %>">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 col-sm-2 control-label">Deskripsi</label>
                                        <div class="col-sm-10">

                                            <textarea class="form-control" name="deskripsi" id="contact-message"
                                                      rows="5" data-rule="required" data-msg="<%= rs.getString("deskripsi")%>" ><%= rs.getString("deskripsi")%></textarea>
                                            <div class="validate"></div>

                                        </div>
                                    </div>
                                    <input type="submit" class="btn btn-success">
                                    <button type="button" class="btn btn-danger" onclick="window.location.href = 'produk_list.jsp'">Batal</button>
                                    <%}
                                            rs.close();
                                            statement.close();
                                            con.close();
                                        } catch (Exception e) {
                                            out.println("Gagal Koneksi Ke Database, Errornya = " + e.getMessage());
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
                                        document.getElementById("list_produk").classList.add('active');
                                        document.getElementById("produk").classList.add('active');
        </script>
    </body>

</html>
