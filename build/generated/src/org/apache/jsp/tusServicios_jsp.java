package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import ModeloDAO.ServiciosDAO;
import ModeloVO.ServiciosVO;
import ModeloDAO.asignarServicioDAO;
import ModeloVO.asignarServicioVO;
import ModeloDAO.MascotaDAO;
import ModeloVO.MascotaVO;
import ModeloDAO.PeluqueroDAO;
import ModeloVO.PeluqueroVO;
import java.util.ArrayList;
import ModeloVO.RolVO;
import ModeloDAO.RolDAO;
import java.util.ArrayList;
import ModeloDAO.RolDAO;
import ModeloVO.RolVO;
import ModeloVO.UsuarioVO;

public final class tusServicios_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("        <!--=============== Remixicons ===============-->\n");
      out.write("        <link href=\"https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css\" rel=\"stylesheet\" />\n");
      out.write("\n");
      out.write("        <!--=============== Swiper Css ===============-->\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css\" />\n");
      out.write("\n");
      out.write("        <!--=============== Css ===============-->\n");
      out.write("        <link href=\"css/tus_servicios.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"css/skins/color-1.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("      \n");
      out.write("\n");
      out.write("       \n");
      out.write("        <title>Tus Servicios</title>\n");
      out.write("    </head>\n");
      out.write("\n");
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
      out.write("        \n");
      out.write("        ");
            
            String id_usua = rolVO.getId_Rol();

            PeluqueroVO peluVO = new PeluqueroVO();

            PeluqueroDAO peluDAO = new PeluqueroDAO(peluVO);

            peluVO = peluDAO.consultarUsuPelu(id_usua);

            String id_pelu = peluVO.getId_Peluquero();

            MascotaVO masVO = new MascotaVO();
            
            


        
      out.write("\n");
      out.write("\n");
      out.write("        <section class=\"home-section\">\n");
      out.write("        <input type=\"text\" value=\"");
      out.print( id_pelu);
      out.write("\"><br>\n");
      out.write("\n");
      out.write("        <!--=============== Main ===============-->\n");
      out.write("        <main class=\"main\">\n");
      out.write("\n");
      out.write("            <!--=============== Blog ===============-->\n");
      out.write("             <section class=\"blog section container\" id=\"blog\">\n");
      out.write("            <h2 class=\"section__title\">Tus Servicios_</h2>\n");
      out.write("\n");
      out.write("            <div class=\"posts__container grid\">\n");
      out.write("\n");
      out.write("                ");

                    
                    
      
                    asignarServicioVO asiVO = new asignarServicioVO();
                    asignarServicioDAO asiDAO = new asignarServicioDAO();
                    
                    
                    
                    ArrayList<asignarServicioVO> listarServicios = asiDAO.listarServicios(id_pelu);
                    for (int i = 0; i < listarServicios.size(); i++) {

                        asiVO = listarServicios.get(i); 

                
      out.write("\n");
      out.write("\n");
      out.write("                <div class=\"post__card\">\n");
      out.write("                 \n");
      out.write("                   \n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("\n");
      out.write("                    <div class=\"post__content\">\n");
      out.write("                        <p class=\"post__date text-xs\">Numero de servicio: ");
      out.print(asiVO.getId_Asignar());
      out.write("</p>\n");
      out.write("                        \n");
      out.write("                        <h3 class=\"post__title text-sm\"></h3>\n");
      out.write("                        <h3 class=\"post__title text-sm\">");
      out.print( peluVO.getNombre());
      out.write("</h3>\n");
      out.write("                        <h3 class=\"post__title text-sm\">Mascota:");
      out.print( asiVO.getId_Mascota());
      out.write("</h3>\n");
      out.write("                        <h3 class=\"post__title text-sm\">Servicio:");
      out.print(asiVO.getId_Servicio());
      out.write("</h3>\n");
      out.write("                        <p class=\"post__description text-sm\"></p>\n");
      out.write("                        <a href=\"asignarServicio?opcion=4&id_Asignar=");
      out.print( asiVO.getId_Asignar());
      out.write("\" class=\"button button--flex text-sm\">Terminado</a>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                ");
}
      out.write("\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("\n");
      out.write("       \n");
      out.write("\n");
      out.write("           \n");
      out.write("        </main>\n");
      out.write("\n");
      out.write("       </section>\n");
      out.write("\n");
      out.write("        <!--=============== Mixitup ===============-->\n");
      out.write("        <script src=\"./js/mixitup.min.js\"></script>\n");
      out.write("\n");
      out.write("        <!--=============== Swiper Js ===============-->\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js\"></script>\n");
      out.write("\n");
      out.write("        <!--=============== Email Js ===============-->\n");
      out.write("        <script type=\"text/javascript\" src=\"https://cdn.jsdelivr.net/npm/@emailjs/browser@3/dist/email.min.js\"></script>\n");
      out.write("\n");
      out.write("        <!--=============== Js ===============-->\n");
      out.write("        <script src=\"./js/main.js\"></script>\n");
      out.write("\n");
      out.write("        <!--=============== Common ===============-->\n");
      out.write("        <script src=\"./js/common.js\"></script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
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
