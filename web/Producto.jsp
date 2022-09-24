<%-- 
    Document   : Producto
    Created on : 21/09/2022, 05:56:28 PM
    Author     : DIEGO
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="ModeloDAO.ProductoDAO"%>
<%@page import="ModeloVO.ProductoVO"%>
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
            <h1>Productos</h1><br>


            <% if (request.getAttribute("mensajeError") != null) {%>
            ${mensajeError}     
            <% } else {%>
            ${mensajeExito}
            <%}%>

            <a class="btn-new" href="registrarProducto.jsp">Registrar</a><br>


            <form method="post" action="Producto">
                <table id="example" class="table table-striped">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Nombre</th>
                            <th>Cantidad</th>
                            <th>Precio</th>
                            <th>Estado</th>
                            <th>herramientas</th>



                        </tr>
                    </thead>
                    <%
                        ProductoVO prodVO = new ProductoVO();
                        ProductoDAO prodDAO = new ProductoDAO();
                        ArrayList<ProductoVO> listaProd = prodDAO.listar();
                        for (int i = 0; i < listaProd.size(); i++) {

                            prodVO = listaProd.get(i);


                    %>

                    <tr>
                    <form method="post" action="Producto" style="">
                        <td><%=prodVO.getId_Producto()%></td>

                        <td><%=prodVO.getNombre()%></td>
                        <td><%=prodVO.getStock()%></td>
                        <td><%=prodVO.getPrecio()%></td>
                        <td><%=prodVO.getEstado()%></td>
                        <td><a class="btn-update" href="Producto?opcion=3&id_Producto=<%= prodVO.getId_Producto()%>">Editar</a>
                            <a class="btn-delete" href="Producto?opcion=4&id_Producto=<%= prodVO.getId_Producto()%>">Eliminar</a></td>




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
