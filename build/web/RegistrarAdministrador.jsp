<%-- 
    Document   : RegistrarAdministrador
    Created on : 28/07/2022, 07:25:14 AM
    Author     : DIEGO
--%>

<%@page import="ModeloVO.UsuarioVO"%>
<%@page import="ModeloDAO.UsuarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/x-icon" href="image/pata.png">
        <link href="css/formularios.css" rel="stylesheet" type="text/css"/>
        <link href="css/validaciones.css" rel="stylesheet" type="text/css"/>



        <title>Registrar administrador</title>
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
                    <!--user img-->
                    <%= usuaVO.getUsuario()%>
                    <div class="user">
                        <img src="./image/admin.svg" alt="">
                    </div>
                </div>

                <!-- Cards -->




                <div class="details-dash">
                    <div class="recentOrders">
                        <div class="cardHeader-dash">
                            <h2>Registra administrador</h2>


                        </div>

                        <div class="cont-form">


                            <form method="post" action="Administrador" class="formulario" id="formulario">
                                <div class="form" id="form">
                                    <div class="columna">

                                        <div class="formulario__grupo" id="grupo__Nombre">
                                            <label class="peluq" for="nombre">Nombre</label>
                                            <div class="formulario__grupo-input">
                                                <input type="text" class="formulario__input" name="Nombre" id="textNombre" placeholder="Nombre" required="">
                                                <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                            </div>
                                            <p class="formulario__input-error">Digite un nombre valido</p>
                                        </div>



                                        <div class="formulario__grupo" id="grupo__Apellido">
                                            <label class="peluq" for="apellido">Apellido</label>
                                            <div class="formulario__grupo-input">
                                                <input type="text" class="formulario__input" name="Apellido" id="textApellido" placeholder="Apellido">
                                                <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                            </div>
                                            <p class="formulario__input-error">Digite un apellido valido</p>
                                        </div>



                                        <div class="formulario__grupo" id="grupo__Telefono">
                                            <label class="peluq" for="Telefono">Telefono</label>
                                            <div class="formulario__grupo-input">
                                                <input type="text" class="formulario__input" name="Telefono" id="Telefono" placeholder="Telefono">
                                                <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                            </div>
                                            <p class="formulario__input-error">Digite un teléfono valido</p>
                                        </div>

                                    </div>

                                    <div class="columna">

                                        <div class="formulario__grupo" id="grupo__Direccion">
                                            <label class="peluq" for="Direccion">Dirección</label>
                                            <div class="formulario__grupo-input">
                                                <input type="text" class="formulario__input" name="Direccion" id="Direccion" placeholder="Dirección">
                                                <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                            </div>
                                            <p class="formulario__input-error">Digite una direccion valida</p>
                                        </div>



                                        <div class="formulario__grupo" id="grupo__Correo">
                                            <label class="peluq" for="Correo">Correo</label>
                                            <div class="formulario__grupo-input">
                                                <input type="text" class="formulario__input" name="Correo" id="Correo" placeholder="Correo">
                                                <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                            </div>
                                            <p class="formulario__input-error">Digite un correo valido</p>
                                        </div>




                                        <div class="formulario__grupo" id="grupo__tipo_docu">
                                            <label>Usuario</label><br>
                                            <div class="formulario__grupo-input">
                                                <select class="form-select" name="Usuario">
                                                    <option>Selección</option>
                                                    <%                        UsuarioDAO usuDAO = new UsuarioDAO();
                                                        for (UsuarioVO usuVO : usuDAO.listar()) {

                                                    %>
                                                    <option name="user" id="user" value="<%=usuVO.getId_Usuario()%>"><%=usuVO.getUsuario()%></option>
                                                    <%}%>
                                                </select><br>
                                                <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                            </div>
                                        </div>


                                    </div>
                                </div>

                                <button class="btn2" type="submit">Registrar<i class='bx bxs-send'></i></button> 
                                <input type="hidden" value="1" name="opcion">
                            </form><br>


                            <%
                                if (request.getAttribute("mensajeError") != null) { %>
                            ${mensajeError}

                            <%} else {%>
                            ${mensajeExito}
                            <%}%>
                        </div>



                    </div>

                    <div class="recentCustomers">
                         <div class="cardHeader-dash">
                            <h2>Contenidos</h2>
                        </div>
                        <div>
                            <div class="imageci">
                                <img src="./image/admin.svg" alt="usuarios" class="img-usu" >
                            </div>
                            <div>
                                <h4>Administradores</h4>
                                <p>
                                    En este apartado encontraras los administradores registrados en el sistema, podrá modificar su información, eliminarlos del sistema, registrar un nuevo administrador y finalmente generar un reporte de los administradores si es necesario.                                </p>
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
