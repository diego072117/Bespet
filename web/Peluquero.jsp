<%-- 
    Document   : Peluquero
    Created on : 26/07/2022, 04:03:08 PM
    Author     : Nicolas
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="ModeloDAO.PeluqueroDAO"%>
<%@page import="ModeloVO.PeluqueroVO"%>
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
            <h1>Peluqueros</h1><br>


            <% if (request.getAttribute("mensajeError") != null) {%>
            ${mensajeError}     
            <% } else {%>
            ${mensajeExito}
            <%}%>

            <a class="btn-new" href="RegistrarPeluquero.jsp">Registrar</a><br>


            <form method="post" action="peluquero">
                <table id="example" class="table table-striped">
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