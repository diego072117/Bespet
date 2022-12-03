<%-- 
    Document   : Producto
    Created on : 21/09/2022, 05:56:28 PM
    Author     : DIEGO
--%>

<%@page import="ModeloDAO.UsuarioDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="ModeloDAO.ProductoDAO"%>
<%@page import="ModeloVO.ProductoVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/x-icon" href="image/pata.png">
        <link href="css/tables.css" rel="stylesheet" type="text/css"/>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet" />
        <link href="https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap5.min.css" rel="stylesheet" />


        <title>Productos</title>
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
                            <h2>Productos Registrados</h2>
                            <a href="registrarProducto.jsp" class="btn">Nuevo Registro</a>
                        </div>

                        <% if (request.getAttribute("mensajeError") != null) {%>
                        ${mensajeError}     
                        <% } else {%>
                        ${mensajeExito}
                        <%}%>


                        <table id="example" class="table table-striped display nowrap" cellspacing="0" >
                            <thead>

                                <tr>
                                    <th>Id</th>
                                    <th>Nombre</th>
                                    <th>Precio</th>
                                    <th>img</th>
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
                                <td><%=prodVO.getPrecio()%></td>
                                <td><%=prodVO.getImg()%></td>
                                <td><%=prodVO.getEstado()%></td>
                                <td><a class="btn-update" href="Producto?opcion=3&id_Producto=<%= prodVO.getId_Producto()%>">Editar</a>
                                    <a class="btn-delete" href="Producto?opcion=4&id_Producto=<%= prodVO.getId_Producto()%>">Eliminar</a></td>




                            </form>



                            </tr>


                            <%}%>

                    </div>



                    </tbody>
                    </table>
                </div>

                <div class="recentCustomers">
                    <div class="cardHeader-dash">
                        <h2>Contenidos</h2>
                    </div>
                    <div>
                            <div class="imageci">
                                <img src="./image/productos.svg" alt="usuarios" class="img-usu" >
                            </div>
                            <div>
                                <h4>Productos</h4>
                                <p>
                                    En este apartado encontraras los productos registrados en el sistema, podrá modificar su información, eliminarlos del sistema y finalmente registrar un nuevo producto.                                </p>
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
