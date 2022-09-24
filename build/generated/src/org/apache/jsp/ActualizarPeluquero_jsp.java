package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import ModeloVO.PeluqueroVO;

public final class ActualizarPeluquero_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>                \n");
      out.write("         <center>\n");
      out.write("        <h1>actualizar Peluquero</h1>\n");
      out.write("        ");
            PeluqueroVO peluVO = (PeluqueroVO) request.getAttribute("datosConsultados");
            if (peluVO != null) {
        
      out.write("\n");
      out.write("        <form method=\"post\" action=\"Peluquero\">\n");
      out.write("            <table>\n");
      out.write("                <tr>\n");
      out.write("                <style>\n");
      out.write("                    .aa{\n");
      out.write("                        border-radius: 10px; \n");
      out.write("                    }\n");
      out.write("                </style>\n");
      out.write("                ID:<br>\n");
      out.write("                <input class=\"aa\" type=\"text\" name=\"id_Peluquero\" value=\"");
      out.print(peluVO.getId_Peluquero());
      out.write("\"><br>\n");
      out.write("                Nombre:<br>\n");
      out.write("                <input class=\"aa\" type=\"text\" name=\"Nombre\" value=\"");
      out.print(peluVO.getNombre());
      out.write("\"><br>\n");
      out.write("                Apellido:<br>\n");
      out.write("                <input class=\"aa\" type=\"text\" name=\"apellido\" value=\"");
      out.print(peluVO.getApellido());
      out.write("\"><br>\n");
      out.write("                Telefono:<br>\n");
      out.write("                <input class=\"aa\" type=\"text\" name=\"Telefono\" value=\"");
      out.print(peluVO.getTelefono());
      out.write("\"><br>\n");
      out.write("                Direccion:<br>\n");
      out.write("                <input class=\"aa\" type=\"text\" name=\"Direccion\" value=\"");
      out.print(peluVO.getDireccion());
      out.write("\"><br>\n");
      out.write("                Correo:<br>\n");
      out.write("                <input class=\"aa\" type=\"text\" name=\"Correo\" value=\"");
      out.print(peluVO.getCorreo());
      out.write("\"><br>\n");
      out.write("                Usuario:<br>\n");
      out.write("                <input class=\"aa\" type=\"text\" name=\"Usuario\" value=\"");
      out.print(peluVO.getId_Usuario());
      out.write("\"><br>\n");
      out.write("            </table><br>\n");
      out.write("            <button class=\"btn btn-secondary\">Actualizar</button>\n");
      out.write("            <input type=\"hidden\" value=\"2\" name=\"opcion\">\n");
      out.write("        </form><br>\n");
      out.write("        ");
}
      out.write("\n");
      out.write("        ");
 if (request.getAttribute("mensajeError") != null) {
      out.write("\n");
      out.write("        ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${mensajeError}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("     \n");
      out.write("        ");
 } else {
      out.write("\n");
      out.write("        ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${mensajeExito}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\n");
      out.write("        ");
}
      out.write("\n");
      out.write("    </center>\n");
      out.write("    </body>");
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
