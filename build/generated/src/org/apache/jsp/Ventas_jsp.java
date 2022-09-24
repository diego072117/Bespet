package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Ventas_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"container mt-4\">\n");
      out.write("    <div class=\"row\">\n");
      out.write("        <div class=\"col-lg-5 parte01\">\n");
      out.write("            <div class=\"card\">\n");
      out.write("                <form action=\"Controlador?menu=NuevaVenta\" method=\"POST\">\n");
      out.write("                    <div class=\"card-body\">\n");
      out.write("                        <!--DATOS DEL PRODUCTO-->\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label>Datos del Cliente</label>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group d-flex\">\n");
      out.write("                            <div class=\"col-sm-6 d-flex\">\n");
      out.write("                                <input type=\"text\" name=\"codigocliente\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${c.getDni()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" class=\"form-control\" placeholder=\"Codigo\">\n");
      out.write("                                <button type=\"submit\" name=\"accion\" value=\"BuscarCliente\" class=\"btn btn-outline-info\">Buscar</button>\n");
      out.write("                            </div>                           \n");
      out.write("                            <div class=\"col-sm-6\">\n");
      out.write("                                <input type=\"text\" name=\"nombrescliente\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${c.getNom()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" placeholder=\"Datos Cliente\" class=\"form-control\">\n");
      out.write("                            </div>                           \n");
      out.write("                        </div>\n");
      out.write("                        <!--DATOS DEL PRODUCTO-->\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label>Datos Producto</label>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group d-flex\">\n");
      out.write("                            <div class=\"col-sm-6 d-flex\">\n");
      out.write("                                <input type=\"text\" name=\"codigoproducto\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${producto.getId()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" class=\"form-control\" placeholder=\"Codigo\">\n");
      out.write("                                <button type=\"submit\" name=\"accion\" value=\"BuscarProducto\" class=\"btn btn-outline-info\">Buscar</button>\n");
      out.write("                            </div>                           \n");
      out.write("                            <div class=\"col-sm-6\">\n");
      out.write("                                <input type=\"text\" name=\"nomproducto\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${producto.getNom()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" placeholder=\"Datos Producto\" class=\"form-control\">\n");
      out.write("                            </div>  \n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group d-flex\">\n");
      out.write("                            <div class=\"col-sm-6 d-flex\">\n");
      out.write("                                <input type=\"text\" name=\"precio\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${producto.getPre()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" class=\"form-control\" placeholder=\"S/.0.00\">                                \n");
      out.write("                            </div>                           \n");
      out.write("                            <div class=\"col-sm-3\">\n");
      out.write("                                <input type=\"number\" value=\"1\" name=\"cant\" placeholder=\"\" class=\"form-control\">\n");
      out.write("                            </div>  \n");
      out.write("                            <div class=\"col-sm-3\">\n");
      out.write("                                <input type=\"text\" name=\"stock\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${producto.getStock()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" placeholder=\"Stock\" class=\"form-control\">\n");
      out.write("                            </div>  \n");
      out.write("                        </div>\n");
      out.write("                        <!--BOTON AGREGAR PRODUCTO AL REGISTRO-->\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <div class=\"col-sm\">\n");
      out.write("                                <button type=\"submit\" name=\"accion\" value=\"Agregar\" class=\"btn btn-outline-primary\">Agregar Producto</button>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
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
