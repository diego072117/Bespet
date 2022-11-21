package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class recuperaContraseñaTwo_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css\">\n");
      out.write("        <link href=\"css/main.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"css/util.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"limiter\">\n");
      out.write("            <div class=\"container-login100\">\n");
      out.write("                <div class=\"wrap-login100\">\n");
      out.write("                    <div class=\"login100-pic js-tilt\" data-tilt>\n");
      out.write("                        <img src=\"image/poyo.svg\" alt=\"IMG\">\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <form class=\"login100-form validate-form\" method=\"post\" action=\"Usuario\">\n");
      out.write("                        <div class=\"header\">\n");
      out.write("                            <img src=\"image/p.png\" alt=\"icon\">\n");
      out.write("                            <span class=\"login100-form-title\">\n");
      out.write("                                Registrarse Bespet\n");
      out.write("                            </span>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                     \n");
      out.write("                            <div class=\"wrap-input100 validate-input\" >\n");
      out.write("                                <input class=\"input100\" type=\"text\" name=\"Correo\" placeholder=\"Correo electronico\">\n");
      out.write("                                <span class=\"focus-input100\"></span>\n");
      out.write("                                <span class=\"symbol-input100\">\n");
      out.write("                                    <i class=\"fa fa-envelope\" aria-hidden=\"true\"></i>\n");
      out.write("                                </span>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                            <div class=\"wrap-input100 validate-input\" data-validate=\"Password is required\">\n");
      out.write("                                <input class=\"input100\" type=\"password\" name=\"textClave\" placeholder=\"**********\">\n");
      out.write("                                <span class=\"focus-input100\"></span>\n");
      out.write("                                <span class=\"symbol-input100\">\n");
      out.write("                                    <i class=\"fa fa-lock\" aria-hidden=\"true\"></i>\n");
      out.write("                                </span>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                            <div class=\"container-login100-form-btn\">\n");
      out.write("                                <button class=\"login100-form-btn\" type=\"submit\">Registrarse</button>\n");
      out.write("                                <input type=\"hidden\" value=\"8\" name=\"opcion\">\n");
      out.write("                            </div>\n");
      out.write("                       \n");
      out.write("                        <div class=\"text-center p-t-136\">\n");
      out.write("                            <a class=\"txt2\" href=\"index.jsp\">\n");
      out.write("                                Iniciar Sesion\n");
      out.write("                                <i class=\"fa fa-long-arrow-right m-l-5\" aria-hidden=\"true\"></i>\n");
      out.write("                            </a>\n");
      out.write("                        </div>\n");
      out.write("                        \n");
      out.write("\n");
      out.write("\n");
      out.write(" ");
            if (request.getAttribute("mensajeError") != null) { 
      out.write("\n");
      out.write("                    ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${mensajeError}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\n");
      out.write("\n");
      out.write("                    ");
} else {
      out.write("\n");
      out.write("                    ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${mensajeExito}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\n");
      out.write("                    ");
}
      out.write("\n");
      out.write("                        \n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("         \n");
      out.write("\n");
      out.write("\n");
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
