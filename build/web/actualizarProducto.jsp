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
        <title>JSP Page</title>
    </head>
    <body>
                
         <center>
        <h1>actualizar Peluquero</h1>
        <%            ProductoVO prodVO = (ProductoVO) request.getAttribute("datosConsultados");
            if (prodVO != null) {
        %>
        <form method="post" action="Producto">
            <table>
                <tr>
                <style>
                    .aa{
                        border-radius: 10px; 
                    }
                </style>
                ID:<br>
                <input class="aa" type="text" name="id_Producto" value="<%=prodVO.getId_Producto()%>" readonly><br>
                Nombre:<br>
                <input class="aa" type="text" name="NombreProducto" value="<%=prodVO.getNombre()%>" readonly><br>
                Cantidad<br>
                <input class="aa" type="text" name="Stock" value="<%=prodVO.getStock()%>" ><br>
                Precio:<br>
                <input class="aa" type="text" name="Precio" value="<%=prodVO.getPrecio()%>"><br>

    
       
            </table><br>
            <button class="btn btn-secondary">Actualizar</button>
            <input type="hidden" value="2" name="opcion">
        </form><br>
        <a href="Producto.jsp">regresar</a>
        <%}%>
        <% if (request.getAttribute("mensajeError") != null) {%>
        ${mensajeError}     
        <% } else {%>
        ${mensajeExito}
        <%}%>
    </center>
    </body>
</html>
