package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class formulario_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html lang=\"es\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("   <meta charset=\"UTF-8\">\n");
      out.write("   <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("   <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("   <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css\"\n");
      out.write("      integrity=\"sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==\"\n");
      out.write("      crossorigin=\"anonymous\" referrerpolicy=\"no-referrer\" />\n");
      out.write("   <link rel=\"icon\" type=\"image/x-icon\" href=\"images/logo-removebg-preview.png\" />\n");
      out.write("   <title>Formulario</title>\n");
      out.write("\n");
      out.write("\n");
      out.write("   <link rel=\"stylesheet\" href=\"https://unpkg.com/swiper@7/swiper-bundle.min.css\" />\n");
      out.write("\n");
      out.write("\n");
      out.write("   <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css\">\n");
      out.write("\n");
      out.write("   <link href=\"css/formulario.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("   <link rel=\"stylesheet\" href=\"css/formulario.css\">\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("   <section class=\"services\">\n");
      out.write("\n");
      out.write("      <h1 class=\"heading-title\"> formulario </h1>\n");
      out.write("\n");
      out.write("   </section>\n");
      out.write("\n");
      out.write("   <div class=\"container-ejercicios\">\n");
      out.write("\n");
      out.write("      <div class=\"form-data\" >\n");
      out.write("         <form action=\"#\" class=\"formulario\" id=\"formulario\">\n");
      out.write("\n");
      out.write("            <div class=\"formulario__grupo\" id=\"grupo__tipodoc\">\n");
      out.write("               <label for=\"\">tipo documento</label>\n");
      out.write("               <div class=\"box-input\">\n");
      out.write(" \n");
      out.write("                  <select class=\"formulario__input\" >\n");
      out.write("                     <option >Tipo de documento</option>\n");
      out.write("                     <option id=\"tipoDoc\" name=\"tipoDoc\" value=\"1\">Cedula De Ciudadania</option>\n");
      out.write("                     <option id=\"tipoDoc\" name=\"tipoDoc\" value=\"2\">Tarjeta De Identidad</option>\n");
      out.write("                     <option id=\"tipoDoc\" name=\"tipoDoc\" value=\"3\">Cedula De Extranjeria</option>\n");
      out.write("                 </select>\n");
      out.write("                  <i class=\"formulario__validacion-estado fas fa-times-circle\"></i>\n");
      out.write("               </div>\n");
      out.write("               <p class=\"formulario__input-error\">Error</p>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"formulario__grupo\" id=\"grupo__numDoc\">\n");
      out.write("               <label for=\"\">Numero de documento</label>\n");
      out.write("               <div class=\"box-input\" id=\"grupo__numDoc\">\n");
      out.write("                  <input type=\"text\" class=\"formulario__input\" name=\"numDoc\" id=\"numDoc\" placeholder=\"No. documento\">\n");
      out.write("                  <i class=\"formulario__validacion-estado fas fa-times-circle\"></i>\n");
      out.write("               </div>\n");
      out.write("               <p class=\"formulario__input-error\">Campo numerico, minimo 5 caracteres maximo 10</p>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"formulario__grupo\" id=\"grupo__nombre\">\n");
      out.write("               <label for=\"\">Nombre</label>\n");
      out.write("               <div class=\"box-input\">\n");
      out.write("                  <input type=\"text\" class=\"formulario__input\" name=\"nombre\" id=\"nombre\" placeholder=\"Nombre\">\n");
      out.write("                  <i class=\"formulario__validacion-estado fas fa-times-circle\"></i>\n");
      out.write("               </div>\n");
      out.write("               <p class=\"formulario__input-error\">dijite un nombre valido</p>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"formulario__grupo\" id=\"grupo__apellido\">\n");
      out.write("               <label for=\"\">Apellido</label>\n");
      out.write("               <div class=\"box-input\">\n");
      out.write("\n");
      out.write("                  <input type=\"text\" class=\"formulario__input\" name=\"apellido\" id=\"apellido\" placeholder=\"Apellido\">\n");
      out.write("                  <i class=\"formulario__validacion-estado fas fa-times-circle\"></i>\n");
      out.write("               </div>\n");
      out.write("               <p class=\"formulario__input-error\">Dijite un apellido valido</p>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            <div class=\"formulario__grupo\" id=\"grupo__fecha\">\n");
      out.write("               <label for=\"fecha\">Fecha de nacimiento</label>\n");
      out.write("               <div class=\"box-input1\">\n");
      out.write("\n");
      out.write("                  <input type=\"date\" class=\"formulario__input\" name=\"fecha\" id=\"fecha\" >\n");
      out.write("                  <i class=\"formulario__validacion-estado fas fa-times-circle\"></i>\n");
      out.write("               </div>\n");
      out.write("               <p class=\"formulario__input-error\">dijite una fecha valida</p>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            \n");
      out.write("\n");
      out.write("            <div class=\"formulario__grupo\" id=\"grupo__correo\">\n");
      out.write("               <label for=\"\">Correo</label>\n");
      out.write("               <div class=\"box-input\">\n");
      out.write("\n");
      out.write("                  \n");
      out.write("                  <input type=\"text\" class=\"formulario__input\" name=\"correo\" id=\"correo\"  placeholder=\"Correo electronico\">\n");
      out.write("                  <i class=\"formulario__validacion-estado fas fa-times-circle\"></i>\n");
      out.write("               </div>\n");
      out.write("               <p class=\"formulario__input-error\">Dijite un correo valido</p>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"formulario__grupo\"  id=\"grupo__password\">\n");
      out.write("               <label for=\"\">Password</label>\n");
      out.write("               <div class=\"box-input\">\n");
      out.write("\n");
      out.write("                  <input type=\"password\" class=\"formulario__input\" name=\"password\" id=\"password\" placeholder=\"Password\">\n");
      out.write("                  <i class=\"formulario__validacion-estado fas fa-times-circle\"></i>\n");
      out.write("               </div>\n");
      out.write("               <p class=\"formulario__input-error\">Dijite una contraseña valida</p>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"formulario__grupo\" id=\"grupo__password2\"\">\n");
      out.write("               <label for=\"\">Confirmar password</label>\n");
      out.write("               <div class=\"box-input\">\n");
      out.write("\n");
      out.write("                  <input type=\"password\" class=\"formulario__input\" name=\"password2\" id=\"password2\" placeholder=\"Comprobar password\">\n");
      out.write("                  <i class=\"formulario__validacion-estado fas fa-times-circle\"></i>\n");
      out.write("               </div>\n");
      out.write("               <p class=\"formulario__input-error\">Password no coinciden</p>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("            <div class=\"formulario__grupo\" id=\"grupo__terminos\">\n");
      out.write("               <label class=\"formulario__label\">\n");
      out.write("                  <input class=\"formulario__checkbox\" type=\"checkbox\" name=\"terminos\" id=\"terminos\">\n");
      out.write("                  Acepto los Terminos y Condiciones\n");
      out.write("               </label>\n");
      out.write("            </div>\n");
      out.write("          \n");
      out.write("\n");
      out.write("            <div class=\"formulario__mensaje\" id=\"formulario__mensaje\">\n");
      out.write("               <p ><i class=\"fas fa-exclamation-triangle\"></i> <b>Error:</b> Por favor rellena el formulario correctamente. </p>\n");
      out.write("            </div>\n");
      out.write("   \n");
      out.write("            <div class=\"formulario__grupo formulario__grupo-btn-enviar\">\n");
      out.write("               <button type=\"submit\" class=\"formulario__btn\">Enviar</button>\n");
      out.write("               <p class=\"formulario__mensaje-exito\" id=\"formulario__mensaje-exito\">Formulario enviado exitosamente!</p>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("      \n");
      out.write("\n");
      out.write("         </form>\n");
      out.write("\n");
      out.write("\n");
      out.write("      </div>\n");
      out.write("\n");
      out.write("   </div>\n");
      out.write("\n");
      out.write("   <div id=\"ventanaModal-form\" class=\"modal\">\n");
      out.write("      <div class=\"contenidoModal\">\n");
      out.write("\n");
      out.write("         <span class=\"cerrarModal-form\"><i class=\"fa-solid fa-xmark\"></i></span>\n");
      out.write("         <h2>¿Acepta Terminos y conciciones?</h2>\n");
      out.write("         <p>\n");
      out.write("            Lorem ipsum dolor sit amet consectetur adipisicing elit. Sint ad provident quis nemo dolore voluptatem quae\n");
      out.write("            tenetur non beatae tempora necessitatibus, vitae eligendi quod aperiam quam dolores libero! Non, neque.\n");
      out.write("         </p>\n");
      out.write("\n");
      out.write("      </div>\n");
      out.write("\n");
      out.write("   </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("   <script src=\"https://unpkg.com/swiper@7/swiper-bundle.min.js\"></script>\n");
      out.write("   <script src=\"js/formulario.js\" type=\"text/javascript\"></script>\n");
      out.write("   <script src=\"/js/formulario.js\"></script>\n");
      out.write("\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("\n");
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
