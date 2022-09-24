package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import ModeloDAO.ServiciosDAO;
import ModeloVO.ServiciosVO;
import java.util.ArrayList;

public final class servicios_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link href=\"https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.3/css/bootstrap.min.css\" rel=\"stylesheet\" />\n");
      out.write("        <link href=\"https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap5.min.css\" rel=\"stylesheet\" />\n");
      out.write("        <link href=\"css/admin.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link rel=\"icon\" href=\" img/logo.png\">\n");
      out.write("        <title>Servicios</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("<div class=\"container\">\n");
      out.write("        <h1>Servicios</h1>\n");
      out.write("         ");
 if (request.getAttribute("mensajeError") != null) {
      out.write("\n");
      out.write("            ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${mensajeError}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("     \n");
      out.write("            ");
 } else {
      out.write("\n");
      out.write("            ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${mensajeExito}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\n");
      out.write("            ");
}
      out.write("\n");
      out.write("       <a class=\"btn-new\" href=\"registrarServicio.jsp\">Registrar</a><br>\n");
      out.write("       \n");
      out.write("        <form method=\"post\" action=\"servicios\">\n");
      out.write("            <table id=\"example\" class=\"table table-striped\" style=\"width:100%\">\n");
      out.write("                <thead>\n");
      out.write("                <tr>\n");
      out.write("                    <th>Id</th>\n");
      out.write("                    <th>Nombre</th>\n");
      out.write("                    <th>Precio</th>\n");
      out.write("                    <th>Estado</th>\n");
      out.write("                    <th>Id_peluquero</th>\n");
      out.write("                    <th>Herramientas</th>\n");
      out.write("                   \n");
      out.write("                </tr>\n");
      out.write("                </thead>\n");
      out.write("                ");

                    ServiciosVO serviciosVO = new ServiciosVO();
                    ServiciosDAO serviciosDAO = new ServiciosDAO();
                    ArrayList<ServiciosVO> listaServicio = serviciosDAO.listar();
                    for (int i = 0; i < listaServicio.size(); i++) {

                        serviciosVO = listaServicio.get(i);


                
      out.write("\n");
      out.write("\n");
      out.write("                <tr>\n");
      out.write("                    <td>");
      out.print(serviciosVO.getId_Servicio());
      out.write("</td>                  \n");
      out.write("                    <td>");
      out.print(serviciosVO.getNombre());
      out.write(" </td>\n");
      out.write("                    <td>");
      out.print(serviciosVO.getPrecio());
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(serviciosVO.getEstado());
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(serviciosVO.getId_Peluquero());
      out.write("</td>\n");
      out.write("                    <td><a class=\"btn-update\" href=\"Servicios?opcion=3&id_Servicio=");
      out.print( serviciosVO.getId_Servicio());
      out.write("\">Editar</a>\n");
      out.write("                            <a class=\"btn-delete\" href=\"Servicios?opcion=4&id_Servicio=");
      out.print( serviciosVO.getId_Servicio());
      out.write("\">Eliminar</a></td>\n");
      out.write("                     \n");
      out.write("                </tr>\n");
      out.write("          \n");
      out.write("                \n");
      out.write("                ");
}
      out.write("\n");
      out.write("\n");
      out.write("            </table>\n");
      out.write("                 </div>\n");
      out.write("        </form>\n");
      out.write("                 <script src=\"https://code.jquery.com/jquery-3.5.1.js\"></script>\n");
      out.write("        <script src=\"https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js\"></script>\n");
      out.write("        <script src=\"https://cdn.datatables.net/1.12.1/js/dataTables.bootstrap5.min.js\"></script>\n");
      out.write("        <script>\n");
      out.write("            $(document).ready(function () {\n");
      out.write("                $('#example').DataTable({\n");
      out.write("                    language: {\n");
      out.write("                        url: '//cdn.datatables.net/plug-ins/1.12.1/i18n/es-ES.json'\n");
      out.write("                    }\n");
      out.write("                });\n");
      out.write("            });\n");
      out.write("        </script> \n");
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
