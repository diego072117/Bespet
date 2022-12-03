<%-- 
    Document   : ActualizarMascota
    Created on : 4/09/2022, 05:38:12 PM
    Author     : Edwin
--%>

<%@page import="ModeloDAO.UsuarioDAO"%>
<%@page import="ModeloVO.MascotaVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/x-icon" href="image/pata.png">
        <link href="css/formularios.css" rel="stylesheet" type="text/css"/>
        <link href="css/estulos-dash.css" rel="stylesheet" type="text/css"/>
        <link href="css/validaciones.css" rel="stylesheet" type="text/css"/>



        <title>Actualizar mascota</title>
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
                            <h2>Actualiza mascota</h2>


                        </div>



                        <%            MascotaVO mascotaVO = (MascotaVO) request.getAttribute("datosConsultados");
                            if (mascotaVO != null) {
                        %>


                        <form method="post" class="formulario" action="Mascota">
                            <div class="form" id="form">


                                <div class="columna">

                                    <input class="aa" type="hidden" name="id_Mascota" value="<%=mascotaVO.getId_Mascota()%>" readonly>

                                    <div class="formulario__grupo" id="grupo__Nombre">
                                        <label class="peluq" for="Nombre">Nombre</label>
                                        <div class="formulario__grupo-input">
                                            <input type="text" class="formulario__input" name="Nombre" id="Nombre" value="<%=mascotaVO.getNombre()%>" readonly>
                                            <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                        </div>
                                        <p class="formulario__input-error">Error</p>
                                    </div>
                                    <div class="formulario__grupo" id="grupo__Edad">
                                        <label class="peluq" for="Edad">Edad</label>
                                        <div class="formulario__grupo-input">
                                            <input type="text" class="formulario__input" name="Edad" id="Edad" value="<%=mascotaVO.getEdad()%>">
                                            <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                        </div>
                                        <p class="formulario__input-error">Error</p>
                                    </div>

                                </div>

                                <div class="columna">

                                    <div class="formulario__grupo" id="grupo__Tipo">
                                        <label class="peluq" for="Tipo">Tipo</label>
                                        <div class="formulario__grupo-input">
                                            <input type="text" class="formulario__input" name="Tipo" id="Tipo" value="<%=mascotaVO.getTipo()%>"  readonly>
                                            <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                        </div>
                                        <p class="formulario__input-error">Error</p>
                                    </div>
                              
                             
                                    <div class="formulario__grupo" id="grupo__Raza">
                                        <label class="peluq" for="Raza">Raza</label>
                                        <div class="formulario__grupo-input">
                                            <input type="text" class="formulario__input" name="Raza" id="Raza" value="<%=mascotaVO.getRaza()%>" readonly>
                                            <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                        </div>
                                        <p class="formulario__input-error">Error</p>
                                    </div>

                                    <input class="aa" type="hidden" name="id_cliente" value="<%=mascotaVO.getId_cliente()%>" readonly>

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
                                <img src="./image/mascota.svg" alt="usuarios" class="img-usu" >
                            </div>
                            <div>
                                <h4 class="slider-title">Mascotas</h4>
                                <p class="slider-p">
                                    En este apartado encontraras las mascotas registradas en el sistema, podrá modificar su información, eliminarlas del sistema, registrar una nueva mascota y finalmente generar un reporte de las mascotas si es necesario. Para poder registrar una nueva mascota debe existir un cliente registrado ya que en el registro este será el dueño                                </p>
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
