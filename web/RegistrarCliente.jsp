<%-- 
    Document   : RegistrarAdministrador
    Created on : 28/07/2022, 07:25:14 AM
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


        <title>Registrar cliente</title>
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
                            <h2>Registra cliente</h2>


                        </div>



                        <form method="post" class="formulario" action="Cliente">
                            <div class="form" id="form">
                                <div class="columna">

                                    <div class="formulario__grupo" id="grupo__Nombres">
                                        <label class="peluq" for="Nombres">Nombre</label>
                                        <div class="formulario__grupo-input">
                                            <input type="text" class="formulario__input" name="Nombres" id="Nombres" placeholder="Nombre">
                                            <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                        </div>
                                        <p class="formulario__input-error">Digite un nombre valido</p>
                                    </div>

                                    <div class="formulario__grupo" id="grupo__apellidos">
                                        <label class="peluq" for="apellidos">Apellido</label>
                                        <div class="formulario__grupo-input">
                                            <input type="text" class="formulario__input" name="apellidos" id="apellidos" placeholder="Apellido">
                                            <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                        </div>
                                        <p class="formulario__input-error">Digite un apellido valido</p>
                                    </div>

                                    <div class="formulario__grupo" id="grupo__telefono">
                                        <label class="peluq" for="telefono">Telefono</label>
                                        <div class="formulario__grupo-input">
                                            <input type="text" class="formulario__input" name="telefono" id="telefono" placeholder="Telefono">
                                            <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                        </div>
                                        <p class="formulario__input-error">Digite un teléfono valido</p>
                                    </div>
                                </div>
                                <div class="columna">
                                    <div class="formulario__grupo" id="grupo__correo">
                                        <label class="peluq" for="correo">Correo</label>
                                        <div class="formulario__grupo-input">
                                            <input type="text" class="formulario__input" name="correo" id="correo" placeholder="Correo">
                                            <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                        </div>
                                        <p class="formulario__input-error">Digite un correo valido</p>
                                    </div>

                                    <div class="formulario__grupo" id="grupo__tipo_docu">
                                        <label>Elige un Avatar</label><br>
                                        <div class="formulario__grupo-input">
                                            <select class="form-select" name="avatar">
                                                <option value="secava" selected>Seleccione un avatar</option>
                                                <option  value="avatar1.jpg" >Avatar 1</option>
                                                <option  value="avatar2.jpg">Avatar 2</option>

                                            </select><br>
                                            <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                        </div>
                                    </div>

                                    <div class="formulario__grupo" id="grupo__tipo_docu">
                                        <label>Usuario</label><br>
                                        <div class="formulario__grupo-input">
                                            <select class="form-select" name="id_Usuario">
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
                        </form>
                    
                    <%
                        if (request.getAttribute("mensajeError") != null) { %>
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
                                <img src="./image/clie.svg" alt="usuarios" class="img-usu" >
                            </div>
                            <div>
                                <h4>Clientes</h4>
                                <p>
                                    En este apartado encontraras los clientes registrados en el sistema, podrá modificar su información, eliminarlos del sistema, registrar un nuevo cliente y finalmente generar un reporte de los clientes si es necesario.                                </p>
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
