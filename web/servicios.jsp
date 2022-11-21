<%-- 
    Document   : servicios
    Created on : 24/08/2022, 11:10:26 PM
    Author     : Edwin
--%>

<%@page import="ModeloDAO.ServiciosDAO"%>
<%@page import="ModeloVO.ServiciosVO"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html"  pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/x-icon" href="image/pata.png">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet" />
        <link href="https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap5.min.css" rel="stylesheet" />
        <link href="css/tables.css" rel="stylesheet" type="text/css"/>
        <link rel="icon" href=" img/logo.png">
        <title>Servicios</title>
    </head>
    <body>

        <%@include file="navadmin.jsp"%>
        <section class="home-section">
            <div class="container">
                <h1>Servicios</h1>

                <% if (request.getAttribute("mensajeError") != null) {%>
                ${mensajeError}     
                <% } else {%>
                ${mensajeExito}
                <%}%>

                <form class="pdf" method="post" action="GenerarPDFServicios.jsp" target="_black">
                    <input class="btn-pdf" type="submit" value="Generar pdf">
                </form>
                <a class="btn-new" href="registrarServicio.jsp">Registrar</a><br>

                <form method="post" action="Servicios">
                    <table id="example" class="table table-striped" style="width:100%">
                        <thead>
                            <tr>
                                <th>Id</th>
                                <th>Nombre</th>
                                <th>Precio</th>
                                <th>Img</th>
                                <th>Estado</th>

                                <th>Herramientas</th>

                            </tr>
                        </thead>
                        <%
                            ServiciosVO serviciosVO = new ServiciosVO();
                            ServiciosDAO serviciosDAO = new ServiciosDAO();
                            ArrayList<ServiciosVO> listaServicio = serviciosDAO.listar();
                            for (int i = 0; i < listaServicio.size(); i++) {

                                serviciosVO = listaServicio.get(i);


                        %>

                        <tr>
                            <td><%=serviciosVO.getId_Servicio()%></td>                  
                            <td><%=serviciosVO.getNombre()%> </td>
                            <td><%=serviciosVO.getPrecio()%></td>
                            <td><%=serviciosVO.getImg()%></td>
                            <td><%=serviciosVO.getEstado()%></td>

                            <td><a class="btn-update" href="Servicios?opcion=3&id_Servicio=<%= serviciosVO.getId_Servicio()%>">Editar</a>
                                <a class="btn-delete" href="Servicios?opcion=4&id_Servicio=<%= serviciosVO.getId_Servicio()%>">Eliminar</a></td>

                        </tr>


                        <%}%>

                    </table>
            </div>
        </form>






    </section>
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
