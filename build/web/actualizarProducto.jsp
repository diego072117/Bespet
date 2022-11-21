<%-- 
    Document   : actualizarProducto
    Created on : 21/09/2022, 06:01:41 PM
    Author     : DIEGO
--%>

<%@page import="ModeloVO.ProductoVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />

        <link href="css/estilos_forms_actu.css" rel="stylesheet" type="text/css"/>
        <link rel="icon" type="image/x-icon" href="image/pata.png">
        <title>Actualizar producto</title>
    </head>
    <body>
        <%@include file="navadmin.jsp"%>
        <section class="home-section">

            <h1>Actualizar productos</h1>
            <div class="form-data">
                <div >
                    <a class="atras" href="Producto.jsp"><i class="fa-solid fa-angle-left"></i></a>
                </div>
                <center>
                    <%            ProductoVO prodVO = (ProductoVO) request.getAttribute("datosConsultados");
                        if (prodVO != null) {
                    %>
                    <form method="post" action="Producto">
                        <table>
                            <tr>
                           
                          
                            <input class="aa" type="hidden" name="id_Producto" value="<%=prodVO.getId_Producto()%>" readonly><br>
                            Nombre:<br>
                            <input class="aa" type="text" name="NombreProducto" value="<%=prodVO.getNombre()%>" readonly><br>
                            Precio:<br>
                            <input class="aa" type="text" name="Precio" value="<%=prodVO.getPrecio()%>"><br>
                            
                            <input type="hidden" name="img" value="<%=prodVO.getImg()%>" readonly="">


                        </table>
                        <button class="btn btn-secondary">Actualizar</button>
                        <input type="hidden" value="2" name="opcion">
                    </form><br>
                 
                    <%}%>
                    <% if (request.getAttribute("mensajeError") != null) {%>
                    ${mensajeError}     
                    <% } else {%>
                    ${mensajeExito}
                    <%}%>
                </center>
        </section>
    </body>
</html>
