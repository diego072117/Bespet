<%-- 
    Document   : registrarProducto
    Created on : 21/09/2022, 06:20:18 PM
    Author     : DIEGO
--%>

<%@page import="ModeloDAO.UsuarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/x-icon" href="image/pata.png">
        <link href="css/estulos-dash.css" rel="stylesheet" type="text/css"/>
        <link href="css/validaciones.css" rel="stylesheet" type="text/css"/>
        <link href="css/formularios.css" rel="stylesheet" type="text/css"/>

        <title>Registrar producto</title>
    </head>
    <body>

        <div class="container-dash">
            <%@include file="navadmin.jsp"%>

            <%    String id_usua = rolVO.getId_Rol();

                UsuarioVO usuaVO = new UsuarioVO();

                UsuarioDAO usuaDAO = new UsuarioDAO(usuaVO);

                usuaVO = usuaDAO.consultarUsuUsu(id_usua);


            %>

            <!-- main -->
            <div class="main">
                <div class="topbar">
                    <div class="toggle" id="toggle">
                        <ion-icon name="menu-outline"></ion-icon>
                    </div>
                    <!-- search -->
                    <div class="search">
                        <label>
                            <input type="text" placeholder="Buscar here">
                            <ion-icon name="search-outline"></ion-icon>
                        </label>
                    </div>
                    <%= usuaVO.getUsuario()%>
                    <!--user img-->
                    <div class="user">
                        <img src="./image/admin.svg" alt="">
                    </div>
                </div>

                <!-- Cards -->




                <div class="details-dash">
                    <div class="recentOrders">
                        <div class="cardHeader-dash">
                            <h2>Registra producto</h2>


                        </div>




                        <form method="post" class="formulario" action="Producto">
                            <div class="form" id="form">
                                <div class="columna">
                                    <div class="formulario__grupo" id="grupo__NombreProducto">
                                        <label class="peluq" for="NombreProducto">Nombre</label>
                                        <div class="formulario__grupo-input">
                                            <input type="text" class="formulario__input" name="NombreProducto" id="NombreProducto" placeholder="Nombre">
                                            <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                        </div>
                                        <p class="formulario__input-error">Digite un nombre valido</p>
                                    </div>
                                    <div class="formulario__grupo" id="grupo__Precio">
                                        <label class="peluq" for="Precio">Precio</label>
                                        <div class="formulario__grupo-input">
                                            <input type="text" class="formulario__input" name="Precio" id="Precio" placeholder="1000">
                                            <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                        </div>
                                        <p class="formulario__input-error">Digite un precio valido</p>
                                    </div>
                                    <div class="formulario__grupo" id="grupo__Precio">
                                        <label class="peluq" for="Precio">Imagen</label>
                                        <div class="formulario__grupo-input">
                                            <input class="inp-img" type="file" name="img" required>
                                            <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                        </div>
                                        <p class="formulario__input-error">Error</p>
                                    </div>

                                </div>
                                <img class="img-usu" src="./image/reg-pro.svg" alt="usuarios">
                            </div>
                            <button class="btn2" type="submit">Registrar<i class='bx bxs-send'></i></button>
                            <input type="hidden" value="1" name="opcion"><br>

                        </form><br>

                        <%                        if (request.getAttribute("mensajeError") != null) { %>
                        ${mensajeError}

                        <%} else {%>
                        ${mensajeExito}
                        <%}%>

                    </div>

                    <div class="recentCustomers">
                        <div class="cardHeader-dash">
                            <h2>Contenido</h2>
                        </div>
                        <div>
                            <div class="imageci">
                                <img src="./image/peluquero.svg" alt="usuarios" class="img-usu" >
                            </div>
                            <div>
                                <h4>Peluqueros</h4>
                                <p>
                                    En este apartado encontraras los peluqueros registrados en el sistema, podrá modificar su información, eliminarlos del sistema, registrar un nuevo peluquero y finalmente generar un reporte de los peluqueros si es necesario.                                </p>
                            </div>
                        </div>

                    </div>


                </div>

            </div>

        </div>




        <script src="js/validaciones.js"></script>
        <script src="js/nav.js" type="text/javascript"></script>




    </body>
</html>
