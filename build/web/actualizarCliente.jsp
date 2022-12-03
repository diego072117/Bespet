<%-- 
    Document   : actualizarCliente
    Created on : 7/09/2022, 11:48:38 PM
    Author     : DIEGO
--%>

<%@page import="ModeloDAO.UsuarioDAO"%>
<%@page import="ModeloVO.ClienteVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/x-icon" href="image/pata.png">
        <link href="css/formularios.css" rel="stylesheet" type="text/css"/>
        <link href="css/estulos-dash.css" rel="stylesheet" type="text/css"/>
        <link href="css/validaciones.css" rel="stylesheet" type="text/css"/>



        <title>Actualizar cliente</title>
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
                            <h2>Actualiza cliente</h2>


                        </div>



                        <%            ClienteVO clieVO = (ClienteVO) request.getAttribute("datosConsultados");
                            if (clieVO != null) {
                        %>
                        <form method="post" action="Cliente">
                            <form method="post" class="formulario" action="Cliente">
                                <div class="form" id="form">


                                    <div class="columna">

                                        <input class="aa" type="hidden" name="id_cliente" value="<%=clieVO.getId_cliente()%>" readonly>

                                        <div class="formulario__grupo" id="grupo__Nombres">
                                            <label class="peluq" for="Nombres">Nombre</label>
                                            <div class="formulario__grupo-input">
                                                <input type="text" class="formulario__input" name="Nombres" id="Nombres" value="<%=clieVO.getNombres()%>" readonly>
                                                <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                            </div>
                                        </div>

                                        <div class="formulario__grupo" id="grupo__apellidos">
                                            <label class="peluq" for="apellidos">Apellido</label>
                                            <div class="formulario__grupo-input">
                                                <input type="text" class="formulario__input" name="apellidos" id="apellidos" value="<%=clieVO.getApellidos()%>" readonly>
                                                <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                            </div>
                                        </div>

                                        <div class="formulario__grupo" id="grupo__telefono">
                                            <label class="peluq" for="telefono">Telefono</label>
                                            <div class="formulario__grupo-input">
                                                <input type="text" class="formulario__input" name="telefono" id="telefono" value="<%=clieVO.getTelefono()%>">
                                                <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                            </div>
                                        </div>

                                    </div>




                                    <div class="columna">
                                        <div class="formulario__grupo" id="grupo__correo">
                                            <label class="peluq" for="correo">Correo</label>
                                            <div class="formulario__grupo-input">
                                                <input type="text" class="formulario__input" name="correo" id="correo" value="<%=clieVO.getCorreo()%>">
                                                <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                            </div>
                                        </div>
                                        <div class="formulario__grupo" id="grupo__tipo_docu">
                                            <label>Elige un Avatar</label><br>
                                            <div class="formulario__grupo-input">

                                                <input type="text" class="formulario__input" name="avatar" id="avatar" value="<%=clieVO.getAvatar()%>" readonly>
                                            </div>
                                        </div>

                                        <input class="aa" type="hidden" name="id_Usuario" value="<%=clieVO.getId_Usuario()%>" readonly="">

                                    </div>
                                    <button class="btn2" type="submit">Actualizar<i class='bx bxs-send'></i></button> 
                                    <input type="hidden" value="2" name="opcion">
                                </div>

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
