<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="Dashboard">
        <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
        <title>Admin | Mail</title>

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
            <!-- **********************************************************************************************************************************************************
                TOP BAR CONTENT & NOTIFICATIONS
                *********************************************************************************************************************************************************** -->
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
                            Email Masuk
                            <form action="#" class="pull-right mail-src-position">
                                <div class="input-append">
                                    <input type="text" class="form-control " placeholder="Cari Mail">
                                </div>
                            </form>
                        </h4>
                    </header>
                    <div class="panel-body minimal">
                        <div class="mail-option">
                            <div class="table-inbox-wrap ">
                                <table class="table table-inbox table-hover">
                                    <tbody>
                                        <% 
                                            try {
                                                Class.forName("com.mysql.jdbc.Driver");
                                                Connection conn = DriverManager.getConnection(host, "root", "");
                                                String querys = "select * from contact order by notifikasi asc";
                                                Statement stmt = conn.createStatement();
                                                ResultSet rs = null;
                                                rs = stmt.executeQuery(querys);
                                                while (rs.next()) {
                                                    
                                                    String userid = rs.getString("userid");
                                                    Statement stmt2 = conn.createStatement();
                                                    String queryuser = "select * from user where id='" + userid + "'";
                                                    ResultSet rs2 = null;
                                                    rs2 = stmt2.executeQuery(queryuser);
                                                    while (rs2.next()) {

                                        %>
                                        <tr class="" onclick="window.location.href = 'proses_mail_notifikasi.jsp?id=<%= rs.getString("id")%>&&userid=<% out.print(userid);%>'">
                                            <!--                                        <td class="inbox-small-cells">
                                                                                        <input type="checkbox" class="mail-checkbox">
                                                                                    </td>-->
                                            <td class="inbox-small-cells"></td>
                                            <td class="view-message  dont-show"><a href="proses_mail_notifikasi.jsp?id=<%= rs.getString("id")%>&&userid=<% out.print(userid);%>"><%= rs2.getString("email")%></a></td>
                                            <td class="view-message "><a href="proses_mail_notifikasi.jsp?id=<%= rs.getString("id")%>&&userid=<% out.print(userid);%>"><%= rs.getString("judul")%></a></td>
                                            <td class="view-message  inbox-small-cells text-right" style="color: red">
                                                <%
                                                    String notifikasi = rs.getString("notifikasi");
                                                    if (notifikasi.equalsIgnoreCase("belum baca")) {
                                                        out.print("Belum Baca");
                                                    } else {
                                                        out.print("");
                                                    }
                                                %>
                                            </td>
                                            <td class="view-message  text-right"> 
                                                <button class="btn btn-success btn-xs" onclick="window.location.href = 'mail_edit.jsp?id=<%= rs.getString("id")%>&&userid=<% out.print(userid); %>'"><i class="fa fa-pencil"></i></button>
                                            </td>
                                        </tr>
                                        <%
                                                    }
                                                    rs2.close();
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
                                    </tbody>
                                </table>
                            </div>
                        </div>
                </section>
            </div>
        </div>
    </section>
    <!-- /wrapper -->
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
                                                    document.getElementById("mail").classList.add('active');
                                                    document.getElementById("mailmasuk").classList.add('active');
</script>
</body>

</html>