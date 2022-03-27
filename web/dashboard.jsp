<%@page import="java.sql.*,java.io.*" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="Dashboard">
        <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
        <title>Admin | Dashboard</title>

        <!-- Favicons -->
        <link href="img/favicon.png" rel="icon">
        <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

        <!-- Bootstrap core CSS -->
        <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!--external css-->
        <link href="lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
        <link rel="stylesheet" type="text/css" href="css/zabuto_calendar.css">
        <link rel="stylesheet" type="text/css" href="lib/gritter/css/jquery.gritter.css" />
        <!-- Custom styles for this template -->
        <link href="css/style.css" rel="stylesheet">
        <link href="css/style-responsive.css" rel="stylesheet">
        <script src="lib/chart-master/Chart.js"></script>

        <!-- =======================================================
          Template Name: Dashio
          Template URL: https://templatemag.com/dashio-bootstrap-admin-template/
          Author: TemplateMag.com
          License: https://templatemag.com/license/
        ======================================================= -->
    </head>

    <body>
        <section id="container">
            <!-- **********************************************************************************************************************************************************
                TOP BAR dan SideBar
                *********************************************************************************************************************************************************** -->
            <%@include file="sidebar.jsp" %>
            <!-- **********************************************************************************************************************************************************
              
                *********************************************************************************************************************************************************** -->
            <!--main content start-->
            <section id="main-content">
                <section class="wrapper">
                    <div class="row">
                        <div class="row mt">
                            <div class="col-md-4 col-sm-4 mb">
                                <div class="darkblue-panel pn" style="background: #333333">
                                    <div class="darkblue-header">
                                        <h5>Total Produk</h5>
                                    </div>
                                    <h1 class="mt"><i class="fa fa-cart-plus fa-3x"></i></h1>
                                    <!--<p>+ 1,789 NEW VISITS</p>-->
                                    <footer>
                                        <div class="centered">
                                            <%    try {
                                                    String hosts = "jdbc:mysql://localhost:3306/nutrisiterjaga";
                                                    Connection conn = null;
                                                    Statement statement = null;
                                                    ResultSet rs = null;
                                                    Class.forName("com.mysql.jdbc.Driver");
                                                    conn = DriverManager.getConnection(hosts, "root", "");
                                                    statement = conn.createStatement();
                                                    String data = "Select count(nama) from produk";
                                                    rs = statement.executeQuery(data);
                                            %>
                                            <%while (rs.next()) {%>
                                            <h5><%= rs.getString(1) %>
                                            </h5>
                                            <% } %>
                                        </div>
                                    </footer>
                                </div>
                                <!--  /darkblue panel -->
                            </div>
                            <div class="col-md-4 col-sm-4 mb">
                                <div class="darkblue-panel pn" style="background: #333333">
                                    <div class="darkblue-header">
                                        <h5>Total Produk Terjual</h5>
                                    </div>
                                    <h1 class="mt"><i class="fa fa-shopping-cart fa-3x"></i></h1>
                                    <!--<p>+ 1,789 NEW VISITS</p>-->
                                    <footer>
                                        <div class="centered">

                                            <%
                                                String hostside = "jdbc:mysql://localhost:3306/nutrisiterjaga";
                                                try {
                                                    Class.forName("com.mysql.jdbc.Driver");
                                                    Connection connside = DriverManager.getConnection(hostside, "root", "");
                                                    String countidbayar = "select count(id) from pembayaran";
                                                    Statement stmtside = connside.createStatement();
                                                    ResultSet rsside = null;
                                                    rsside = stmtside.executeQuery(countidbayar);
                                                    while (rsside.next()) {%>
                                            <h5><%= rsside.getString(1)%></h5>
                                            <% }
                                                    rsside.close();
                                                    stmtside.close();
                                                    connside.close();
                                                } catch (SQLException ex) {
                                                    out.print("Gagal Koneksi");
                                                } catch (Exception ex) {
                                                    out.print(ex.getMessage());
                                                }
                                            %>
                                        </div>
                                    </footer>
                                </div>
                                <!--  /darkblue panel -->
                            </div>
                            <%
                                try {
                                    Class.forName("com.mysql.jdbc.Driver");
                                    Connection connside = DriverManager.getConnection(hostside, "root", "");
                                    String countnotifikasibelumbaca = "select count(notifikasi) from contact where notifikasi='Belum Baca'";
                                    Statement stmtside = connside.createStatement();
                                    ResultSet rsside = null;
                                    rsside = stmtside.executeQuery(countnotifikasibelumbaca);
                                    while (rsside.next()) {
                                        String countnotifikasibelumbacas = rsside.getString(1);

                            %>
                            <div class="col-md-4 col-sm-4 mb">
                                <div class="darkblue-panel pn" style="background: 
                                     <%                                         
                                         int notifint = Integer.parseInt(rsside.getString(1));
                                         if (notifint > 0) {%>
                                     #ff3333;
                                     <% } else {%>
                                     <%   }
                                     %>
                                     "><div class="darkblue-header">
                                        <h5>Notifikasi Email</h5>
                                    </div>
                                    <h1 class="mt"><i class="fa fa-exclamation fa-3x"></i></h1>
                                    <!--<p>+ 1,789 NEW VISITS</p>-->
                                    <footer>
                                        <div class="centered">
                                            <h5>
                                                <%= rsside.getString(1)%>
                                            </h5>
                                        </div>
                                    </footer>
                                </div>
                                <% }
                                        rsside.close();
                                        stmtside.close();
                                        connside.close();
                                    } catch (SQLException ex) {
                                        out.print("Gagal Koneksi");
                                    } catch (Exception ex) {
                                        out.print(ex.getMessage());
                                    }
                                %>
                                <!--  /darkblue panel -->
                            </div>
                            <!-- SERVER STATUS PANELS -->
                            <div class="col-md-4 col-sm-4 mb">
                                <div class="grey-panel pn donut-chart">
                                    <div class="stock card">
                                        <div class="stock-chart">
                                            <div id="chart"></div>
                                        </div>
                                        <div class="stock current-price">
                                            <div class="row">
                                                <div class="info col-sm-6 col-xs-6"><abbr>Total Pendapatan</abbr>
                                                </div>
                                                <div class="changes col-sm-6 col-xs-6">
                                                    <%    try {
                                                            Class.forName("com.mysql.jdbc.Driver");
                                                            Connection connside = DriverManager.getConnection(hostside, "root", "");
                                                            String countnotifikasibelumbaca = "select sum(harga*jumlah) from pembayaran";
                                                            Statement stmtside = connside.createStatement();
                                                            ResultSet rsside = null;
                                                            rsside = stmtside.executeQuery(countnotifikasibelumbaca);
                                                            while (rsside.next()) {
                                                                String countnotifikasibelumbacas = rsside.getString(1);%>
                                                    <div class="value up"><i class="fa fa-caret-up hidden-sm hidden-xs"></i>Rp. <%= rsside.getString(1)%></div>
                                                    <% }
                                                            rsside.close();
                                                            stmtside.close();
                                                            connside.close();
                                                        } catch (SQLException ex) {
                                                            out.print("Gagal Koneksi");
                                                        } catch (Exception ex) {
                                                            out.print(ex.getMessage());
                                                        }
                                                    %>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
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
                                <!-- /grey-panel -->


                                <!-- /col-md-4-->
                            </div>  
                            <!-- /row -->
                            </section>
                            </section>
                            <!--main content end-->

                            </section>
                            <!-- js placed at the end of the document so the pages load faster -->
                            <script src="lib/jquery/jquery.min.js"></script>

                            <script src="lib/bootstrap/js/bootstrap.min.js"></script>
                            <script class="include" type="text/javascript" src="lib/jquery.dcjqaccordion.2.7.js"></script>
                            <script src="lib/jquery.scrollTo.min.js"></script>
                            <script src="lib/jquery.nicescroll.js" type="text/javascript"></script>
                            <script src="lib/jquery.sparkline.js"></script>
                            <!--common script for all pages-->
                            <script src="lib/common-scripts.js"></script>
                            <script type="text/javascript" src="lib/gritter/js/jquery.gritter.js"></script>
                            <script type="text/javascript" src="lib/gritter-conf.js"></script>
                            <!--script for this page-->
                            <script src="lib/sparkline-chart.js"></script>
                            <script src="lib/zabuto_calendar.js"></script>

                            <script type="application/javascript"></script>
                            <script>
                                $(document).ready(function () {
                                    $("#date-popover").popover({
                                        html: true,
                                        trigger: "manual"
                                    });
                                    $("#date-popover").hide();
                                    $("#date-popover").click(function (e) {
                                        $(this).hide();
                                    });

                                    $("#my-calendar").zabuto_calendar({
                                        action: function () {
                                            return myDateFunction(this.id, false);
                                        },
                                        action_nav: function () {
                                            return myNavFunction(this.id);
                                        },
                                        ajax: {
                                            url: "show_data.php?action=1",
                                            modal: true
                                        },
                                        legend: [{
                                                type: "text",
                                                label: "Special event",
                                                badge: "00"
                                            },
                                            {
                                                type: "block",
                                                label: "Regular event",
                                            }
                                        ]
                                    });
                                });

                                function myNavFunction(id) {
                                    $("#date-popover").hide();
                                    var nav = $("#" + id).data("navigation");
                                    var to = $("#" + id).data("to");
                                    console.log('nav ' + nav + ' to: ' + to.month + '/' + to.year);
                                }

                                document.getElementById("index").classList.add('active');
                            </script>

                            </html>
