package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import ModeloDAO.MascotaDAO;
import ModeloVO.MascotaVO;
import java.util.ArrayList;
import java.util.ArrayList;
import ModeloDAO.RolDAO;
import ModeloVO.RolVO;
import ModeloVO.UsuarioVO;

public final class Mascota_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"icon\" type=\"image/x-icon\" href=\"image/pata.png\">\n");
      out.write("        <link href=\"https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.3/css/bootstrap.min.css\" rel=\"stylesheet\" />\n");
      out.write("        <link href=\"https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap5.min.css\" rel=\"stylesheet\" />\n");
      out.write("        <link href=\"css/tables.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link rel=\"icon\" href=\" img/logo.png\"> \n");
      out.write("        <title>Mascotas</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
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
      out.write("        <title>JSP Page</title>\n");
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
      out.write("                        <i class='bx bx-grid-alt'></i>\n");
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
      out.write("                        <i class='bx bx-chat' ></i>\n");
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
      out.write("                        <i class='bx bx-user' ></i>\n");
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
      out.write("                        <i class='bx bx-user' ></i>\n");
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
      out.write("                        <i class='bx bx-user' ></i>\n");
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
      out.write("\n");
      out.write("        <script src=\"js/script-dash.js\" type=\"text/javascript\"></script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("        <section class=\"home-section\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <h1>Mascotas</h1>\n");
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
      out.write("                <a class=\"btn-new\" href=\"registrarMascota.jsp\" >Registrar</a><br>\n");
      out.write("\n");
      out.write("                <form method=\"post\" action=\"mascota\">\n");
      out.write("                    <table id=\"example\" class=\"table table-striped\" style=\"width:100%\">\n");
      out.write("                        <thead>\n");
      out.write("                            <tr>\n");
      out.write("                                <th>Id</th>\n");
      out.write("                                <th>Nombre</th>\n");
      out.write("                                <th>Edad</th>\n");
      out.write("                                <th>Tipo</th>\n");
      out.write("                                <th>Raza</th>\n");
      out.write("                                <th>Estado</th>\n");
      out.write("                                <th>Dueño</th>\n");
      out.write("                                <th>Acciones</th>\n");
      out.write("\n");
      out.write("                            </tr>\n");
      out.write("                        </thead>\n");
      out.write("                        ");

                            MascotaVO mascotaVO = new MascotaVO();
                            MascotaDAO mascotaDAO = new MascotaDAO();
                            ArrayList<MascotaVO> listaMascota = mascotaDAO.listar();
                            for (int i = 0; i < listaMascota.size(); i++) {

                                mascotaVO = listaMascota.get(i);


                        
      out.write("\n");
      out.write("\n");
      out.write("                        <tr>\n");
      out.write("                            <td>");
      out.print(mascotaVO.getId_Mascota());
      out.write("</td>                  \n");
      out.write("                            <td>");
      out.print(mascotaVO.getNombre());
      out.write("</td>\n");
      out.write("                            <td>");
      out.print(mascotaVO.getEdad());
      out.write("</td>\n");
      out.write("                            <td>");
      out.print(mascotaVO.getTipo());
      out.write("</td>\n");
      out.write("                            <td>");
      out.print(mascotaVO.getRaza());
      out.write("</td>\n");
      out.write("                            <td>");
      out.print(mascotaVO.getEstado());
      out.write("</td>\n");
      out.write("                            <td>");
      out.print(mascotaVO.getId_cliente());
      out.write("</td>\n");
      out.write("                            <td><a class=\"btn-update\" href=\"Mascota?opcion=3&id_Mascota=");
      out.print( mascotaVO.getId_Mascota());
      out.write("\">Editar</a>\n");
      out.write("                                <a class=\"btn-delete\" href=\"Mascota?opcion=4&id_Mascota=");
      out.print( mascotaVO.getId_Mascota());
      out.write("\">Eliminar</a></td>\n");
      out.write("\n");
      out.write("                        </tr>\n");
      out.write("\n");
      out.write("\n");
      out.write("                        ");
}
      out.write("\n");
      out.write("\n");
      out.write("                    </table>\n");
      out.write("            </div>\n");
      out.write("                        \n");
      out.write("                        <br>\n");
      out.write("            <form method=\"post\" action=\"GenerarPDFMascotas.jsp\" target=\"_black\">\n");
      out.write("                <input type=\"submit\" value=\"Generar pdf\">\n");
      out.write("            </form>\n");
      out.write("                        \n");
      out.write("        </form>\n");
      out.write("\n");
      out.write("    </section>\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.5.1.js\"></script>\n");
      out.write("    <script src=\"https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js\"></script>\n");
      out.write("    <script src=\"https://cdn.datatables.net/1.12.1/js/dataTables.bootstrap5.min.js\"></script>\n");
      out.write("    <script>\n");
      out.write("        $(document).ready(function () {\n");
      out.write("            $('#example').DataTable({\n");
      out.write("                language: {\n");
      out.write("                    url: '//cdn.datatables.net/plug-ins/1.12.1/i18n/es-ES.json'\n");
      out.write("                }\n");
      out.write("            });\n");
      out.write("        });\n");
      out.write("    </script>\n");
      out.write("</body>\n");
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
