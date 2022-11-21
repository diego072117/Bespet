<%-- 
    Document   : menuAdmin
    Created on : 21/08/2022, 01:50:17 PM
    Author     : DIEGO
--%>


<%@page import="ModeloVO.UsuarioVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link href="css/menuadmin.css" rel="stylesheet" type="text/css"/>
        
        <link rel="icon" type="image/x-icon" href="image/pata.png">
        <title>Dashboard</title>



        <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    </head>
    <body>

        <%@include file="navadmin.jsp"%>
        <section class="home-section">

            <!--=============== Projects ===============-->
            <section class="work section container" id="portfolio">
                <h2 class="section__title">Tus Modulos_</h2>

                <div class="project__categories">
                    <button class="category__btn text-xs active-work" data-filter="all">ALL</button>
                    <button class="category__btn text-xs" data-filter=".usu">Usuarios</button>
                    <button class="category__btn text-xs" data-filter=".admin">Administradores</button>
                    <button class="category__btn text-xs" data-filter=".pelu">Peluqueros</button>
                    <button class="category__btn text-xs" data-filter=".clie">Clientes</button>
                    <button class="category__btn text-xs" data-filter=".mas">Mascotas</button>
                    <button class="category__btn text-xs" data-filter=".ser">Servicios</button>
                    <button class="category__btn text-xs" data-filter=".asiser">Asignacion Servicios</button>
                    <button class="category__btn text-xs" data-filter=".pro">Productos</button>
                </div>

                <div class="projects__container grid">

                    <%--   USUARIOS   --%>

                    <div class="project__item grid mix usu">

                        <img src="image/useradmin.svg" alt="" class="project__img">

                        <div class="project__data">
                            <h3 class="project__title text-lg">Usuarios</h3>
                            <p class="project__description">
                                En este apartado podra encontrar a todos los usuarios registrados
                                en el sistema asi mismo podra registrar nuevos usuarios, asignarles un respectivo rol, editarlos
                                eh inactivarlos.

                            </p>
                            <h4 class="projects__stack text-xs ir">IR:</h4>
                            <ul class="tags text-sm">
                                <li><a href="Usuarios.jsp">Usuarios</a></li>
                            </ul>
                        </div>

                    </div>

                    <%--  ADMINISTRADOR  --%>

                    <div class="project__item grid mix admin">
                        <img src="image/administradoresadmin.jpg" alt="" class="project__img">

                        <div class="project__data">
                            <h3 class="project__title text-lg">Administradores</h3>
                            <p class="project__description">
                                En este apartado podra encontrar toda la informacion de los 
                                administradores en el sistema asi mismo podra editarlos eh inactivarlos.
                            </p>

                            <h4 class="projects__stack text-xs">IR:</h4>
                            <ul class="tags text-sm">
                                <li><a href="Administrador.jsp">Administradores</a></li>
                            </ul>
                        </div>
                    </div>


                    <%-- PELUQUERO --%>

                    <div class="project__item grid mix pelu">
                        <img src="image/pelu.jpg" alt="" class="project__img">

                        <div class="project__data">
                            <h3 class="project__title text-lg">Peluqueros</h3>
                            <p class="project__description">
                                En este apartado podra encontrar toda la informacion de los 
                                peluqueros registrados en el sistema asi mismo podra registrarlos, editarlos eh
                                inactivarlos.
                            </p>
                            <h4 class="projects__stack text-xs ir">IR:</h4>
                            <ul class="tags text-sm">
                                <li><a href="Peluquero.jsp">Peluquero</a></li>
                            </ul>
                        </div>
                    </div>

                    <%-- CLIENTES --%>

                    <div class="project__item grid mix clie">
                        <img src="image/cliente.jpg" alt="" class="project__img">

                        <div class="project__data">
                            <h3 class="project__title text-lg">Clientes</h3>
                            <p class="project__description">
                                En este apartado podra encontrar toda la informacion de 
                                los clientes registrados en el sistema asi mismo podra registrar nuevos,
                                editarlos eh inactivarlos.
                            </p>
                            <h4 class="projects__stack text-xs">IR:</h4>
                            <ul class="tags text-sm">
                                <li><a href="Cliente.jsp">Clientes</a></li>
                            </ul>
                        </div>
                    </div>

                    <%-- MASCOTAS --%>

                    <div class="project__item grid mix mas">
                        <img src="image/gato.jpg" alt="" class="project__img">

                        <div class="project__data">
                            <h3 class="project__title text-lg">Mascotas</h3>
                            <p class="project__description">
                                En este apartado podra encontrar toda la informacion de las 
                                mascotas registradas en el sistema asi mismo podra registrar nuevas, editarlas eh inactivarlas
                            </p>
                            <h4 class="projects__stack text-xs">IR:</h4>
                            <ul class="tags text-sm">
                                <li><a href="Mascota.jsp">Mascotas</a></li>
                            </ul>
                        </div>
                    </div>


                    <%-- SERVICIOS --%>

                    <div class="project__item grid mix ser">
                        <img src="image/bañogato.jpg" alt="" class="project__img">

                        <div class="project__data">
                            <h3 class="project__title text-lg">Servicios</h3>
                            <p class="project__description">
                                En este apartado podra encontrar todos los servicios que actualmente presta 
                                la peluqueria canina aqui podras registrar nuevos servicios, editarlos eh inactivarlos.
                            </p>
                            <h4 class="projects__stack text-xs">IR:</h4>
                            <ul class="tags text-sm">
                                <li><a href="servicios.jsp">Servicios</a></li>
                            </ul>
                        </div>
                    </div>

                    <%--  ASIGNAR SERVICIO --%>

                    <div class="project__item grid mix asiser">
                        <img src="image/servis.jpg" alt="" class="project__img">

                        <div class="project__data">
                            <h3 class="project__title text-lg">Asignar Servicio</h3>
                            <p class="project__description">
                                En este apartado podra en contrar todos los servicios que se le 
                                asignaron a un peluquero asi mismo podra asignar nuevos y eliminar 
                                aquellos servicios que se asignaron mal
                            </p>
                            <h4 class="projects__stack text-xs">IR:</h4>
                            <ul class="tags text-sm">
                                <li><a href="asignarServicio.jsp">Asignar Servicio</a></li>
                            </ul>
                        </div>
                    </div>

                    <%-- PRODUCTOS --%>


                    <div class="project__item grid mix pro">
                        <img src="image/productshop.jpg" alt="" class="project__img">

                        <div class="project__data">
                            <h3 class="project__title text-lg">Productos</h3>
                            <p class="project__description">
                                En este apartado podra encontrar los productos que ofrece la tienda.
                            </p>
                            <h4 class="projects__stack text-xs">IR:</h4>
                            <ul class="tags text-sm">
                                <li><a href="Producto.jsp">Productos</a></li>
                            </ul>
                        </div>
                    </div>

                </div>
            </section>

        </section>

        <!--=============== Mixitup ===============-->
        <script src="js/mixitup.min.js" type="text/javascript"></script>
        <script src="js/script-dash.js" type="text/javascript"></script>
        <script src="js/main.js" type="text/javascript"></script>

    </body>
</html>
