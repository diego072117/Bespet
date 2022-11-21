<%-- 
    Document   : navadmin
    Created on : 29/10/2022, 08:23:08 PM
    Author     : DIEGO
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="ModeloDAO.RolDAO"%>
<%@page import="ModeloVO.RolVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="sesion.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/style_dash.css" rel="stylesheet" type="text/css"/>
        <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%            RolVO rolVO = new RolVO();
            RolDAO rolDAO = new RolDAO();
            ArrayList<RolVO> listaRoles = rolDAO.listar(Usuario);

            for (int i = 0; i < listaRoles.size(); i++) {

                rolVO = listaRoles.get(i);

            }


        %>

        <%            if (rolVO.getRolTiPo().equals("Administrador")) {

        %>


        <div class="sidebar-menu">
            <div class="logo-details">
                <i class='bx bxl-c-plus-plus icon'></i>
                <div class="logo_name">Bespet</div>
                <i class='bx bx-menu' id="btn" ></i>
            </div>
            <dl class="nav-list">
                <li>
                    <i class='bx bx-search' ></i>
                    <input type="text" placeholder="Search...">
                    <span class="tooltip">Search</span>
                </li>
                <li>
                    <a href="menuAdmin.jsp">
                        <i class='bx bx-home-heart' ></i>
                        <span class="links_name">Inicio</span>
                    </a>
                    <span class="tooltip">Inicio</span>
                </li>
                <li>
                    <a href="Usuarios.jsp">
                        <i class='bx bx-grid-alt'></i>
                        <span class="links_name">Usuarios</span>
                    </a>
                    <span class="tooltip">Usuarios</span>
                </li>
                <li>
                    <a href="Administrador.jsp">
                        <i class='bx bx-user' ></i>
                        <span class="links_name">Administradores</span>
                    </a>
                    <span class="tooltip">Administrdores</span>
                </li>
                <li>
                    <a href="Peluquero.jsp">
                        <i class='bx bxs-t-shirt'></i>
                        <span class="links_name">Peluqueros</span>
                    </a>
                    <span class="tooltip">Peluqueros</span>
                </li>
                <li>
                    <a href="Cliente.jsp">
                        <i class='bx bx-user' ></i>
                        <span class="links_name">Clientes</span>
                    </a>
                    <span class="tooltip">Clientes</span>
                </li>
                <li>
                    <a href="Mascota.jsp">
                         <i class="fas fa-cat"></i>
                        <span class="links_name">Mascotas</span>
                    </a>
                    <span class="tooltip">Mascotas</span>
                </li>
                <li>
                    <a href="servicios.jsp">
                        <i class='bx bx-pie-chart-alt-2' ></i>
                        <span class="links_name">Servicios</span>
                    </a>
                    <span class="tooltip">Servicios</span>
                </li>
                <li>
                    <a href="asignarServicio.jsp">
                        <i class='bx bx-folder' ></i>
                        <span class="links_name">Asignar servicios</span>
                    </a>
                    <span class="tooltip">Asignar servicios</span>

                </li>
                <li>
                    <a href="Producto.jsp">
                        <i class='bx bx-cart-alt' ></i>
                        <span class="links_name">Productos</span>
                    </a>
                    <span class="tooltip">Productos</span>
                </li>
                <li>
                    <%-- <a href="#">
                       <i class='bx bx-heart' ></i>
                       <span class="links_name">Saved</span>
                     </a>
                     <span class="tooltip">Saved</span>
                   </li>
                   <li>
                     <a href="#">
                       <i class='bx bx-cog' ></i>
                       <span class="links_name">Setting</span>
                     </a>
                     <span class="tooltip">Setting</span>
                   </li>--%>
                   
                        <li class="profile">

                            <a href="Sesiones">
                                <i class='bx bx-log-out' id="log_out" ></i> 
                            </a>
                        </li>
                   
            </dl>
        </div>




        <%} else if (rolVO.getRolTiPo().equals("Peluquero")) {
        %>
        <div class="sidebar-menu">
            <div class="logo-details">
                <i class='bx bxl-c-plus-plus icon'></i>
                <div class="logo_name">Bespet</div>
                <i class='bx bx-menu' id="btn" ></i>
            </div>
            <dl class="nav-list">
                <li>
                    <i class='bx bx-search' ></i>
                    <input type="text" placeholder="Search...">
                    <span class="tooltip">Search</span>
                </li>
                
                 <li>
                     <a href="menuPelu.jsp">
                         <i class='bx bx-home-heart' ></i>
                        <span class="links_name">Inicio</span>
                    </a>
                    <span class="tooltip">Inicio</span>
                </li>
                
                 <li>
                     <a href="tusServicios.jsp">
                        <i class='bx bx-user' ></i>
                        <span class="links_name">Tus Servicios</span>
                    </a>
                    <span class="tooltip">Tus Servicios</span>
                </li>

                <li>
                    <a href="Cliente.jsp">
                        <i class='bx bx-user' ></i>
                        <span class="links_name">Clientes</span>
                    </a>
                    <span class="tooltip">Clientes</span>
                </li>
                <li>
                    <a href="Mascota.jsp">
                         <i class="fas fa-cat"></i>
                        <span class="links_name">Mascotas</span>
                    </a>
                    <span class="tooltip">Mascotas</span>
                </li>
                <li>
                    <a href="servicios.jsp">
                        <i class='bx bx-pie-chart-alt-2' ></i>
                        <span class="links_name">Servicios</span>
                    </a>
                    <span class="tooltip">Servicios</span>
                </li>

                <li>
                    <a href="Producto.jsp">
                        <i class='bx bx-cart-alt' ></i>
                        <span class="links_name">Productos</span>
                    </a>
                    <span class="tooltip">Productos</span>
                </li>
                <li>
                    <%-- <a href="#">
                       <i class='bx bx-heart' ></i>
                       <span class="links_name">Saved</span>
                     </a>
                     <span class="tooltip">Saved</span>
                   </li>
                   <li>
                     <a href="#">
                       <i class='bx bx-cog' ></i>
                       <span class="links_name">Setting</span>
                     </a>
                     <span class="tooltip">Setting</span>
                   </li>--%>
                <li class="profile">

                    <a href="Sesiones">
                        <i class='bx bx-log-out' id="log_out" ></i></a>
                </li>
            </dl>
        </div>



        <%}
        %>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/boxicons/2.0.1/dist/boxicons.js" integrity="sha512-YYqDo9RDiFmWWI2HdJ+DX7TMh3DWkbAmiXR9R9vAoKXX983Yl1mTfZ3eY9BdajtaCA3lAtgNhwSwkagWV32enQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script src="js/script-dash.js" type="text/javascript"></script>
    </body>
</html>
