package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import ModeloDAO.RolDAO;
import ModeloVO.RolVO;

public final class navadmin_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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
      response.setContentType("text/html;charset=UTF-8");
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <link href=\"css/style_dash.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("            <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write(" \n");
      out.write("        \n");
      out.write("        \n");
      out.write("         <div class=\"sidebar-menu\">\n");
      out.write("    <div class=\"logo-details\">\n");
      out.write("      <i class='bx bxl-c-plus-plus icon'></i>\n");
      out.write("        <div class=\"logo_name\">Bespet</div>\n");
      out.write("        <i class='bx bx-menu' id=\"btn\" ></i>\n");
      out.write("    </div>\n");
      out.write("    <ul class=\"nav-list\">\n");
      out.write("      <li>\n");
      out.write("          <i class='bx bx-search' ></i>\n");
      out.write("         <input type=\"text\" placeholder=\"Search...\">\n");
      out.write("         <span class=\"tooltip\">Search</span>\n");
      out.write("      </li>\n");
      out.write("      <li>\n");
      out.write("        <a href=\"Usuarios.jsp\">\n");
      out.write("          <i class='bx bx-grid-alt'></i>\n");
      out.write("          <span class=\"links_name\">Usuarios</span>\n");
      out.write("        </a>\n");
      out.write("         <span class=\"tooltip\">Usuarios</span>\n");
      out.write("      </li>\n");
      out.write("      <li>\n");
      out.write("       <a href=\"Administrador.jsp\">\n");
      out.write("         <i class='bx bx-user' ></i>\n");
      out.write("         <span class=\"links_name\">Administradores</span>\n");
      out.write("       </a>\n");
      out.write("       <span class=\"tooltip\">Administrdores</span>\n");
      out.write("     </li>\n");
      out.write("     <li>\n");
      out.write("       <a href=\"Peluquero.jsp\">\n");
      out.write("         <i class='bx bx-chat' ></i>\n");
      out.write("         <span class=\"links_name\">Peluqueros</span>\n");
      out.write("       </a>\n");
      out.write("       <span class=\"tooltip\">Peluqueros</span>\n");
      out.write("     </li>\n");
      out.write("     <li>\n");
      out.write("       <a href=\"Cliente.jsp\">\n");
      out.write("         <i class='bx bx-user' ></i>\n");
      out.write("         <span class=\"links_name\">Clientes</span>\n");
      out.write("       </a>\n");
      out.write("       <span class=\"tooltip\">Clientes</span>\n");
      out.write("     </li>\n");
      out.write("      <li>\n");
      out.write("       <a href=\"Mascota.jsp\">\n");
      out.write("         <i class='bx bx-user' ></i>\n");
      out.write("         <span class=\"links_name\">Mascotas</span>\n");
      out.write("       </a>\n");
      out.write("       <span class=\"tooltip\">Mascotas</span>\n");
      out.write("     </li>\n");
      out.write("     <li>\n");
      out.write("       <a href=\"servicios.jsp\">\n");
      out.write("         <i class='bx bx-pie-chart-alt-2' ></i>\n");
      out.write("         <span class=\"links_name\">Servicios</span>\n");
      out.write("       </a>\n");
      out.write("       <span class=\"tooltip\">Servicios</span>\n");
      out.write("     </li>\n");
      out.write("     <li>\n");
      out.write("       <a href=\"asignarServicio.jsp\">\n");
      out.write("         <i class='bx bx-folder' ></i>\n");
      out.write("         <span class=\"links_name\">Asignar servicios</span>\n");
      out.write("       </a>\n");
      out.write("       <span class=\"tooltip\">Asignar servicios</span>\n");
      out.write("\n");
      out.write("     </li>\n");
      out.write("     <li>\n");
      out.write("       <a href=\"Producto.jsp\">\n");
      out.write("         <i class='bx bx-cart-alt' ></i>\n");
      out.write("         <span class=\"links_name\">Productos</span>\n");
      out.write("       </a>\n");
      out.write("       <span class=\"tooltip\">Productos</span>\n");
      out.write("     </li>\n");
      out.write("     <li>\n");
      out.write("      ");
      out.write("\n");
      out.write("     <li class=\"profile\">\n");
      out.write("         \n");
      out.write("         <a href=\"index.html\">\n");
      out.write("         <i class='bx bx-log-out' id=\"log_out\" ></i></a>\n");
      out.write("     </li>\n");
      out.write("    </ul>\n");
      out.write("  </div>\n");
      out.write("     \n");
      out.write("      <section class=\"home-section\">\n");
      out.write("      <div class=\"text\">Bienvenido</div>\n");
      out.write("  </section>\n");
      out.write("\n");
      out.write("  \n");
      out.write("     <script src=\"js/script-dash.js\" type=\"text/javascript\"></script>\n");
      out.write("    </body>\n");
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
