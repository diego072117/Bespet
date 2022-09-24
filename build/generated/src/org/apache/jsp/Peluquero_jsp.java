package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.ArrayList;
import ModeloDAO.PeluqueroDAO;
import ModeloVO.PeluqueroVO;

public final class Peluquero_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <link href=\"css/admin.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.3/css/bootstrap.min.css\" rel=\"stylesheet\" />\n");
      out.write("        <link href=\"https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap5.min.css\" rel=\"stylesheet\" />\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <h1>Peluqueros</h1><br>\n");
      out.write("\n");
      out.write("\n");
      out.write("            ");
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
      out.write("\n");
      out.write("            <a class=\"btn-new\" href=\"RegistrarPeluquero.jsp\">Registrar</a><br>\n");
      out.write("\n");
      out.write("\n");
      out.write("            <form method=\"post\" action=\"peluquero\">\n");
      out.write("                <table id=\"example\" class=\"table table-striped\">\n");
      out.write("                    <thead>\n");
      out.write("                        <tr>\n");
      out.write("                            <th>Id</th>\n");
      out.write("                            <th>Nombre</th>\n");
      out.write("                            <th>Apellido</th>\n");
      out.write("                            <th>Telefono</th>\n");
      out.write("                            <th>Direccion</th>\n");
      out.write("                            <th>Correo</th>\n");
      out.write("                            <th>Estado</th>\n");
      out.write("                            <th>Usuario</th>\n");
      out.write("                            <th>herramientas</th>\n");
      out.write("                        </tr>\n");
      out.write("                    </thead>\n");
      out.write("                    ");

                        PeluqueroVO peluVO = new PeluqueroVO();
                        PeluqueroDAO peluDAO = new PeluqueroDAO();
                        ArrayList<PeluqueroVO> listaPelu = peluDAO.listar();
                        for (int i = 0; i < listaPelu.size(); i++) {
                            peluVO = listaPelu.get(i);
                    
      out.write("\n");
      out.write("\n");
      out.write("                    <tr>\n");
      out.write("                    <form method=\"post\" action=\"Peluquero\" style=\"\">\n");
      out.write("                        <td>");
      out.print(peluVO.getId_Peluquero());
      out.write("</td>\n");
      out.write("                        <td>");
      out.print(peluVO.getNombre());
      out.write("</td>\n");
      out.write("                        <td>");
      out.print(peluVO.getApellido());
      out.write("</td>\n");
      out.write("                        <td>");
      out.print(peluVO.getTelefono());
      out.write("</td>\n");
      out.write("                        <td>");
      out.print(peluVO.getDireccion());
      out.write("</td>\n");
      out.write("                        <td>");
      out.print(peluVO.getCorreo());
      out.write("</td>\n");
      out.write("                        <td>");
      out.print(peluVO.getEstado());
      out.write("</td>\n");
      out.write("                        <td>");
      out.print(peluVO.getId_Usuario());
      out.write("</td>\n");
      out.write("                        <td><a class=\"btn-update\" href=\"Peluquero?opcion=3&id_Peluquero=");
      out.print( peluVO.getId_Peluquero());
      out.write("\">Editar</a>\n");
      out.write("                            <a class=\"btn-delete\" href=\"Peluquero?opcion=4&id_Peluquero=");
      out.print( peluVO.getId_Peluquero());
      out.write("\">Eliminar</a></td>\n");
      out.write("                    </form>\n");
      out.write("                    </tr>\n");
      out.write("                    ");
}
      out.write("\n");
      out.write("                </table>\n");
      out.write("            </form>\n");
      out.write("        </div>\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.5.1.js\"></script>\n");
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
      out.write("        </script>\n");
      out.write("    </body>\n");
      out.write("</html>");
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
