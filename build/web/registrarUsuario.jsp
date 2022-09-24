<%-- 
    Document   : registrarUsuario
    Created on : 23/07/2022, 03:05:22 PM
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
        <h1>Registrar Usuario</h1>
        <form method="post" action="Usuario">
            <table>
                <tr>
                    Usuario:<br>
                <input type="text" name="textUsuario" required> <br>
                Contraseña:<br>
                <input type="password" name="textClave" required><br>
                </tr>
            </table><br>
            <button class="btn btn-secondary btn-sm">Registrar</button> 
            <input type="hidden" value="1" name="opcion">
        </form><br>
        <a href="Usuarios.jsp">Regresar</a>
        <%
            if (request.getAttribute("mensajeError") != null) { %>
        ${mensajeError}

        <%} else {%>
        ${mensajeExito}
        <%}%>

    </center>
    </body>
</html>
