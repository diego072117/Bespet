<%-- 
    Document   : RegistrarPeluquero
    Created on : 28/07/2022, 07:25:14 AM
    Author     : Nicolas
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


        <title>Registrar Usuario</title>
    </head>
    <body>

        <div class="container-dash">
            <%@include file="navadmin.jsp"%>
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
                    <div class="user">
                        <img src="./image/admin.svg" alt="">
                    </div>
                </div>

                <!-- Cards -->




                <div class="details-dash">
                    <div class="recentOrders">
                        <div class="cardHeader-dash">
                            <h2>Registrar Peluquero</h2>


                        </div>




                        <form method="post" class="formulario" action="Peluquero">
                            <div class="form" id="form">
                                <div class="columna">


                                    <div class="formulario__grupo" id="grupo__Nombre">
                                        <label class="peluq" for="Nombre">Nombre</label>
                                        <div class="formulario__grupo-input">
                                            <input type="text" class="formulario__input" name="Nombre" id="Nombre" placeholder="Nombre">
                                            <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                        </div>
                                        <p class="formulario__input-error">Digite un nombre valido</p>
                                    </div>

                                    <div class="formulario__grupo" id="grupo__Apellido">
                                        <label class="peluq" for="Apellido">Apellido</label>
                                        <div class="formulario__grupo-input">
                                            <input type="text" class="formulario__input" name="Apellido" id="Apellido" placeholder="Apellido">
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
                                            </select>
                                            <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <button class="btn2" type="submit">Registrar<i class='bx bxs-send'></i></button> 
                            <input type="hidden" value="1" name="opcion">
                        </form>


                        <div class="mensaje">
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
