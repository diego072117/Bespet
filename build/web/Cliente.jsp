<%-- 
    Document   : cliente
    Created on : 7/09/2022, 11:24:26 PM
    Author     : DIEGO
--%>

<%@page import="ModeloDAO.UsuarioDAO"%>
<%@page import="ModeloVO.ClienteVO"%>
<%@page import="ModeloDAO.ClienteDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/x-icon" href="image/pata.png">
        <link href="css/tables.css" rel="stylesheet" type="text/css"/>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet" />
        <link href="https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap5.min.css" rel="stylesheet" />


        <title>Clientes</title>
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
                            <h2>Clientes Registrados</h2>
                            <a href="RegistrarCliente.jsp" class="btn">Nuevo Registro</a>
                            <form class="pdf" method="post" action="GenerarPDFClientes.jsp" target="_black">
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
                                        <th>Correo</th>
                                        <th>Avatar</th>
                                        <th>Telefono</th>
                                        <th>Estado</th>
                                        <th>Usuario</th>
                                        <th>herramientas</th>



                                    </tr>
                                </thead>

                                <%                             ClienteVO clieVO = new ClienteVO();
                                    ClienteDAO clieDAO = new ClienteDAO();
                                    ArrayList<ClienteVO> listaClie = clieDAO.listar();
                                    for (int i = 0; i < listaClie.size(); i++) {

                                        clieVO = listaClie.get(i);


                                %>

                                <tr>

                                <form method="post" action="Cliente" style="">
                                    <td><%=clieVO.getId_cliente()%></td>

                                    <td><%=clieVO.getNombres()%></td>
                                    <td><%=clieVO.getApellidos()%></td>
                                    <td><%=clieVO.getCorreo()%></td>
                                    <td><%=clieVO.getAvatar()%></td>
                                    <td><%=clieVO.getTelefono()%></td>
                                    <td><%=clieVO.getEstado()%></td>
                                    <td><%=clieVO.getId_Usuario()%></td>
                                    <td><a class="btn-update" href="Cliente?opcion=3&id_cliente=<%= clieVO.getId_cliente()%>">Editar</a>
                                        <a class="btn-delete" href="Cliente?opcion=4&id_cliente=<%= clieVO.getId_cliente()%>">Eliminar</a></td>






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
