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

        <!--  extension responsive  -->
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/responsive/2.2.3/css/responsive.dataTables.min.css">

        <title>Usuarios</title>
    </head>
    <body>
        <%@include file="navadmin.jsp"%>
        <section class="home-section">




            <div class="container">


                <h1>Usuarios</h1><br>


                <% if (request.getAttribute("mensajeError") != null) {%>
                ${mensajeError}     
                <% } else {%>
                ${mensajeExito}

                <%}%>

                <div class="alert alert-primary" role="alert" style="display: none">
                    <h1><%= request.getAttribute("mensaje")%></h1>
                </div>
                <div class="pdf-cont">
                    

                    <a class="btn-new" href="registrarUsuario.jsp">Registrar</a>
                    
                    <form class="pdf" method="post" action="GenerarPDFUsuarios.jsp" target="_black">
                        <input class="btn-pdf" type="submit" value="Generar pdf">
                    </form>
                    
                </div>
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

                                <button class="btn btn-dark">Asignar rol</button>
                                <input type="hidden" value="<%=usuVO.getId_Usuario()%>" name="idUsuario">
                                <input type="hidden" value="<%=usuVO.getUsuario()%>" name="loginUsuario">
                                <input type="hidden" value="6" name="opcion">
                        </form> </td>






                        </tr>


                        <%}%>

                    </table>
            </div>
        </form>



    </section>


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
