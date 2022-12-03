<%-- 
    Document   : RegistrarMascota
    Created on : 28/07/2022, 07:25:14 AM
    Author     : Edwin
--%>

<%@page import="ModeloDAO.UsuarioDAO"%>
<%@page import="ModeloVO.ClienteVO"%>
<%@page import="ModeloDAO.ClienteDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/x-icon" href="image/pata.png">
        <link href="css/estulos-dash.css" rel="stylesheet" type="text/css"/>
        <link href="css/validaciones.css" rel="stylesheet" type="text/css"/>
        <link href="css/formularios.css" rel="stylesheet" type="text/css"/>


        <title>Registrar mascota</title>
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
                            <h2>Registrar Mascota</h2>

                        </div>


                       
                            <form method="post" class="formulario" action="Mascota">
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
                                        <div class="formulario__grupo" id="grupo__Edad">
                                            <label class="peluq" for="Edad">Edad</label>
                                            <div class="formulario__grupo-input">
                                                <input type="text" class="formulario__input" name="Edad" id="Edad" placeholder="Edad">
                                                <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                            </div>
                                            <p class="formulario__input-error">Digite una edad valida</p>
                                        </div>

                                        <div class="formulario__grupo" id="grupo__Tipo">
                                            <label class="peluq" for="Tipo">Tipo</label>
                                            <div class="formulario__grupo-input">
                                                <input type="text" class="formulario__input" name="Tipo" id="Tipo" placeholder="Tipo">
                                                <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                            </div>
                                            <p class="formulario__input-error">Digite un tipo valido</p>
                                        </div>
                                    </div>
                                    <div class="columna">
                                        <div class="formulario__grupo" id="grupo__Raza">
                                            <label class="peluq" for="Raza">Raza</label>
                                            <div class="formulario__grupo-input">
                                                <input type="text" class="formulario__input" name="Raza" id="Raza" placeholder="Raza">
                                                <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                            </div>
                                            <p class="formulario__input-error">Digite una raza valida</p>
                                        </div>
                                        

                                        <div class="formulario__grupo" id="grupo__tipo_docu">
                                            <label>Dueño</label><br>
                                            <div class="formulario__grupo-input">
                                                <select class="form-select" name="id_cliente">
                                                    <option>Selección</option>
                                                    <%                        ClienteDAO clieDAO = new ClienteDAO();
                                                        for (ClienteVO clieVO : clieDAO.listar()) {

                                                    %>
                                                    <option value="<%=clieVO.getId_cliente()%>"><%=clieVO.getNombres()%></option>
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
                                <img src="./image/mascota.svg" alt="usuarios" class="img-usu" >
                            </div>
                            <div>
                                <h4>Mascotas</h4>
                                <p>
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
