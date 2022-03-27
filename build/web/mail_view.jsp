<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="Dashboard">
        <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
        <title>Admin | Detail Mail</title>

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
            <%@include file="mail_sidebar.jsp" %>
            <div class="col-sm-9">
                <section class="panel">
                    <header class="panel-heading wht-bg">
                        <h4 class="gen-case">
                            Melihat Mail
<!--                            <form action="#" class="pull-right mail-src-position">
                                <div class="input-append">
                                    <input type="text" class="form-control " placeholder="Search Mail">
                                </div>
                            </form>-->
                        </h4>
                    </header>
                    <% try {
                            String contactid = request.getParameter("id");
                            String userid = request.getParameter("userid");
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection conn = DriverManager.getConnection(host, "root", "");
                            String querys = "select * from contact where id='" + contactid + "'";
                            Statement stmt = conn.createStatement();
                            ResultSet rs = null;
                            rs = stmt.executeQuery(querys);

                            while (rs.next()) {
                                Statement stmt3 = conn.createStatement();
                                String queryuser = "select * from user where id='" + userid + "'";
                                ResultSet rs3 = null;
                                rs3 = stmt3.executeQuery(queryuser);
                                while (rs3.next()) {
                    %>
                    <div class="panel-body ">
                        <div class="mail-header row">
                            <div class="col-md-8">
                                <h4 class="pull-left"><%= rs.getString("judul")%></h4>
                            </div>
                        </div>
                        <div class="mail-sender">
                            <div class="row">
                                <div class="col-md-8">
                                    <span><%= rs3.getString("nama")%></span>
                                </div>
                            </div>
                        </div>
                        <div class="view-mail">
                            <p><%= rs.getString("isi")%></p>
                        </div>
                        <!--                        <div class="attachment-mail">
                                                    <p>
                                                        <span><i class="fa fa-paperclip"></i>Lampiran</span>
                                                    </p>
                                                    <ul>
                                                        <li>
                                                            <a class="atch-thumb" href="#">
                                                                <img src="img/instagram.jpg">
                                                            </a>
                                                            <a class="name" href="#">
                                                                IMG_001.jpg
                                                                <span>20KB</span>
                                                            </a>
                                                            <div class="links">
                                                                <a href="#">View</a> -
                                                                <a href="#">Download</a>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div>-->
                        <div class="compose-btn pull-left">
                            <a href="mail_balas.jsp?id=<%= rs.getString("id") %>&&userid=<%= rs3.getString("id") %>" class="btn btn-sm btn-theme"><i class="fa fa-reply"></i> Balas</a>
                        </div>
                    </div>
                    <%}
                                rs3.close();

                            }
                            rs.close();
                            stmt.close();
                            conn.close();
                        } catch (SQLException ex) {
                            out.print("Gagal Koneksi");
                        } catch (Exception ex) {
                            out.print(ex.getMessage());
                        }
                    %>
                </section>
            </div>
        </div>
    </section>
    <!-- /wrapper -->
</section>
<!-- /MAIN CONTENT -->
<!--main content end-->
<!--footer start-->

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
    document.getElementById("mail").classList.add('active');
</script>
</body>

</html>
