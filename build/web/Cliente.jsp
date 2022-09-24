<%-- 
    Document   : cliente
    Created on : 7/09/2022, 11:24:26 PM
    Author     : DIEGO
--%>

<%@page import="ModeloVO.ClienteVO"%>
<%@page import="ModeloDAO.ClienteDAO"%>
<%@page import="java.util.ArrayList"%>
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
            <h1>clientes</h1><br>


            <% if (request.getAttribute("mensajeError") != null) {%>
            ${mensajeError}     
            <% } else {%>
            ${mensajeExito}
            <%}%>

            <a class="btn-new" href="RegistrarCliente.jsp">Registrar</a><br>


            <form method="post" action="Cliente">
                <table id="example" class="table table-striped">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Nombre</th>
                            <th>Apellido</th>
                            <th>Correo</th>
                            <th>Estado</th>
                            <th>herramientas</th>



                        </tr>
                    </thead>
                    <%
                        ClienteVO clieVO = new ClienteVO();
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
                        <td><%=clieVO.getEstado()%></td>
                        <td><a class="btn-update" href="Cliente?opcion=3&id_cliente=<%= clieVO.getId_cliente()%>">Editar</a>
                            <a class="btn-delete" href="Cliente?opcion=4&id_cliente=<%= clieVO.getId_cliente()%>">Eliminar</a></td>




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