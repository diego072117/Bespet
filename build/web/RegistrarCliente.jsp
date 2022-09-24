<%-- 
    Document   : RegistrarAdministrador
    Created on : 28/07/2022, 07:25:14 AM
    Author     : DIEGO
--%>

<%@page import="ModeloVO.ClienteVO"%>
<%@page import="ModeloDAO.ClienteDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <center>
        <h1>Registrar Cliente</h1>
        <form method="post" action="Cliente">
            <table>
                <tr>
                Nombre:<br>
                <input type="text" name="Nombres" required><br>
                Apellido:<br>
                <input type="text" name="apellidos" required><br>
                Correo:<br>
                <input type="email" name="correo" required><br>
                Estado:<br>
                <input type="text" name="estado" required><br>
                </tr>
            </table><br>
            <button class="btn btn-secondary btn-sm">Registrar</button> 
            <input type="hidden" value="1" name="opcion">
        </form><br>
        
        <a href="Cliente.jsp">
            Regresar
        </a>

        <%
            if (request.getAttribute("mensajeError") != null) { %>
        ${mensajeError}

        <%} else {%>
        ${mensajeExito}
        <%}%>

    </center>
    </body>
</html>
