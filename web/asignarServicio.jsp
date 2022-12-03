<%-- 
    Document   : asignarServicio
    Created on : 28/10/2022, 02:06:41 PM
    Author     : DIEGO
--%>

<%@page import="ModeloDAO.UsuarioDAO"%>
<%@page import="ModeloVO.PeluqueroVO"%>
<%@page import="ModeloDAO.PeluqueroDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="ModeloDAO.asignarServicioDAO"%>
<%@page import="ModeloVO.asignarServicioVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/x-icon" href="image/pata.png">
        <link href="css/tables.css" rel="stylesheet" type="text/css"/>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet" />
        <link href="https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap5.min.css" rel="stylesheet" />


        <title>Asiganar servicios</title>
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
                            <h2>Servicios asignados</h2>
                            <a href="asignarServisRegister.jsp" class="btn">Nuevo Registro</a>
                            <form class="pdf" method="post" action="GenerarPDFasignarServiciosPendientes.jsp" target="_black">
                                
                                <select name="peluquero" required>
                                    <%
                                        PeluqueroDAO peluDAO = new PeluqueroDAO();
                                        for (PeluqueroVO peluVO : peluDAO.listar()) {

                                    %>
                                    <option value="<%=peluVO.getNombre()%>"><%=peluVO.getNombre()%></option>
                                    <%}%>
                                </select>
                                
                                <i class='bx bx-file' ></i>
                                <input type="hidden" name="estado" value="pendiente">
                                <input class="btn-pdf" type="submit" value="Reporte">
                            </form> 

                           

                        </div>

                        <% if (request.getAttribute("mensajeError") != null) {%>
                        ${mensajeError}     
                        <% } else {%>
                        ${mensajeExito}
                        <%}%>

                        <form method="post" action="Usuario">



                            <table id="example" class="table table-striped display nowrap" cellspacing="0" >
                                <thead>

                                    <tr>
                                        <th>Id</th>
                                        <th>Peluquero</th>
                                        <th>Mascota</th>
                                        <th>Servicio</th>
                                        <th>Fecha</th>
                                        <th>Id Cliente</th>
                                        <th>Estado</th>
                                        <th>herramientas</th>



                                    </tr>
                                </thead>

                                <%
                                    asignarServicioVO asiVO = new asignarServicioVO();
                                    asignarServicioDAO asiDAO = new asignarServicioDAO();
                                    ArrayList<asignarServicioVO> listaAsi = asiDAO.listar();
                                    for (int i = 0; i < listaAsi.size(); i++) {

                                        asiVO = listaAsi.get(i);


                                %>

                                <tr>

                                <form method="post" action="asignarServicio" style="">
                                    <td><%=asiVO.getId_Asignar()%></td>

                                    <td><%=asiVO.getId_Peluquero()%></td>
                                    <td><%=asiVO.getId_Mascota()%></td>
                                    <td><%=asiVO.getId_Servicio()%></td>
                                    <td><%=asiVO.getFechaTerminado()%></td>
                                    <td><%=asiVO.getIdCliente()%></td>
                                    <td><%=asiVO.getEstado()%></td>
                                    <td><a class="btn-delete" href="asignarServicio?opcion=3&id_Asignar=<%= asiVO.getId_Asignar()%>">Eliminar</a></td>






                                    </tr>


                                    <%}%>

                                    </div>
                                </form>


                                </tbody>
                            </table>
                    </div>

                    <div class="recentCustomers">
                        <div class="cardHeader-dash">
                            <h2>Contenido</h2>
                        </div>
                        <div>
                            <div class="imageci">
                                <img src="./image/asig-services.svg" alt="usuarios" class="img-usu" >
                            </div>
                            <div>
                                <h4>Asignación de servicios</h4>
                                <p>
                                    En este apartado encontraras los servicios actualmente asignados en el sistema, los cuales podrás eliminar, asignar un nuevo servicio y finalmente generar un reporte individual por cada peluquero de las asignaciones pendientes si es necesario.
                                </p>
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




    </body>
</html>
