<%-- 
    Document   : ActualizarUsuario
    Created on : 14/08/2022, 01:34:25 PM
    Author     : DIEGO
--%>

<%@page import="ModeloDAO.UsuarioDAO"%>
<%@page import="ModeloVO.UsuarioVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/x-icon" href="image/pata.png">
        <link href="css/formularios.css" rel="stylesheet" type="text/css"/>
        <link href="css/validaciones.css" rel="stylesheet" type="text/css"/>
        


        <title>Actualizar usuario</title>
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
                            <h2>Actualiza usuario</h2>


                        </div>


                        <div class="form-data">


                            <%            UsuarioVO usuVO = (UsuarioVO) request.getAttribute("datosConsultados");
                                if (usuVO != null) {
                            %>
                            <form method="post" class="formulario" action="Usuario">
                                <div class="form" id="form">
                                    <div class="columna">
                                        
                                        <div class="formulario__grupo" id="grupo__Correo">
                                            <label class="peluq" for="usuario" class="formulario__label">Usuario</label>
                                            <div class="formulario__grupo-input">
                                                <input type="email" class="formulario__input" name="Correo" id="Correo" value="<%=usuVO.getUsuario()%>">
                                                <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                            </div>
                                            <p class="formulario__input-error">Correo no valido</p>
                                        </div>

                                        <input class="aa" type="hidden" name="id_Usuario" value="<%=usuVO.getId_Usuario()%>" readonly=""><br>
                                       

                                        <input class="aa" type="hidden" name="textClave" value="<%=usuVO.getPassword()%>" readonly="">
                                    </div>
                                    <img class="img-usu2" src="./image/act-usu.svg" alt="usuarios">
                                </div>
                               <button class="btn2" type="submit">Actualizar<i class='bx bxs-send'></i></button> 
                                <input type="hidden" value="2" name="opcion">

                            </form>


                            <%}%>
                            <% if (request.getAttribute("mensajeError") != null) {%>
                            ${mensajeError}     
                            <% } else {%>
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
                                <img src="./image/usuarios.svg" alt="usuarios" class="img-usu" >
                            </div>
                            <div>
                                <h4 class="slider-title">Usuarios</h4>
                                <p class="slider-p">
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
