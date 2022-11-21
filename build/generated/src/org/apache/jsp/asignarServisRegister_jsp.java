package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import ModeloDAO.MascotaDAO;
import ModeloVO.MascotaVO;
import java.util.ArrayList;
import ModeloDAO.RolDAO;
import ModeloVO.RolVO;
import ModeloVO.UsuarioVO;

public final class asignarServisRegister_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/navadmin.jsp");
    _jspx_dependants.add("/sesion.jsp");
  }

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_items.release();
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
      out.write("        <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdn.datatables.net/1.11.3/css/jquery.dataTables.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdn.datatables.net/buttons/2.0.1/css/buttons.dataTables.min.css\">\n");
      out.write("        <title>JSP Page</title>\n");
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
      out.write("            <div class=\"container mt-4\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-lg-5 parte01\">\n");
      out.write("                        <div class=\"card\">\n");
      out.write("                            <form action=\"asignarServicio\" method=\"POST\">\n");
      out.write("                                <div class=\"card-body\">\n");
      out.write("\n");
      out.write("                                    <!--DATOS DEL peluquero-->\n");
      out.write("                                    <div class=\"form-group\">\n");
      out.write("                                        <label>Codigo Peluquero</label>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"form-group d-flex\">\n");
      out.write("                                        <div class=\"col-sm-6 d-flex\">\n");
      out.write("                                            <input type=\"text\" name=\"id_Peluquero\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${peluVO.getId_Peluquero()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" class=\"form-control\" placeholder=\"Codigo\" required>\n");
      out.write("                                            <button type=\"submit\" name=\"opcion\" value=\"6\" class=\"btn btn-outline-info\">Buscar</button>\n");
      out.write("                                        </div>                           \n");
      out.write("                                        <div class=\"col-sm-6\">\n");
      out.write("                                            <input type=\"text\" name=\"nombrePeluquero\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${peluVO.getNombre()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" placeholder=\"Datos Peluquero\" class=\"form-control\">\n");
      out.write("                                        </div>   \n");
      out.write("\n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("                                    <!--DATOS DE MAscota-->\n");
      out.write("                                    <div class=\"form-group\">\n");
      out.write("                                        <label>Codigo Mascota</label>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"form-group d-flex\">\n");
      out.write("                                        <div class=\"col-sm-6 d-flex\">\n");
      out.write("                                            <input type=\"text\" name=\"id_Mascota\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${masVO.getId_Mascota()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" class=\"form-control\" placeholder=\"Codigo\" >\n");
      out.write("                                            <button type=\"submit\" name=\"opcion\" value=\"5\" class=\"btn btn-outline-info\">Buscar</button>\n");
      out.write("                                        </div>                           \n");
      out.write("                                        <div class=\"col-sm-6\">\n");
      out.write("                                            <input type=\"text\" name=\"nombreMascota\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${masVO.getNombre()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" placeholder=\"Datos Mascota\" class=\"form-control\">\n");
      out.write("                                        </div>   \n");
      out.write("\n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("                                    <!--DATOS DEL Servicio-->\n");
      out.write("                                    <div class=\"form-group\">\n");
      out.write("                                        <label>Codigo Servicio</label>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"form-group d-flex\">\n");
      out.write("                                        <div class=\"col-sm-6 d-flex\">\n");
      out.write("                                            <input type=\"text\" name=\"id_Servicio\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${serVO.getId_Servicio()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" class=\"form-control\" placeholder=\"Codigo\" >\n");
      out.write("                                            <button type=\"submit\" name=\"opcion\" value=\"7\" class=\"btn btn-outline-info\">Buscar</button>\n");
      out.write("                                        </div>                           \n");
      out.write("                                        <div class=\"col-sm-6\">\n");
      out.write("                                            <input type=\"text\" name=\"nombreServicio\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${serVO.getNombre()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" placeholder=\"Datos Servicios\" class=\"form-control\">\n");
      out.write("                                        </div>   \n");
      out.write("\n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("                                    <!--BOTON AGREGAR PRODUCTO AL REGISTRO-->\n");
      out.write("                                    <div class=\"form-group\">\n");
      out.write("                                        <div class=\"col-sm\">\n");
      out.write("                                            <button type=\"submit\" name=\"opcion\" value=\"8\" class=\"btn btn-outline-primary\">Asignar</button>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                            </form>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                </div>       \n");
      out.write("                <div class=\"col-sm-7\">\n");
      out.write("                    <div class=\"card parte02\">                    \n");
      out.write("                        <div class=\"card-body\">\n");
      out.write("\n");
      out.write("                            <br>\n");
      out.write("                            <table class=\"table table-hover\">\n");
      out.write("                                <thead>\n");
      out.write("                                    <tr class=\"text-center\">\n");
      out.write("\n");
      out.write("                                        <th>Peluquero</th>\n");
      out.write("                                        <th>Mascota</th>\n");
      out.write("                                        <th>Servicio</th>                 \n");
      out.write("                                        <th class=\"accion\">ACCION</th>                                    \n");
      out.write("                                    </tr>\n");
      out.write("                                </thead>\n");
      out.write("                                <tbody>\n");
      out.write("                                    ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("\n");
      out.write("                                </tbody>\n");
      out.write("                            </table>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"card-footer\" >\n");
      out.write("                            <div class=\"row\">\n");
      out.write("                                <div class=\"col-sm-6\">\n");
      out.write("\n");
      out.write("\n");
      out.write("                                    <a href=\"asignarServicio?opcion=9\" class=\"btn btn-success\">Asignar</a>\n");
      out.write("                                    <input type=\"submit\" name=\"accion\" value=\"Cancelar\" class=\"btn btn-danger\">\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                            </div>                        \n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>            \n");
      out.write("    </section>                      \n");
      out.write("\n");
      out.write("\n");
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

  private boolean _jspx_meth_c_forEach_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent(null);
    _jspx_th_c_forEach_0.setVar("list");
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${lista}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                                        <tr class=\"text-center\">\n");
          out.write("                                            ");
          out.write("\n");
          out.write("\n");
          out.write("                                            <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${list.getId_Peluquero()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\n");
          out.write("                                            <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${list.getId_Mascota()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\n");
          out.write("                                            <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${list.getId_Servicio()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\n");
          out.write("\n");
          out.write("\n");
          out.write("\n");
          out.write("                                            <td class=\"text-center\">\n");
          out.write("                                                <input type=\"hidden\"  value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${peluVO.getId_Peluquero()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\">\n");
          out.write("                                                <a  class=\"btn btn-outline-danger btn-sm\"><i class=\"bi bi-trash\"></i></a>                                        \n");
          out.write("                                            </td>\n");
          out.write("                                        </tr>\n");
          out.write("                                    ");
          int evalDoAfterBody = _jspx_th_c_forEach_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_0.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_0);
    }
    return false;
  }
}
