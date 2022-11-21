<%-- 
    Document   : asignarRol
    Created on : 29/10/2022, 06:33:36 PM
    Author     : DIEGO
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="ModeloDAO.RolDAO"%>
<%@page import="ModeloVO.RolVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/style_dash.css" rel="stylesheet" type="text/css"/>
        <link href="css/OtroForm.css" rel="stylesheet" type="text/css"/>
        <link rel="icon" type="image/x-icon" href="image/pata.png">
        <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
        <title>Asignar rol</title>
    <body>



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
                        <i class='bx bx-ghost' ></i>
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



        <section class="home-section">

            <div class="contenidoUwU">


                <div class="cont-form" >
                    <h2>Asginar roles a Usuario</h2>
                    <form method="post" action="Usuario"><br><br>
                        <div class="user-box">
                            <h2><%=request.getAttribute("loginUsuario")%></h2><br>
                        </div>

                        <h3>roles</h3>

                        <select name="rol">
                            <option>Elija el rol</option>
                            <%
                                RolVO rolVO = new RolVO();
                                RolDAO rolDAO = new RolDAO(rolVO);
                                ArrayList<RolVO> listarRoles = rolDAO.listarRoles();
                                for (int i = 0; i < listarRoles.size(); i++) {

                                    rolVO = listarRoles.get(i);

                            %>
                            <option value="<%=rolVO.getId_Rol()%>"><%=rolVO.getRolTiPo()%></option>
                            <%
                                }
                            %>
                        </select>

                        <br>
                        <div class="user-box">
                            <button>asignar</button> <br>
                            <input type="hidden" value="<%=request.getAttribute("idUsuario")%>" name="usuarioID">
                            <input type="hidden" value="7" name="opcion">
                        </div>

                    </form>
                </div>
            </div>
        </section>


        <script src="js/script-dash.js" type="text/javascript"></script>
    </body>
</html>
