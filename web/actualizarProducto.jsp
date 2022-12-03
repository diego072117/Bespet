<%-- 
    Document   : actualizarProducto
    Created on : 21/09/2022, 06:01:41 PM
    Author     : DIEGO
--%>

<%@page import="ModeloDAO.UsuarioDAO"%>
<%@page import="ModeloVO.ProductoVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/x-icon" href="image/pata.png">
        <link href="css/formularios.css" rel="stylesheet" type="text/css"/>
        <link href="css/estulos-dash.css" rel="stylesheet" type="text/css"/>
        <link href="css/validaciones.css" rel="stylesheet" type="text/css"/>



        <title>Actualizar producto</title>
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
                            <h2>Actualiza producto</h2>


                        </div>




                        <%            ProductoVO prodVO = (ProductoVO) request.getAttribute("datosConsultados");
                            if (prodVO != null) {
                        %>

                        <form method="post" class="formulario" action="Producto">
                            <div class="form" id="form">

                                <div class="columna">

                                    <input class="aa" type="hidden" name="id_Producto" value="<%=prodVO.getId_Producto()%>" readonly><br>

                                    <div class="formulario__grupo" id="grupo__NombreProducto">
                                        <label class="peluq" for="NombreProducto">Nombre</label>
                                        <div class="formulario__grupo-input">
                                            <input type="text" class="formulario__input" name="NombreProducto" id="NombreProducto" value="<%=prodVO.getNombre()%>" readonly>
                                            <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                        </div>
                                        <p class="formulario__input-error">Error</p>
                                    </div>
                                    <div class="formulario__grupo" id="grupo__Precio">
                                        <label class="peluq" for="Precio">Precio</label>
                                        <div class="formulario__grupo-input">
                                            <input type="text" class="formulario__input" name="Precio" id="Precio" value="<%=prodVO.getPrecio()%>">
                                            <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                        </div>
                                        <p class="formulario__input-error">Error</p>
                                    </div>


                                    <input type="hidden" name="img" value="<%=prodVO.getImg()%>" readonly="">
                                </div>
                                <img class="img-usu" src="./image/reg-pro.svg" alt="usuarios">
                            </div>

                            <button class="btn2" type="submit">Actualizar<i class='bx bxs-send'></i></button>
                            <input type="hidden" value="2" name="opcion">
                        </form><br>

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
                                <img src="./image/productos.svg" alt="usuarios" class="img-usu" >
                            </div>
                            <div>
                                <h4 class="slider-title">Productos</h4>
                                <p class="slider-p">
                                    En este apartado encontraras los productos registrados en el sistema, podrá modificar su información, eliminarlos del sistema y finalmente registrar un nuevo producto.                                </p>
                            </div>
                        </div>
                    </div>


                </div>

            </div>

        </div>



        <script src="js/validaciones.js" type="text/javascript"></script>
        <script src="js/nav.js" type="text/javascript"></script>




    </body>
</html>