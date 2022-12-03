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
        <link href="css/estulos-dash.css" rel="stylesheet" type="text/css"/>
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

        <div class="navigation">
            <dl>
                <li>
                    <a href="menuAdmin.jsp">
                        <span class="icon pata">
                            <ion-icon name="paw"></ion-icon>
                        </span>
                        <span class="bespet title ">Bespet</span>
                    </a>
                </li>

                <li>
                    <a href="menuAdmin.jsp">
                        <span class="icon">
                            <ion-icon name="home-outline"></ion-icon>
                        </span>
                        <span class="title">inicio</span>
                    </a>
                </li>
                <li>
                    <a href="Usuarios.jsp">
                        <span class="icon">
                            <ion-icon name="people-outline"></ion-icon>
                        </span>
                        <span class="title">Usuarios</span>
                    </a>
                </li>
                <li>
                    <a href="Administrador.jsp">
                        <span class="icon">
                            <ion-icon name="storefront-outline"></ion-icon>
                        </span>
                        <span class="title">Administradores</span>
                    </a>
                </li>
                <li>
                    <a href="Peluquero.jsp">
                        <span class="icon">
                            <ion-icon name="cut-outline"></ion-icon>
                        </span>
                        <span class="title">Peluqueros</span>
                    </a>
                </li>
                <li>
                    <a href="Cliente.jsp">
                        <span class="icon">
                            <ion-icon name="cart-outline"></ion-icon>
                        </span>
                        <span class="title">Clientes</span>
                    </a>
                </li>
                <li>
                    <a href="Mascota.jsp">
                        <span class="icon">
                            <ion-icon name="logo-tux"></ion-icon>
                        </span>
                        <span class="title">Mascotas</span>
                    </a>
                </li>
                <li>
                    <a href="servicios.jsp">
                        <span class="icon">
                            <ion-icon name="file-tray-stacked-outline"></ion-icon>
                        </span>
                        <span class="title">Servicios</span>
                    </a>
                </li>
                <li>
                    <a href="asignarServicio.jsp">
                        <span class="icon">
                            <ion-icon name="reader-outline"></ion-icon>
                        </span>
                        <span class="title">Asignar servicios</span>
                    </a>
                </li>
                <li>
                    <a href="serviciosTerminados.jsp    ">
                        <span class="icon">
                            <ion-icon name="checkbox-outline"></ion-icon>
                        </span>
                        <span class="title">Servicios terminados</span>
                    </a>
                </li>
                <li>
                    <a href="Producto.jsp">
                        <span class="icon">
                            <ion-icon name="pricetags-outline"></ion-icon>
                        </span>
                        <span class="title">Productos</span>
                    </a>
                </li>
                <li>
                    <form method="post" action="Sesiones">
                        <button class="btn-logout" type="submit">
                            <span class="icon cs">
                                <ion-icon name="log-out-outline"></ion-icon>
                            </span>
                            <span class="title text-cs">Cerrar Sesion</span> 
                        </button>
                    </form>

                </li>
            </dl>
        </div>







        <%} else if (rolVO.getRolTiPo().equals("Peluquero")) {
        %>

        <div class="navigation">
            <dl>
                <li>
                    <a href="menuAdmin.jsp">
                        <span class="icon">
                            <ion-icon name="paw"></ion-icon>
                        </span>
                        <span class="title">Bespet</span>
                    </a>
                </li>

                <li>
                    <a href="menuPelu.jsp">
                        <span class="icon">
                            <ion-icon name="home-outline"></ion-icon>
                        </span>
                        <span class="title">inicio</span>
                    </a>
                </li>
                <li>
                    <a href="tusServicios.jsp">
                        <span class="icon">
                            <ion-icon name="cart-outline"></ion-icon>
                        </span>
                        <span class="title">Tus servicios</span>
                    </a>
                </li>
                <li>
                    <a href="Cliente.jsp">
                        <span class="icon">
                            <ion-icon name="cart-outline"></ion-icon>
                        </span>
                        <span class="title">Clientes</span>
                    </a>
                </li>
                <li>
                    <a href="Mascota.jsp">
                        <span class="icon">
                            <ion-icon name="logo-tux"></ion-icon>
                        </span>
                        <span class="title">Mascotas</span>
                    </a>
                </li>
                <li>
                    <a href="servicios.jsp">
                        <span class="icon">
                            <ion-icon name="file-tray-stacked-outline"></ion-icon>
                        </span>
                        <span class="title">Servicios</span>
                    </a>
                </li>

                <li>
                    <a href="Producto.jsp">
                        <span class="icon">
                            <ion-icon name="pricetags-outline"></ion-icon>
                        </span>
                        <span class="title">Productos</span>
                    </a>
                </li>
                <li>
                    <form method="post" action="Sesiones">
                        <button class="btn-logout" type="submit">
                            <span class="icon cs">
                                <ion-icon name="log-out-outline"></ion-icon>
                            </span>
                            <span class="title text-cs">Cerrar Sesion</span> 
                        </button>
                    </form>

                </li>
            </dl>
        </div>



        <%}
        %>


        <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    </body>
</html>
