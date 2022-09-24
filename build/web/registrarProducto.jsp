<%-- 
    Document   : registrarProducto
    Created on : 21/09/2022, 06:20:18 PM
    Author     : DIEGO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <center>
        <h1>Registrar Servicio</h1>
        <form method="post" action="Producto">
            <table>
                <tr>
                 Nombre:<br>
                <input type="text" name="NombreProducto" required=""><br>
                 Stock:<br>
                <input type="text" name="Stock" required><br>
                Precio:<br>
                <input type="text" name="Precio" required><br>

                

                </select><br>
                </tr>
            </table><br>
            <button class="btn btn-secondary btn-sm">Registrar</button> 
            <input type="hidden" value="1" name="opcion"><br>
            <a href="Producto.jsp">Volver<a
        </form><br>

        <%
            if (request.getAttribute("mensajeError") != null) { %>
        ${mensajeError}

        <%} else {%>
        ${mensajeExito}
        <%}%>

    </center>
    </body>
</html>