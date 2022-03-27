package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.io.*;
import java.sql.*;
import java.io.*;

public final class akunsetting_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/sidebar.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("  <meta charset=\"utf-8\">\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("  <meta name=\"description\" content=\"\">\n");
      out.write("  <meta name=\"author\" content=\"Dashboard\">\n");
      out.write("  <meta name=\"keyword\" content=\"Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina\">\n");
      out.write("  <title>Admin | Akun Setting</title>\n");
      out.write("\n");
      out.write("  <!-- Favicons -->\n");
      out.write("  <link href=\"img/favicon.png\" rel=\"icon\">\n");
      out.write("  <link href=\"img/apple-touch-icon.png\" rel=\"apple-touch-icon\">\n");
      out.write("\n");
      out.write("  <!-- Bootstrap core CSS -->\n");
      out.write("  <link href=\"lib/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("  <!--external css-->\n");
      out.write("  <link href=\"lib/font-awesome/css/font-awesome.css\" rel=\"stylesheet\" />\n");
      out.write("  <!-- Custom styles for this template -->\n");
      out.write("  <link href=\"css/style.css\" rel=\"stylesheet\">\n");
      out.write("  <link href=\"css/style-responsive.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("  <!-- =======================================================\n");
      out.write("    Template Name: Dashio\n");
      out.write("    Template URL: https://templatemag.com/dashio-bootstrap-admin-template/\n");
      out.write("    Author: TemplateMag.com\n");
      out.write("    License: https://templatemag.com/license/\n");
      out.write("  ======================================================= -->\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("  <section id=\"container\">\n");
      out.write("      ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <meta name=\"description\" content=\"\">\n");
      out.write("        <meta name=\"author\" content=\"Dashboard\">\n");
      out.write("        <meta name=\"keyword\" content=\"Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina\">\n");
      out.write("        <title></title>\n");
      out.write("\n");
      out.write("        <!-- Favicons -->\n");
      out.write("        <link href=\"img/favicon.png\" rel=\"icon\">\n");
      out.write("        <link href=\"img/apple-touch-icon.png\" rel=\"apple-touch-icon\">\n");
      out.write("\n");
      out.write("        <!-- Bootstrap core CSS -->\n");
      out.write("        <link href=\"lib/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("        <!--external css-->\n");
      out.write("        <link href=\"lib/font-awesome/css/font-awesome.css\" rel=\"stylesheet\" />\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/zabuto_calendar.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"lib/gritter/css/jquery.gritter.css\" />\n");
      out.write("        <!-- Custom styles for this template -->\n");
      out.write("        <link href=\"css/style.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"css/style-responsive.css\" rel=\"stylesheet\">\n");
      out.write("        <script src=\"lib/chart-master/Chart.js\"></script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <!--header start-->\n");
      out.write("        <header class=\"header black-bg\">\n");
      out.write("            <div class=\"sidebar-toggle-box\">\n");
      out.write("                <div class=\"fa fa-bars tooltips\" data-placement=\"right\" data-original-title=\"Toggle Navigation\"></div>\n");
      out.write("            </div>\n");
      out.write("            <!--logo start-->\n");
      out.write("            <a href=\"dashboard.jsp\" class=\"logo\"><B> Admin </b><span style=\"color:#ffffff;\">Nutrisi</span><span style=\"color:#3fc35f; \">Terjaga</span></b></a>\n");
      out.write("            <!--logo end-->\n");
      out.write("            <div class=\"nav notify-row\" id=\"top_menu\">\n");
      out.write("            </div>\n");
      out.write("            <div class=\"top-menu\">\n");
      out.write("                <ul class=\"nav pull-right top-menu\">\n");
      out.write("                    <li><a class=\"logout\" href=\"destroysession.jsp\" style=\"background: #fc4242;\">Logout</a></li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("        </header>\n");
      out.write("        <!--header end-->\n");
      out.write("        <!-- **********************************************************************************************************************************************************\n");
      out.write("            MAIN SIDEBAR MENU\n");
      out.write("            *********************************************************************************************************************************************************** -->\n");
      out.write("        <!--sidebar start-->\n");
      out.write("        <aside>\n");
      out.write("            <div id=\"sidebar\" class=\"nav-collapse \">\n");
      out.write("                <!-- sidebar menu start-->\n");
      out.write("                <ul class=\"sidebar-menu\" id=\"nav-accordion\">\n");
      out.write("                    <p class=\"centered\"><a href=\"\"><!--<img src=\"img/user.png\" class=\"img-circle\" width=\"80\">--></a></p>\n");
      out.write("\n");
      out.write("                    ");

                        String name = (String) session.getAttribute("sessuser");
                        String host = "jdbc:mysql://localhost:3306/nutrisiterjaga";
                        try {
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection conn = DriverManager.getConnection(host, "root", "");
                            String query = "select * from admin where admin_name='" + name + "'";
                            Statement stmt = conn.createStatement();
                            ResultSet rs = null;
                            rs = stmt.executeQuery(query);
                            while (rs.next()) {
                    
      out.write("\n");
      out.write("                    <h5 class=\"centered\">");
      out.print( rs.getString("admin_namalengkap"));
      out.write("</h5>\n");
      out.write("                    <li class=\"mt\">\n");
      out.write("                        <a  id=\"index\" href=\"dashboard.jsp\" onclick=\"myFunction()\">\n");
      out.write("                            <i class=\"fa fa-bar-chart-o\"></i>\n");
      out.write("                            <span>Dashboard</span>\n");
      out.write("                        </a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"sub-menu\">\n");
      out.write("                        <a  id=\"input\" href=\"tambahproduk.jsp\" onclick=\"myFunction()\">\n");
      out.write("                            <i class=\"fa fa-shopping-cart\"></i>\n");
      out.write("                            <span>Tambah Produk</span>\n");
      out.write("                        </a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"sub-menu\">\n");
      out.write("                        <a  id=\"list_produk\" href=\"produk_list.jsp\" onclick=\"myFunction()\">\n");
      out.write("                            <i class=\"fa fa-bars\"></i>\n");
      out.write("                            <span>List Produk</span>\n");
      out.write("                        </a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"sub-menu\">\n");
      out.write("                        <a  id=\"pembayaran\" href=\"pembayaran_list.jsp\" onclick=\"myFunction()\">\n");
      out.write("                            <i class=\"fa fa-money\"></i>\n");
      out.write("                            <span>List Pembayaran</span>\n");
      out.write("                        </a>\n");
      out.write("                    </li>\n");
      out.write("                    <!-- <li class=\"sub-menu\">\n");
      out.write("                         <a href=\"javascript:;\"  id=\"produk\">\n");
      out.write("                             <i class=\"fa fa-cogs\"></i>\n");
      out.write("                             <span>Produk</span>\n");
      out.write("                         </a>\n");
      out.write("                         <ul class=\"sub\">\n");
      out.write("                             <li id=\"input\"><a href=\"tambahproduk.jsp\">Tambah Produk</a></li>\n");
      out.write("                             <li id=\"list_produk\"><a href=\"produk_list.jsp\">List Produk</a></li>\n");
      out.write("                         </ul>\n");
      out.write("                     </li>-->\n");
      out.write("                    <li class=\"sub-menu\">\n");
      out.write("                        <a  id=\"mail\" href=\"mail.jsp\" onclick=\"myFunction()\">\n");
      out.write("                            <i class=\"fa fa-inbox\"></i>\n");
      out.write("                            <span>Mail</span>\n");
      out.write("                        </a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"sub-menu\">\n");
      out.write("                        <a  id=\"akun_setting\" href=\"akunsetting.jsp\" onclick=\"myFunction()\">\n");
      out.write("                            <i class=\"fa fa-dashboard\"></i>\n");
      out.write("                            <span>Akun Setting</span>\n");
      out.write("                        </a>\n");
      out.write("                    </li>\n");
      out.write("                </ul>\n");
      out.write("                <!-- sidebar menu end-->\n");
      out.write("            </div>\n");
      out.write("        </aside>\n");
      out.write("        <!--sidebar end-->\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("    ");
}
            rs.close();
            stmt.close();
            conn.close();
        } catch (SQLException ex) {
            out.print("Gagal Koneksi");
        } catch (Exception ex) {
            out.print(ex.getMessage());
        }
    
      out.write("\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("    <!-- **********************************************************************************************************************************************************\n");
      out.write("        MAIN CONTENT\n");
      out.write("        *********************************************************************************************************************************************************** -->\n");
      out.write("    <!--main content start-->\n");
      out.write("    <section id=\"main-content\">\n");
      out.write("      <section class=\"wrapper site-min-height\">\n");
      out.write("       <!-- <div class=\"row mt\">\n");
      out.write("          <div class=\"col-lg-12\">\n");
      out.write("            <div class=\"row content-panel\">\n");
      out.write("              <div class=\"col-md-4 profile-text mt mb centered\">\n");
      out.write("                <div class=\"right-divider hidden-sm hidden-xs\">\n");
      out.write("                 \n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("              <!-- /col-md-4 -->\n");
      out.write("              <!-- /col-md-4 -->\n");
      out.write("             <!-- <div class=\"col-md-4 centered\">\n");
      out.write("                <div class=\"profile-pic\">\n");
      out.write("                    <p><img src=\"img/user.png\" class=\"img-circle\"></p>\n");
      out.write("              </div>\n");
      out.write("              <!-- /col-md-4 -->\n");
      out.write("           <!-- </div>\n");
      out.write("            <!-- /row -->\n");
      out.write("          <!--</div>\n");
      out.write("          <!-- /col-lg-12 -->\n");
      out.write("          <div class=\"col-lg-12 mt\">\n");
      out.write("            <div class=\"row content-panel\">\n");
      out.write("              <div class=\"panel-heading\">\n");
      out.write("                <ul class=\"nav nav-tabs nav-justified\">\n");
      out.write("                  <li class=\"active\">\n");
      out.write("                    <a data-toggle=\"tab\" href=\"#edit\">Akun Setting</a>\n");
      out.write("                  </li>\n");
      out.write("                </ul>\n");
      out.write("              </div>\n");
      out.write("              <!-- /panel-heading -->\n");
      out.write("              <div class=\"panel-body\">\n");
      out.write("                <div class=\"tab-content\">\n");
      out.write("                  <div id=\"overview\" class=\"tab-pane active\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                      \n");
      out.write("                  <!-- /tab-pane -->\n");
      out.write("                  <div id=\"edit\" class=\"tab-pane\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                      <div class=\"col-lg-8 col-lg-offset-2 detailed\">\n");
      out.write("                        <h4 class=\"mb\">Informasi Pribadi</h4>\n");
      out.write("                        <form role=\"form\" class=\"form-horizontal\" action=\"edit_akun_setting.jsp\" method=\"post\">\n");
      out.write("                          <!--<div class=\"form-group\">\n");
      out.write("                            <label class=\"col-lg-2 control-label\"> Avatar</label>\n");
      out.write("                            <div class=\"col-lg-6\">\n");
      out.write("                              <input type=\"file\" id=\"exampleInputFile\" class=\"file-pos\">\n");
      out.write("                            </div>\n");
      out.write("                          </div>-->\n");
      out.write("                            ");
    
                        try {
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection conn = DriverManager.getConnection(host, "root", "");
                            String query = "select * from admin where admin_name='" + name + "'";
                            Statement stmt = conn.createStatement();
                            ResultSet rs = null;
                            rs = stmt.executeQuery(query);
                            while (rs.next()) {
                            
      out.write(" \n");
      out.write("                                 <input type=\"hidden\" value=\"");
      out.print( rs.getString("id") );
      out.write("\" name=\"id\">\n");
      out.write("                          <div class=\"form-group\">\n");
      out.write("                             <label class=\"col-lg-2 control-label\">Nama Lengkap</label>\n");
      out.write("                             <div class=\"col-lg-10\">\n");
      out.write("                                 <input type=\"text\" placeholder=\" \" id=\"c-name\" class=\"form-control\" value=\"");
      out.print( rs.getString("admin_namalengkap") );
      out.write("\" disabled>\n");
      out.write("                             </div>\n");
      out.write("                          </div>\n");
      out.write("                          <div class=\"form-group\">\n");
      out.write("                            <label class=\"col-lg-2 control-label\">Email</label>\n");
      out.write("                            <div class=\"col-lg-10\">\n");
      out.write("                                <input type=\"text\" placeholder=\" \" id=\"lives-in\" class=\"form-control\" value=\"");
      out.print( rs.getString("email") );
      out.write("\" disabled>\n");
      out.write("                            </div>\n");
      out.write("                          </div>\n");
      out.write("                          <div class=\"form-group\">\n");
      out.write("                            <label class=\"col-lg-2 control-label\">Provinsi</label>\n");
      out.write("                            <div class=\"col-lg-10\">\n");
      out.write("                                <input type=\"text\" placeholder=\" \" id=\"country\" class=\"form-control\" name=\"provinsi\" value=\"");
      out.print( rs.getString("provinsi") );
      out.write("\" >\n");
      out.write("                            </div>\n");
      out.write("                          </div>\n");
      out.write("                           <div class=\"form-group\">\n");
      out.write("                            <label class=\"col-lg-2 control-label\">Kabupaten</label>\n");
      out.write("                            <div class=\"col-lg-4\">\n");
      out.write("                                <input type=\"text\" placeholder=\" \" id=\"country\" class=\"form-control\" name=\"kabupaten\" value=\"");
      out.print( rs.getString("kabupaten") );
      out.write("\" >\n");
      out.write("                            </div>\n");
      out.write("                            <label class=\"col-lg-1 control-label\">Kecamatan</label>\n");
      out.write("                            <div class=\"col-lg-5\">\n");
      out.write("                                <input type=\"text\" placeholder=\" \" id=\"country\" class=\"form-control\" name=\"kecamatan\" value=\"");
      out.print( rs.getString("kecamatan") );
      out.write("\" >\n");
      out.write("                            </div>\n");
      out.write("                          </div>\n");
      out.write("                           <div class=\"form-group\">\n");
      out.write("                            <label class=\"col-lg-2 control-label\">No Handphone</label>\n");
      out.write("                            <div class=\"col-lg-10\">\n");
      out.write("                                <input type=\"text\" placeholder=\" \" id=\"country\" class=\"form-control\"  name=\"nohp\" value=\"");
      out.print( rs.getString("nohp") );
      out.write("\" >\n");
      out.write("                            </div>\n");
      out.write("                          </div>\n");
      out.write("                         <div class=\"form-group\">\n");
      out.write("                            <label class=\"col-lg-2 control-label\">Alamat</label>\n");
      out.write("                            <div class=\"col-lg-10\">\n");
      out.write("                                <textarea rows=\"10\" cols=\"30\" class=\"form-control\" id=\"\" name=\"alamat\">");
      out.print( rs.getString("alamat") );
      out.write("</textarea>\n");
      out.write("                            </div>\n");
      out.write("                          </div>\n");
      out.write("                           <div class=\"form-group\">\n");
      out.write("                            <div class=\"col-lg-offset-2 col-lg-10\">\n");
      out.write("                                <input class=\"btn btn-theme\" type=\"submit\">\n");
      out.write("                              <a href=\"dashboard.jsp\" class=\"btn btn-theme04\" type=\"button\">Cancel</a>\n");
      out.write("                            </div>\n");
      out.write("                          </div>\n");
      out.write("                        </form>\n");
      out.write("                      </div>\n");
      out.write("                      ");
}
                            rs.close();
                            stmt.close();
                            conn.close();
                            } catch (SQLException ex) {
                            out.print("Gagal Koneksi");
                            } catch (Exception ex) {
                            out.print(ex.getMessage());
                            }
                       
      out.write("\n");
      out.write("                      <!-- /col-lg-8 -->\n");
      out.write("                    </div>\n");
      out.write("                    <!-- /row -->\n");
      out.write("                  </div>\n");
      out.write("                  <!-- /tab-pane -->\n");
      out.write("                </div>\n");
      out.write("                <!-- /tab-content -->\n");
      out.write("              </div>\n");
      out.write("              <!-- /panel-body -->\n");
      out.write("            </div>\n");
      out.write("            <!-- /col-lg-12 -->\n");
      out.write("          </div>\n");
      out.write("          <!-- /row -->\n");
      out.write("        </div>\n");
      out.write("        <!-- /container -->\n");
      out.write("      </section>\n");
      out.write("      <!-- /wrapper -->\n");
      out.write("    </section>\n");
      out.write("    <!-- /MAIN CONTENT -->\n");
      out.write("    <!--main content end-->\n");
      out.write("    <!--footer start-->\n");
      out.write("   \n");
      out.write("  </section>\n");
      out.write("  <!-- js placed at the end of the document so the pages load faster -->\n");
      out.write("  <script src=\"lib/jquery/jquery.min.js\"></script>\n");
      out.write("  <script src=\"lib/bootstrap/js/bootstrap.min.js\"></script>\n");
      out.write("  <script class=\"include\" type=\"text/javascript\" src=\"lib/jquery.dcjqaccordion.2.7.js\"></script>\n");
      out.write("  <script src=\"lib/jquery.scrollTo.min.js\"></script>\n");
      out.write("  <script src=\"lib/jquery.nicescroll.js\" type=\"text/javascript\"></script>\n");
      out.write("  <!--common script for all pages-->\n");
      out.write("  <script src=\"lib/common-scripts.js\"></script>\n");
      out.write("  <!--script for this page-->\n");
      out.write("  <!-- MAP SCRIPT - ALL CONFIGURATION IS PLACED HERE - VIEW OUR DOCUMENTATION FOR FURTHER INFORMATION -->\n");
      out.write("  <script type=\"text/javascript\" src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyASm3CwaK9qtcZEWYa-iQwHaGi3gcosAJc&sensor=false\"></script>\n");
      out.write("  <script>\n");
      out.write("    $('.contact-map').click(function() {\n");
      out.write("\n");
      out.write("      //google map in tab click initialize\n");
      out.write("      function initialize() {\n");
      out.write("        var myLatlng = new google.maps.LatLng(40.6700, -73.9400);\n");
      out.write("        var mapOptions = {\n");
      out.write("          zoom: 11,\n");
      out.write("          scrollwheel: false,\n");
      out.write("          center: myLatlng,\n");
      out.write("          mapTypeId: google.maps.MapTypeId.ROADMAP\n");
      out.write("        }\n");
      out.write("        var map = new google.maps.Map(document.getElementById('map'), mapOptions);\n");
      out.write("        var marker = new google.maps.Marker({\n");
      out.write("          position: myLatlng,\n");
      out.write("          map: map,\n");
      out.write("          title: 'Dashio Admin Theme!'\n");
      out.write("        });\n");
      out.write("      }\n");
      out.write("      google.maps.event.addDomListener(window, 'click', initialize);\n");
      out.write("    });\n");
      out.write("\n");
      out.write("    document.getElementById(\"akun_setting\").classList.add('active');\n");
      out.write("\n");
      out.write("  </script>\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
