<%-- 
    Document   : manuPelu
    Created on : 21/08/2022, 01:50:33 PM
    Author     : DIEGO
--%>

<%@page import="ModeloDAO.UsuarioDAO"%>
<%@page import="ModeloDAO.ServiciosDAO"%>
<%@page import="ModeloVO.ServiciosVO"%>
<%@page import="ModeloDAO.PeluqueroDAO"%>
<%@page import="ModeloVO.PeluqueroVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="ModeloVO.RolVO"%>
<%@page import="ModeloDAO.RolDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/x-icon" href="image/pata.png">
       
        <title>Dashboard</title>
    </head>

    <body>
      
        <div class="container">
             <%@include file="navadmin.jsp"%>

        <%            
            String id_usua = rolVO.getId_Rol();

            PeluqueroVO peluVO = new PeluqueroVO();

            PeluqueroDAO peluDAO = new PeluqueroDAO(peluVO);

            peluVO = peluDAO.consultarUsuPelu(id_usua);

            String id_pelu = peluVO.getId_Peluquero();
            

         
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
                <%= usuaVO.getUsuario()  %>
                <div class="user">
                    <img src="./image/admin.svg" alt="">
                </div>
            </div>

            <!-- Cards -->

             <div class="cardBox">
                    <div class="card">
                        <div>
                            <div class="numbers">Productos</div>
                            <div class="cardName">Registros rapidos</div>
                        </div>
                        <div class="iconBx">
                            <ion-icon name="bag-handle-outline"></ion-icon>
                        </div>
                    </div>
                    <div class="card">
                        <div>
                            <div class="numbers">Tus Servicios</div>
                            <div class="cardName">Finaliza tus tareas</div>
                        </div>
                        <div class="iconBx">
                            <ion-icon name="checkmark-circle-outline"></ion-icon>
                        </div>
                    </div>
                    <div class="card">
                        <div>
                            <div class="numbers">Mascotas</div>
                            <div class="cardName">Informacion clave</div>
                        </div>
                        <div class="iconBx">
                            <ion-icon name="logo-octocat"></ion-icon>
                        </div>
                    </div>
                    <div class="card">
                        <div>
                            <div class="numbers">Clientes</div>
                            <div class="cardName">Informacion de contacto</div>
                        </div>
                        <div class="iconBx">
                           <ion-icon name="walk-outline"></ion-icon>
                        </div>
                    </div>
                </div>


            <div class="details-dash">
                <div class="recentOrders">
                        <div class="cont-menu">
                            <div class="cont-w">
                                <img src="./image/welcome.svg" class="img-menu">
                                <div class="desc-w">
                                    <h1 class="menu-title">¡Bienvenido!  <%= peluVO.getNombre() %> <%= peluVO.getApellido() %> </h1>
                                    <p class="menu-p"> A nuestro sistema de gestion de servicios <b>Bespet</b>, deseamos que esta herramienta pueda facilitar tu trabajo y sus actividades correspondientes,
                                        podras realizar tareas desde registrar, actualizar, reportes hasta Finalizar tus tareas de la informacion que requieras. <br> 
                                        <br><b>¡Recuerda!</b><br><br> Cualquier duda con respecto a al sistema no dudes en consultar nuestro manual de usuario   </p>
                                </div>

                            </div>
                            <div class="cont-desc">

                                <p class="menu-p"><i class='bx bx-copyright' ></i>Todos los derechos reservados</p>
                            </div>
                        </div>

                    </div>

                <div class="recentCustomers">
                     <div class="cardHeader-dash">
                            <h2>Contacto</h2>
                        </div>
                        <div class="contact-img">
                            <img class="cm" src="./image/contacto.svg">  
                        </div>
                          
                        <table>
             
                            <tr>
                                <td width="60px"><div class="imgBx"><img src="./image/amur.svg" alt=""></div></td>
                                <td><h4>mpduarte@bespet.com<br><span>Supervisor</span></h4></td>
                            </tr>
                            <tr>
                                <td width="60px"><div class="imgBx"><img src="./image/admin.svg" alt=""></div></td>
                                <td><h4>jGonzales@bespet.com<br><span>Supervisor</span></h4></td>
                            </tr>
                            <tr>
                                <td width="60px"><div class="imgBx"><img src="./image/amur.svg" alt=""></div></td>
                                <td><h4>apmelo@bespet.com<br><span>Jefe punto</span></h4></td>
                            </tr>
                            <tr>
                                <td width="60px"><div class="imgBx"><img src="./image/admin.svg" alt=""></div></td>
                                <td><h4>daparra@bespet.com<br><span>Dueño</span></h4></td>
                            </tr>
                            
                            
                        </table>
                </div>


            </div>

        </div>

        </div>
           
        <script src="js/nav.js" type="text/javascript"></script>


    </body>
</html>
