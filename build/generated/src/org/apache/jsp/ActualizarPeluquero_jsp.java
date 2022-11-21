package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import ModeloVO.PeluqueroVO;
import java.util.ArrayList;
import ModeloDAO.RolDAO;
import ModeloVO.RolVO;
import ModeloVO.UsuarioVO;

public final class actualizarPeluquero_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/navadmin.jsp");
    _jspx_dependants.add("/sesion.jsp");
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
      out.write("        <link href=\"css/estilos_forms_actu.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link rel=\"icon\" type=\"image/x-icon\" href=\"image/pata.png\">\n");
      out.write("        <title>Actualizar Peluquero</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
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
      out.write("       \n");
      out.write("    </head>\n");
      out.write("       \n");
      out.write("         ");

        response.setHeader("pragma", "No-cache");
        response.setHeader("Cache-control", "no-cache,no-store,must-revalidate");
        response.setDateHeader("Expires", 0);


    
      out.write("\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    ");
           
        HttpSession miSesion = (HttpSession) request.getSession();
        String Usuario = "";
        
        if (miSesion.getAttribute("datosUsuario") == null) {
            request.getRequestDispatcher("index.jsp").forward(request, response);
        } else {
            UsuarioVO usuVO = (UsuarioVO) miSesion.getAttribute("datosUsuario");
            Usuario = usuVO.getUsuario();
        }
    
      out.write("\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("         \n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <link href=\"css/style_dash.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css\">\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        ");
            RolVO rolVO = new RolVO();
            RolDAO rolDAO = new RolDAO();
            ArrayList<RolVO> listaRoles = rolDAO.listar(Usuario);

            for (int i = 0; i < listaRoles.size(); i++) {

                rolVO = listaRoles.get(i);

            }


        
      out.write("\n");
      out.write("\n");
      out.write("        ");
            if (rolVO.getRolTiPo().equals("Administrador")) {

        
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <div class=\"sidebar-menu\">\n");
      out.write("            <div class=\"logo-details\">\n");
      out.write("                <i class='bx bxl-c-plus-plus icon'></i>\n");
      out.write("                <div class=\"logo_name\">Bespet</div>\n");
      out.write("                <i class='bx bx-menu' id=\"btn\" ></i>\n");
      out.write("            </div>\n");
      out.write("            <dl class=\"nav-list\">\n");
      out.write("                <li>\n");
      out.write("                    <i class='bx bx-search' ></i>\n");
      out.write("                    <input type=\"text\" placeholder=\"Search...\">\n");
      out.write("                    <span class=\"tooltip\">Search</span>\n");
      out.write("                </li>\n");
      out.write("                <li>\n");
      out.write("                    <a href=\"menuAdmin.jsp\">\n");
      out.write("                        <i class='bx bx-home-heart' ></i>\n");
      out.write("                        <span class=\"links_name\">Inicio</span>\n");
      out.write("                    </a>\n");
      out.write("                    <span class=\"tooltip\">Inicio</span>\n");
      out.write("                </li>\n");
      out.write("                <li>\n");
      out.write("                    <a href=\"Usuarios.jsp\">\n");
      out.write("                        <i class='bx bx-grid-alt'></i>\n");
      out.write("                        <span class=\"links_name\">Usuarios</span>\n");
      out.write("                    </a>\n");
      out.write("                    <span class=\"tooltip\">Usuarios</span>\n");
      out.write("                </li>\n");
      out.write("                <li>\n");
      out.write("                    <a href=\"Administrador.jsp\">\n");
      out.write("                        <i class='bx bx-user' ></i>\n");
      out.write("                        <span class=\"links_name\">Administradores</span>\n");
      out.write("                    </a>\n");
      out.write("                    <span class=\"tooltip\">Administrdores</span>\n");
      out.write("                </li>\n");
      out.write("                <li>\n");
      out.write("                    <a href=\"Peluquero.jsp\">\n");
      out.write("                        <i class='bx bxs-t-shirt'></i>\n");
      out.write("                        <span class=\"links_name\">Peluqueros</span>\n");
      out.write("                    </a>\n");
      out.write("                    <span class=\"tooltip\">Peluqueros</span>\n");
      out.write("                </li>\n");
      out.write("                <li>\n");
      out.write("                    <a href=\"Cliente.jsp\">\n");
      out.write("                        <i class='bx bx-user' ></i>\n");
      out.write("                        <span class=\"links_name\">Clientes</span>\n");
      out.write("                    </a>\n");
      out.write("                    <span class=\"tooltip\">Clientes</span>\n");
      out.write("                </li>\n");
      out.write("                <li>\n");
      out.write("                    <a href=\"Mascota.jsp\">\n");
      out.write("                         <i class=\"fas fa-cat\"></i>\n");
      out.write("                        <span class=\"links_name\">Mascotas</span>\n");
      out.write("                    </a>\n");
      out.write("                    <span class=\"tooltip\">Mascotas</span>\n");
      out.write("                </li>\n");
      out.write("                <li>\n");
      out.write("                    <a href=\"servicios.jsp\">\n");
      out.write("                        <i class='bx bx-pie-chart-alt-2' ></i>\n");
      out.write("                        <span class=\"links_name\">Servicios</span>\n");
      out.write("                    </a>\n");
      out.write("                    <span class=\"tooltip\">Servicios</span>\n");
      out.write("                </li>\n");
      out.write("                <li>\n");
      out.write("                    <a href=\"asignarServicio.jsp\">\n");
      out.write("                        <i class='bx bx-folder' ></i>\n");
      out.write("                        <span class=\"links_name\">Asignar servicios</span>\n");
      out.write("                    </a>\n");
      out.write("                    <span class=\"tooltip\">Asignar servicios</span>\n");
      out.write("\n");
      out.write("                </li>\n");
      out.write("                <li>\n");
      out.write("                    <a href=\"Producto.jsp\">\n");
      out.write("                        <i class='bx bx-cart-alt' ></i>\n");
      out.write("                        <span class=\"links_name\">Productos</span>\n");
      out.write("                    </a>\n");
      out.write("                    <span class=\"tooltip\">Productos</span>\n");
      out.write("                </li>\n");
      out.write("                <li>\n");
      out.write("                    ");
      out.write("\n");
      out.write("                   \n");
      out.write("                        <li class=\"profile\">\n");
      out.write("\n");
      out.write("                            <a href=\"Sesiones\">\n");
      out.write("                                <i class='bx bx-log-out' id=\"log_out\" ></i> \n");
      out.write("                            </a>\n");
      out.write("                        </li>\n");
      out.write("                   \n");
      out.write("            </dl>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        ");
} else if (rolVO.getRolTiPo().equals("Peluquero")) {
        
      out.write("\n");
      out.write("        <div class=\"sidebar-menu\">\n");
      out.write("            <div class=\"logo-details\">\n");
      out.write("                <i class='bx bxl-c-plus-plus icon'></i>\n");
      out.write("                <div class=\"logo_name\">Bespet</div>\n");
      out.write("                <i class='bx bx-menu' id=\"btn\" ></i>\n");
      out.write("            </div>\n");
      out.write("            <dl class=\"nav-list\">\n");
      out.write("                <li>\n");
      out.write("                    <i class='bx bx-search' ></i>\n");
      out.write("                    <input type=\"text\" placeholder=\"Search...\">\n");
      out.write("                    <span class=\"tooltip\">Search</span>\n");
      out.write("                </li>\n");
      out.write("                \n");
      out.write("                 <li>\n");
      out.write("                     <a href=\"menuPelu.jsp\">\n");
      out.write("                         <i class='bx bx-home-heart' ></i>\n");
      out.write("                        <span class=\"links_name\">Inicio</span>\n");
      out.write("                    </a>\n");
      out.write("                    <span class=\"tooltip\">Inicio</span>\n");
      out.write("                </li>\n");
      out.write("                \n");
      out.write("                 <li>\n");
      out.write("                     <a href=\"tusServicios.jsp\">\n");
      out.write("                        <i class='bx bx-user' ></i>\n");
      out.write("                        <span class=\"links_name\">Tus Servicios</span>\n");
      out.write("                    </a>\n");
      out.write("                    <span class=\"tooltip\">Tus Servicios</span>\n");
      out.write("                </li>\n");
      out.write("\n");
      out.write("                <li>\n");
      out.write("                    <a href=\"Cliente.jsp\">\n");
      out.write("                        <i class='bx bx-user' ></i>\n");
      out.write("                        <span class=\"links_name\">Clientes</span>\n");
      out.write("                    </a>\n");
      out.write("                    <span class=\"tooltip\">Clientes</span>\n");
      out.write("                </li>\n");
      out.write("                <li>\n");
      out.write("                    <a href=\"Mascota.jsp\">\n");
      out.write("                         <i class=\"fas fa-cat\"></i>\n");
      out.write("                        <span class=\"links_name\">Mascotas</span>\n");
      out.write("                    </a>\n");
      out.write("                    <span class=\"tooltip\">Mascotas</span>\n");
      out.write("                </li>\n");
      out.write("                <li>\n");
      out.write("                    <a href=\"servicios.jsp\">\n");
      out.write("                        <i class='bx bx-pie-chart-alt-2' ></i>\n");
      out.write("                        <span class=\"links_name\">Servicios</span>\n");
      out.write("                    </a>\n");
      out.write("                    <span class=\"tooltip\">Servicios</span>\n");
      out.write("                </li>\n");
      out.write("\n");
      out.write("                <li>\n");
      out.write("                    <a href=\"Producto.jsp\">\n");
      out.write("                        <i class='bx bx-cart-alt' ></i>\n");
      out.write("                        <span class=\"links_name\">Productos</span>\n");
      out.write("                    </a>\n");
      out.write("                    <span class=\"tooltip\">Productos</span>\n");
      out.write("                </li>\n");
      out.write("                <li>\n");
      out.write("                    ");
      out.write("\n");
      out.write("                <li class=\"profile\">\n");
      out.write("\n");
      out.write("                    <a href=\"Sesiones\">\n");
      out.write("                        <i class='bx bx-log-out' id=\"log_out\" ></i></a>\n");
      out.write("                </li>\n");
      out.write("            </dl>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        ");
}
        
      out.write("\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/boxicons/2.0.1/dist/boxicons.js\" integrity=\"sha512-YYqDo9RDiFmWWI2HdJ+DX7TMh3DWkbAmiXR9R9vAoKXX983Yl1mTfZ3eY9BdajtaCA3lAtgNhwSwkagWV32enQ==\" crossorigin=\"anonymous\" referrerpolicy=\"no-referrer\"></script>\n");
      out.write("        <script src=\"js/script-dash.js\" type=\"text/javascript\"></script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("        <section class=\"home-section\"> \n");
      out.write("         \n");
      out.write("                <h1>actualizar Peluquero</h1>\n");
      out.write("                  <div class=\"form-data\">\n");
      out.write("                         <center>\n");
      out.write("                \n");
      out.write("                ");
            PeluqueroVO peluVO = (PeluqueroVO) request.getAttribute("datosConsultados");
                    if (peluVO != null) {
                
      out.write("\n");
      out.write("                <form method=\"post\" action=\"Peluquero\">\n");
      out.write("                    <table>\n");
      out.write("                        <tr>\n");
      out.write("                        <style>\n");
      out.write("                            .aa{\n");
      out.write("                                border-radius: 10px; \n");
      out.write("                            }\n");
      out.write("                        </style>\n");
      out.write("                        ID:<br>\n");
      out.write("                        <input class=\"aa\" type=\"text\" name=\"id_Peluquero\" value=\"");
      out.print(peluVO.getId_Peluquero());
      out.write("\" readonly><br>\n");
      out.write("                        Nombre:<br>\n");
      out.write("                        <input class=\"aa\" type=\"text\" name=\"Nombre\" value=\"");
      out.print(peluVO.getNombre());
      out.write("\" readonly><br>\n");
      out.write("                        Apellido:<br>\n");
      out.write("                        <input class=\"aa\" type=\"text\" name=\"apellido\" value=\"");
      out.print(peluVO.getApellido());
      out.write("\" readonly><br>\n");
      out.write("                        Telefono:<br>\n");
      out.write("                        <input class=\"aa\" type=\"text\" name=\"Telefono\" value=\"");
      out.print(peluVO.getTelefono());
      out.write("\"><br>\n");
      out.write("                        Direccion:<br>\n");
      out.write("                        <input class=\"aa\" type=\"text\" name=\"Direccion\" value=\"");
      out.print(peluVO.getDireccion());
      out.write("\" ><br>\n");
      out.write("                        Correo:<br>\n");
      out.write("                        <input class=\"aa\" type=\"text\" name=\"Correo\" value=\"");
      out.print(peluVO.getCorreo());
      out.write("\"><br>\n");
      out.write("\n");
      out.write("                        Usuario:<br>\n");
      out.write("                        <input class=\"aa\" type=\"text\" name=\"Usuario\" value=\"");
      out.print(peluVO.getId_Usuario());
      out.write("\" readonly><br>\n");
      out.write("\n");
      out.write("                    </table><br>\n");
      out.write("                    <button class=\"btn btn-secondary\">Actualizar</button>\n");
      out.write("                    <input type=\"hidden\" value=\"2\" name=\"opcion\">\n");
      out.write("                </form><br>\n");
      out.write("                <a href=\"Peluquero.jsp\">regresar</a>\n");
      out.write("                ");
}
      out.write("\n");
      out.write("                ");
 if (request.getAttribute("mensajeError") != null) {
      out.write("\n");
      out.write("                ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${mensajeError}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("     \n");
      out.write("                ");
 } else {
      out.write("\n");
      out.write("                ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${mensajeExito}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\n");
      out.write("                ");
}
      out.write("\n");
      out.write("            </center>\n");
      out.write("                  </div>\n");
      out.write("        </section>\n");
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
