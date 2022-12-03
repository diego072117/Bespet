<%-- 
    Document   : actualizarAdministrador
    Created on : 9/08/2022, 08:46:00 PM
    Author     : DIEGO
--%>

<%@page import="ModeloDAO.UsuarioDAO"%>
<%@page import="ModeloVO.AdministradorVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/x-icon" href="image/pata.png">
        <link href="css/formularios.css" rel="stylesheet" type="text/css"/>
        <link href="css/validaciones.css" rel="stylesheet" type="text/css"/>
        


        <title>Actualizar administrador</title>
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
                            <h2>Actualiza administrador</h2>


                        </div>




                        <%            AdministradorVO adminVO = (AdministradorVO) request.getAttribute("datosConsultados");
                            if (adminVO != null) {
                        %>

                        <form method="post" action="Administrador" class="formulario" id="formulario">
                            <div class="form" id="form">

                                <div class="columna">
                                    <input class="aa" type="hidden" name="id_Administrador" value="<%=adminVO.getId_Administrador()%>" readonly >

                                    <div class="formulario__grupo" id="grupo__Nombre">
                                        <label class="peluq" for="nombre">Nombre</label>
                                        <div class="formulario__grupo-input">
                                            <input type="text" class="formulario__input" name="Nombre" id="textNombre" value="<%=adminVO.getNombre()%>" readonly="">
                                            <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                        </div>
                                    </div>

                                    <div class="formulario__grupo" id="grupo__Apellido">
                                        <label class="peluq" for="apellido">Apellido</label>
                                        <div class="formulario__grupo-input">
                                            <input type="text" class="formulario__input" name="Apellido" id="textApellido" value="<%=adminVO.getApellido()%>" readonly="">
                                            <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                        </div>
                                    </div>

                                    <div class="formulario__grupo" id="grupo__Telefono">
                                        <label class="peluq" for="Telefono">Telefono</label>
                                        <div class="formulario__grupo-input">
                                            <input type="text" class="formulario__input" name="Telefono" id="Telefono" value="<%=adminVO.getTelefono()%>">
                                            <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                        </div>
                                    </div>               
                                </div>      

                                <div class="columna">

                                    <div class="formulario__grupo" id="grupo__Direccion">
                                        <label class="peluq" for="Direccion">Dirección</label>
                                        <div class="formulario__grupo-input">
                                            <input type="text" class="formulario__input" name="Direccion" id="Direccion" value="<%=adminVO.getDireccion()%>">
                                            <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                        </div>
                                    </div>

                                    <div class="formulario__grupo" id="grupo__Correo">
                                        <label class="peluq" for="Correo">Correo</label>
                                        <div class="formulario__grupo-input">
                                            <input type="text" class="formulario__input" name="Correo" id="Correo" value="<%=adminVO.getCorreo()%>">
                                            <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                        </div>
                                    </div>

                                    <input class="aa" type="hidden" name="Usuario" value="<%=adminVO.getId_Usuario()%>" readonly>
                                </div>

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

                    <div class="recentCustomers">
                        
                        <div class="cardHeader-dash">
                            <h2>Contenidos</h2>
                        </div>
                        <div>
                            <div class="imageci">
                                <img src="./image/admin.svg" alt="usuarios" class="img-usu" >
                            </div>
                            <div>
                                <h4 class="slider-title" >Administradores</h4>
                                <p class="slider-p">
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
