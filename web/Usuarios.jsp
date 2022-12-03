<%-- 
    Document   : Usuarios
    Created on : 28/07/2022, 07:26:26 AM
    Author     : DIEGO
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="ModeloDAO.UsuarioDAO"%>
<%@page import="ModeloVO.UsuarioVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/x-icon" href="image/pata.png">
        <link href="css/tables.css" rel="stylesheet" type="text/css"/>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet" />
        <link href="https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap5.min.css" rel="stylesheet" />


        <title>Usuarios</title>
    </head>
    <body>

        <div class="container-dash">
            <%@include file="navadmin.jsp"%>

            <%    String id_usua = rolVO.getId_Rol();

                UsuarioVO usuaVO = new UsuarioVO();

                UsuarioDAO usuaDAO = new UsuarioDAO(usuaVO);

                usuaVO = usuaDAO.consultarUsuUsu(id_usua);


            %>

            <% %>

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
                            <h2>Usuarios registrados</h2>

                            <div class="cont-head">
                                <a href="registrarUsuario.jsp" class="btn">Nuevo Registro</a>

                                <form class="pdf" method="post" action="GenerarPDFUsuarios.jsp" target="_black">
                                    <i class='bx bx-file' ></i>
                                    <input class="btn-pdf" type="submit" value="Reporte">
                                </form>  
                            </div>

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
                                        <th>Usuario</th>
                                        <th>Estado</th>
                                        <th>Acciones</th>



                                    </tr>
                                </thead>

                                <%
                                    UsuarioVO usuVO = new UsuarioVO();
                                    UsuarioDAO usuDAO = new UsuarioDAO();
                                    ArrayList<UsuarioVO> listaAdmin = usuDAO.listar();
                                    for (int i = 0; i < listaAdmin.size(); i++) {

                                        usuVO = listaAdmin.get(i);


                                %>

                                <tr>

                                    <td><%=usuVO.getId_Usuario()%></td>

                                    <td><%=usuVO.getUsuario()%></td>
                                    <td><%=usuVO.getEstado()%></td>
                                <form method="post" action="Usuario">
                                    <td><a class="btn-update" href="Usuario?opcion=3&id_Usuario=<%= usuVO.getId_Usuario()%>">Editar</a>
                                        <a class="btn-delete" href="Usuario?opcion=5&id_Usuario=<%= usuVO.getId_Usuario()%>">Eliminar</a>

                                        <button class="btn-rol">Asignar rol</button>
                                        <input type="hidden" value="<%=usuVO.getId_Usuario()%>" name="idUsuario">
                                        <input type="hidden" value="<%=usuVO.getUsuario()%>" name="loginUsuario">
                                        <input type="hidden" value="6" name="opcion">
                                </form> </td>






                                </tr>


                                <%}%>

                                </div>
                        </form>


                        </tbody>
                        </table>
                    </div>

                    <div class="recentCustomers">
                        <div class="cardHeader-dash">
                            <h2>Contenidos</h2>
                        </div>
                        <div>
                            <div class="imageci">
                                <img src="./image/usuarios.svg" alt="usuarios" class="img-usu" >
                            </div>
                            <div>
                                <h4>Usuarios</h4>
                                <p>
                                    En este apartado encontraras los usuarios registrados en el sistema, podrá modificar su información, eliminarlos del sistema, registrar un nuevo usuario y finalmente generar un reporte de los usuarios si es necesario.                                </p>
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
