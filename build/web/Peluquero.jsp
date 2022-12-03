<%-- 
    Document   : Peluquero
    Created on : 26/07/2022, 04:03:08 PM
    Author     : Nicolas
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="ModeloDAO.PeluqueroDAO"%>
<%@page import="ModeloVO.PeluqueroVO"%>
<%@page import="ModeloDAO.UsuarioDAO"%>
<%@page import="ModeloVO.AdministradorVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/x-icon" href="image/pata.png">
        <link href="css/tables.css" rel="stylesheet" type="text/css"/>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet" />
        <link href="https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap5.min.css" rel="stylesheet" />


        <title>Peluqueros</title>
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
                            <h2>Peluqueros registrados</h2>
                            <a href="RegistrarPeluquero.jsp" class="btn">Nuevo Registro</a>
                            <form class="pdf" method="post" action="GenerarPDFPeluqueros.jsp" target="_black">
                                <i class='bx bx-file' ></i>
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
                                        <th>Nombre</th>
                                        <th>Apellido</th>
                                        <th>Telefono</th>
                                        <th>Direccion</th>
                                        <th>Correo</th>
                                        <th>Estado</th>
                                        <th>Usuario</th>
                                        <th>herramientas</th>



                                    </tr>
                                </thead>

                                <%
                                    PeluqueroVO peluVO = new PeluqueroVO();
                                    PeluqueroDAO peluDAO = new PeluqueroDAO();
                                    ArrayList<PeluqueroVO> listaPelu = peluDAO.listar();
                                    for (int i = 0; i < listaPelu.size(); i++) {
                                        peluVO = listaPelu.get(i);
                                %>

                                <tr>

                                <form method="post" action="Peluquero" style="">
                                    <td><%=peluVO.getId_Peluquero()%></td>
                                    <td><%=peluVO.getNombre()%></td>
                                    <td><%=peluVO.getApellido()%></td>
                                    <td><%=peluVO.getTelefono()%></td>
                                    <td><%=peluVO.getDireccion()%></td>
                                    <td><%=peluVO.getCorreo()%></td>
                                    <td><%=peluVO.getEstado()%></td>
                                    <td><%=peluVO.getId_Usuario()%></td>
                                    <td><a class="btn-update" href="Peluquero?opcion=3&id_Peluquero=<%= peluVO.getId_Peluquero()%>">Editar</a>
                                        <a class="btn-delete" href="Peluquero?opcion=4&id_Peluquero=<%= peluVO.getId_Peluquero()%>">Eliminar</a></td>







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
