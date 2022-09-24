<%-- 
    Document   : Administrador
    Created on : 26/07/2022, 04:03:08 PM
    Author     : DIEGO
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="ModeloDAO.AdministradorDAO"%>
<%@page import="ModeloVO.AdministradorVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/admin.css" rel="stylesheet" type="text/css"/>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet" />
        <link href="https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap5.min.css" rel="stylesheet" />
        <title>JSP Page</title>
    </head>
    <body>

        <div class="container">
            <h1>Administradores</h1><br>


            <% if (request.getAttribute("mensajeError") != null) {%>
            ${mensajeError}     
            <% } else {%>
            ${mensajeExito}
            <%}%>

            <a class="btn-new" href="RegistrarAdministrador.jsp">Registrar</a><br>


            <form method="post" action="administrador">
                <table id="example" class="table table-striped">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Nombre</th>
                            <th>Apellido</th>
                            <th>Telefono</th>
                            <th>Direccion</th>
                            <th>Corrreo</th>
                            <th>Usuario</th>
                            <th>Estado</th>
                            <th>herramientas</th>



                        </tr>
                    </thead>
                    <%
                        AdministradorVO adminVO = new AdministradorVO();
                        AdministradorDAO adminDAO = new AdministradorDAO();
                        ArrayList<AdministradorVO> listaAdmin = adminDAO.listar();
                        for (int i = 0; i < listaAdmin.size(); i++) {

                            adminVO = listaAdmin.get(i);


                    %>

                    <tr>
                    <form method="post" action="Administrador" style="">
                        <td><%=adminVO.getId_Administrador()%></td>

                        <td><%=adminVO.getNombre()%></td>
                        <td><%=adminVO.getApellido()%></td>
                        <td><%=adminVO.getTelefono()%></td>
                        <td><%=adminVO.getDireccion()%></td>
                        <td><%=adminVO.getCorreo()%></td>
                        <td><%=adminVO.getId_Usuario()%></td>
                        <td><%=adminVO.getEstado()%></td>
                        <td><a class="btn-update" href="Administrador?opcion=3&id_Administrador=<%= adminVO.getId_Administrador()%>">Editar</a>
                            <a class="btn-delete" href="Administrador?opcion=4&id_Administrador=<%= adminVO.getId_Administrador()%>">Eliminar</a></td>




                    </form>





                    </tr>


                    <%}%>

                </table>

            </form>
        </div>


        <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
        <script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.12.1/js/dataTables.bootstrap5.min.js"></script>
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
