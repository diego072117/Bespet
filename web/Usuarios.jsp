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
        <link href="css/usuario.css" rel="stylesheet" type="text/css"/>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet" />
        <link href="https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap5.min.css" rel="stylesheet" />
        <title>JSP Page</title>
    </head>
    <body>

        <div class="container">


            <h1>Usuarios</h1><br>


            <% if (request.getAttribute("mensajeError") != null) {%>
            ${mensajeError}     
            <% } else {%>
            ${mensajeExito}
            <%}%>

            <a class="btn-new" href="registrarUsuario.jsp">Registrar</a><br>
            <form method="post" action="Usuario">
                
                <style>
                    .table{
                        margin-left: 30%;
                    }
                </style>

                <table id="example" class="table table-striped" style="width: 50% ">
                    <thead>

                        <tr>
                            <th>Id</th>
                            <th>Usuario</th>
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

                        <td><a class="btn-update" href="Usuario?opcion=3&id_Usuario=<%= usuVO.getId_Usuario()%>">Editar</a>
                            <a class="btn-delete" href="Usuario?opcion=3&id_Usuario=<%= usuVO.getId_Usuario()%>">Eliminar</a></td>






                    </tr>


                    <%}%>

                </table>
        </div>
    </form>


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
