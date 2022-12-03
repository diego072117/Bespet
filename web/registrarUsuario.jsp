<%-- 
    Document   : registrarUsuario
    Created on : 23/07/2022, 03:05:22 PM
    Author     : DIEGO
--%>


<%@page import="ModeloDAO.UsuarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/x-icon" href="image/pata.png">

        <link href="css/validaciones.css" rel="stylesheet" type="text/css"/>
        <link href="css/formularios.css" rel="stylesheet" type="text/css"/>


        <title>Registrar Usuario</title>
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
                            <h2>Registra usuario</h2>


                        </div>


                        <div class="cont-form">

                            <form method="post" class="formulario" action="Usuario">
                                <div class="form" id="form">
                                    <div class="columna">
                                        <div class="formulario__grupo" id="grupo__Correo">
                                            <label class="peluq" for="usuario" class="formulario__label">Usuario</label>
                                            <div class="formulario__grupo-input">
                                                <input type="email" class="formulario__input" name="Correo" id="Correo" placeholder="Usuario">
                                                <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                            </div>
                                            <p class="formulario__input-error">Correo no valido</p>
                                        </div>


                                     
                                        <div class="formulario__grupo" id="grupo__textClave">
                                            <label class="peluq" for="usuario" class="formulario__label">Contraseña</label>
                                            <div class="formulario__grupo-input">
                                                <input type="password" class="formulario__input" name="textClave" id="textClave" placeholder="Contraseña">
                                                <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                            </div>
                                            <p class="formulario__input-error">Debe ser más extensa</p>
                                        </div>
                                    </div>
                                    <img class="img-usu" src="./image/reg-usu.svg" alt="usuarios">
                                </div>
                                <button class="btn2" type="submit">Registrar<i class='bx bxs-send'></i></button> 
                                <input type="hidden" value="1" name="opcion">

                            </form>
                            
                            
                        </div>
                        <%            if (request.getAttribute("mensajeError") != null) { %>
                        ${mensajeError}

                        <%} else {%>
                        ${mensajeExito}
                        <%}%>


                  


                </div>

                <div class="recentCustomers">
                   <div class="cardHeader-dash">
                            <h2>Contenidos</h2>
                        </div>
                        <div>
                            <div class="imageci">
                                <img src="./image/usuarios.svg" alt="usuarios" class="img-usu" >
                            </div>
                            <div>
                                <h4>Usuarios</h4>
                                <p>
                                    En este apartado encontraras los usuarios registrados en el sistema, podrá modificar su información, eliminarlos del sistema, registrar un nuevo usuario y finalmente generar un reporte de los usuarios si es necesario.                                </p>
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
