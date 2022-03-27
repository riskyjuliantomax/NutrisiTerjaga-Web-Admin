<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="Dashboard">
        <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
        <title>Admin | Buat Mail</title>

        <!-- Favicons -->
        <link href="img/favicon.png" rel="icon">
        <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

        <!-- Bootstrap core CSS -->
        <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!--external css-->
        <link href="lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
        <link href="lib/bootstrap-wysihtml5/bootstrap-wysihtml5.css" rel="stylesheet" />
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
                            Buat Mail
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
                    <div class="panel-body">
                        <div class="compose-mail">
                            <form role="form-horizontal" method="post" action="proses_mail_balas.jsp">
                                <div class="form-group">
                                    <label for="to" class="" value="<%= rs3.getString("nama")%>">To:<%= rs3.getString("nama")%></label>
                                    <div class="form-group">
                                        <label for="subject" class="">Judul:</label>
                                        <input type="text" tabindex="1" id="subject" class="form-control" value="<%= rs.getString("judul")%>" disabled style="background: #fff; cursor: default">
                                    </div>
                                    <div class="compose-editor">
                                        <textarea class="wysihtml5 form-control" rows="9" name="isi"></textarea>
                                    </div>

                                    <input type="hidden" value="<%= rs3.getString("nama")%>" name="namauser">
                                    <input type="hidden" value="<%=  rs.getString("judul")%>" name="judul">
                                    <input type="hidden" value="<%=  rs.getString("userid")%>" name="userid">
                                    <input type="hidden" value="<%=  rs.getString("id")%>" name="contactid">
                                    <div class="compose-btn">
                                        <button type="submit" class="btn btn-theme btn-sm" ><i class="fa fa-check"></i> Send</button>
                                    </div>
                            </form>
                        </div>
                    </div>
                </section>
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
            </div>
        </div>
    </section>
    <!-- /wrapper -->
</section>
<!-- /MAIN CONTENT -->
<!--main content end-->
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
<script type="text/javascript" src="lib/bootstrap-wysihtml5/wysihtml5-0.3.0.js"></script>
<script type="text/javascript" src="lib/bootstrap-wysihtml5/bootstrap-wysihtml5.js"></script>

<script type="text/javascript">
    document.getElementById("balasmail").classList.add('active');
    // $('.wysihtml5').wysihtml5();

    //wysihtml5 end
</script>
</body>

</html>
