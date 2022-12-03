<%-- 
    Document   : Mascota
    Created on : 4/08/2022, 07:43:07 AM
    Author     : Edwin
--%>

<%@page import="ModeloDAO.UsuarioDAO"%>
<%@page import="ModeloDAO.MascotaDAO"%>
<%@page import="ModeloVO.MascotaVO"%>
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


        <title>Mascotas</title>
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
                            <h2>Mascotas registradas</h2>
                            <a href="registrarMascota.jsp" class="btn">Nuevo Registro</a>
                            <form class="pdf" method="post" action="GenerarPDFMascotas.jsp" target="_black">
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
                                        <th>Edad</th>
                                        <th>Tipo</th>
                                        <th>Raza</th>
                                        <th>Estado</th>
                                        <th>Dueño</th>
                                        <th>Acciones</th>



                                    </tr>
                                </thead>

                                <%
                                    MascotaVO mascotaVO = new MascotaVO();
                                    MascotaDAO mascotaDAO = new MascotaDAO();
                                    ArrayList<MascotaVO> listaMascota = mascotaDAO.listar();
                                    for (int i = 0; i < listaMascota.size(); i++) {

                                        mascotaVO = listaMascota.get(i);


                                %>

                                <tr>

                                <form method="post" action="Administrador" style="">
                                    <td><%=mascotaVO.getId_Mascota()%></td>                  
                                    <td><%=mascotaVO.getNombre()%></td>
                                    <td><%=mascotaVO.getEdad()%></td>
                                    <td><%=mascotaVO.getTipo()%></td>
                                    <td><%=mascotaVO.getRaza()%></td>
                                    <td><%=mascotaVO.getEstado()%></td>
                                    <td><%=mascotaVO.getId_cliente()%></td>
                                    <td><a class="btn-update" href="Mascota?opcion=3&id_Mascota=<%= mascotaVO.getId_Mascota()%>">Editar</a>
                                        <a class="btn-delete" href="Mascota?opcion=4&id_Mascota=<%= mascotaVO.getId_Mascota()%>">Eliminar</a></td>






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
