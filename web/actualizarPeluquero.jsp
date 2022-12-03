<%-- 
    Document   : actualizarPeluquero
    Created on : 9/08/2022, 08:46:00 PM
    Author     : Nicolas
--%>

<%@page import="ModeloVO.PeluqueroVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/x-icon" href="image/pata.png">
        <link href="css/formularios.css" rel="stylesheet" type="text/css"/>
        <link href="css/estulos-dash.css" rel="stylesheet" type="text/css"/>
        <link href="css/validaciones.css" rel="stylesheet" type="text/css"/>



        <title>Actualizar peluquero</title>
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
                            <h2>Actualiza peluquero</h2>


                        </div>

                       
 
                            <%            PeluqueroVO peluVO = (PeluqueroVO) request.getAttribute("datosConsultados");
                                if (peluVO != null) {
                            %>

                            <form method="post" class="formulario" action="Peluquero">
                                <div class="form" id="form">

                                    <div class="columna">

                                        <input type="hidden" name="id_Peluquero" value="<%=peluVO.getId_Peluquero()%>" readonly>

                                        <div class="formulario__grupo" id="grupo__Nombre">
                                            <label class="peluq" for="Nombre">Nombre</label>
                                            <div class="formulario__grupo-input">
                                                <input type="text" class="formulario__input" name="Nombre" id="Nombre" placeholder="Nombre" value="<%=peluVO.getNombre()%>" readonly>
                                                <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                            </div>
                                            <p class="formulario__input-error">Error</p>
                                        </div>

                                        <div class="formulario__grupo" id="grupo__Apellido">
                                            <label class="peluq" for="Apellido">Apellido</label>
                                            <div class="formulario__grupo-input">
                                                <input type="text" class="formulario__input" name="Apellido" id="Apellido" value="<%=peluVO.getApellido()%>" readonly>
                                                <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                            </div>
                                            <p class="formulario__input-error">Error</p>
                                        </div>

                                        <div class="formulario__grupo" id="grupo__Telefono">
                                            <label class="peluq" for="Telefono">Telefono</label>
                                            <div class="formulario__grupo-input">
                                                <input type="text" class="formulario__input" name="Telefono" id="Telefono" value="<%=peluVO.getTelefono()%>">
                                                <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                            </div>
                                            <p class="formulario__input-error">Error</p>
                                        </div>


                                    </div>
                                    <div class="columna">

                                        <div class="formulario__grupo" id="grupo__Direccion">
                                            <label class="peluq" for="Direccion">Dirección</label>
                                            <div class="formulario__grupo-input">
                                                <input type="text" class="formulario__input" name="Direccion" id="Direccion" value="<%=peluVO.getDireccion()%>">
                                                <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                            </div>
                                            <p class="formulario__input-error">Error</p>
                                        </div>



                                        <div class="formulario__grupo" id="grupo__Correo">
                                            <label class="peluq" for="Correo">Correo</label>
                                            <div class="formulario__grupo-input">
                                                <input type="text" class="formulario__input" name="Correo" id="Correo" value="<%=peluVO.getCorreo()%>">
                                                <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                            </div>
                                            <p class="formulario__input-error">Error</p>
                                        </div>




                                        <input type="hidden" name="Usuario" value="<%=peluVO.getId_Usuario()%>" readonly>
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
                            <h2>Contenido</h2>
                        </div>
                        <div>
                            <div class="imageci">
                                <img src="./image/peluquero.svg" alt="usuarios" class="img-usu" >
                            </div>
                            <div>
                                <h4 class="slider-title" >Peluqueros</h4>
                                <p class="slider-p">
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
