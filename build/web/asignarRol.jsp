<%-- 
    Document   : asignarRol
    Created on : 29/10/2022, 06:33:36 PM
    Author     : DIEGO
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="ModeloDAO.RolDAO"%>
<%@page import="ModeloVO.RolVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/x-icon" href="image/pata.png">
        <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>

        <link href="css/estulos-dash.css" rel="stylesheet" type="text/css"/>
        <link href="css/formularios.css" rel="stylesheet" type="text/css"/>

        <title>Usuarios</title>
    </head>
    <body>


        <div class="container-dash">
            <div class="navigation">
                <dl>
                    <li>
                        <a href="menuAdmin.jsp">
                            <span class="icon pata">
                                <ion-icon name="paw"></ion-icon>
                            </span>
                            <span class="bespet title ">Bespet</span>
                        </a>
                    </li>

                    <li>
                        <a href="menuAdmin.jsp">
                            <span class="icon">
                                <ion-icon name="home-outline"></ion-icon>
                            </span>
                            <span class="title">inicio</span>
                        </a>
                    </li>
                    <li>
                        <a href="Usuarios.jsp">
                            <span class="icon">
                                <ion-icon name="people-outline"></ion-icon>
                            </span>
                            <span class="title">Usuarios</span>
                        </a>
                    </li>
                    <li>
                        <a href="Administrador.jsp">
                            <span class="icon">
                                <ion-icon name="storefront-outline"></ion-icon>
                            </span>
                            <span class="title">Administradores</span>
                        </a>
                    </li>
                    <li>
                        <a href="Peluquero.jsp">
                            <span class="icon">
                                <ion-icon name="cut-outline"></ion-icon>
                            </span>
                            <span class="title">Peluqueros</span>
                        </a>
                    </li>
                    <li>
                        <a href="Cliente.jsp">
                            <span class="icon">
                                <ion-icon name="cart-outline"></ion-icon>
                            </span>
                            <span class="title">Clientes</span>
                        </a>
                    </li>
                    <li>
                        <a href="Mascota.jsp">
                            <span class="icon">
                                <ion-icon name="logo-tux"></ion-icon>
                            </span>
                            <span class="title">Mascotas</span>
                        </a>
                    </li>
                    <li>
                        <a href="servicios.jsp">
                            <span class="icon">
                                <ion-icon name="file-tray-stacked-outline"></ion-icon>
                            </span>
                            <span class="title">Servicios</span>
                        </a>
                    </li>
                    <li>
                        <a href="asignarServicio.jsp">
                            <span class="icon">
                                <ion-icon name="reader-outline"></ion-icon>
                            </span>
                            <span class="title">Asignar servicios</span>
                        </a>
                    </li>
                    <li>
                        <a href="serviciosTerminados.jsp    ">
                            <span class="icon">
                                <ion-icon name="checkbox-outline"></ion-icon>
                            </span>
                            <span class="title">Servicios terminados</span>
                        </a>
                    </li>
                    <li>
                        <a href="Producto.jsp">
                            <span class="icon">
                                <ion-icon name="pricetags-outline"></ion-icon>
                            </span>
                            <span class="title">Productos</span>
                        </a>
                    </li>
                    <li>
                        <form method="post" action="Sesiones">
                            <button class="btn-logout" type="submit">
                                <span class="icon cs">
                                    <ion-icon name="log-out-outline"></ion-icon>
                                </span>
                                <span class="title text-cs">Cerrar Sesion</span> 
                            </button>
                        </form>

                    </li>
                </dl>
            </div>
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
                        <img src="/img1.jpg" alt="">
                    </div>
                </div>

                <!-- Cards -->




                <div class="details-dash">
                    <div class="recentOrders">
                        <div class="cardHeader-dash">
                            <h2>Asginar roles a Usuario</h2>
                        </div>



                        <div class="cont-form" >

                            <form method="post" class="formulario" action="Usuario">



                                <div class="form" id="form">
                                    <div class="columna">

                                        <%--  <h3>roles</h3>

                                        <select name="rol">
                                            <option>Elija el rol</option>
                                            <%
                                                RolVO rolVO = new RolVO();
                                                RolDAO rolDAO = new RolDAO(rolVO);
                                                ArrayList<RolVO> listarRoles = rolDAO.listarRoles();
                                                for (int i = 0; i < listarRoles.size(); i++) {

                                                    rolVO = listarRoles.get(i);

                                            %>
                                            <option value="<%=rolVO.getId_Rol()%>"><%=rolVO.getRolTiPo()%></option>
                                            <%
                                                }
                                            %>
                                        </select> --%>

                                        <div class="formulario__grupo" id="grupo__Correo">
                                            <label class="peluq" for="usuario" class="formulario__label">Usuario</label>
                                            <div class="formulario__grupo-input">
                                                <h3><%=request.getAttribute("loginUsuario")%></h3>
                                            </div>

                                        </div>

                                        <div class="formulario__grupo" id="grupo__tipo_docu">
                                            <label>roles</label>
                                            <div class="formulario__grupo-input">
                                                <select class="form-select" name="rol">
                                                    <option>Elija el rol</option>
                                                    <%
                                                        RolVO rolVO = new RolVO();
                                                        RolDAO rolDAO = new RolDAO(rolVO);
                                                        ArrayList<RolVO> listarRoles = rolDAO.listarRoles();
                                                        for (int i = 0; i < listarRoles.size(); i++) {

                                                            rolVO = listarRoles.get(i);

                                                    %>
                                                    <option value="<%=rolVO.getId_Rol()%>"><%=rolVO.getRolTiPo()%></option>
                                                    <%
                                                        }
                                                    %>

                                                </select>
                                                <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                            </div>
                                        </div>


                                    </div>
                                    <img class="img-usu2" src="./image/asig-rol.svg" alt="usuarios">
                                </div>
                                <button class="btn2" type="submit">Asignar rol<i class='bx bxs-send'></i></button>
                                <input type="hidden" value="<%=request.getAttribute("idUsuario")%>" name="usuarioID">
                                <input type="hidden" value="7" name="opcion">


                            </form>
                        </div>

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
                                <h4 class="slider-title">Asignar rol</h4>
                                <p class="slider-p">
                                    Aqui podras asignarle un rol a los usuarios registrados</p>
                            </div>
                        </div>
                    </div>


                </div>

            </div>

        </div>




        <script src="js/nav.js" type="text/javascript"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
        <script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.12.1/js/dataTables.bootstrap5.min.js"></script>
        <!-- extension responsive -->
        <script src="https://cdn.datatables.net/responsive/2.2.3/js/dataTables.responsive.min.js"></script>

        <script>
            $(document).ready(function () {
                $('#example').DataTable({
                    language: {
                        url: '//cdn.datatables.net/plug-ins/1.12.1/i18n/es-ES.json'
                    }

                });
            });
        </script>



        <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    </body>
</html>
