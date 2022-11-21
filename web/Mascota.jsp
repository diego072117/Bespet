<%-- 
    Document   : Mascota
    Created on : 4/08/2022, 07:43:07 AM
    Author     : Edwin
--%>

<%@page import="ModeloDAO.MascotaDAO"%>
<%@page import="ModeloVO.MascotaVO"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/x-icon" href="image/pata.png">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet" />
        <link href="https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap5.min.css" rel="stylesheet" />
        <link href="css/tables.css" rel="stylesheet" type="text/css"/>
        <link rel="icon" href=" img/logo.png"> 
        <title>Mascotas</title>
    </head>
    <body>

        <%@include file="navadmin.jsp"%>
        <section class="home-section">
            <div class="container">
                <h1>Mascotas</h1>
                <% if (request.getAttribute("mensajeError") != null) {%>
                ${mensajeError}     
                <% } else {%>
                ${mensajeExito}
                <%}%>

                <form class="pdf" method="post" action="GenerarPDFMascotas.jsp" target="_black">
                    <input class="btn-pdf" type="submit" value="Generar pdf">
                </form>
                <a class="btn-new" href="registrarMascota.jsp" >Registrar</a><br>

                <form method="post" action="mascota">
                    <table id="example" class="table table-striped" style="width:100%">
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
