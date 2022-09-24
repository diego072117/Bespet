<%-- 
    Document   : RegistrarPeluquero
    Created on : 28/07/2022, 07:25:14 AM
    Author     : Nicolas
--%>

<%@page import="ModeloVO.UsuarioVO"%>
<%@page import="ModeloDAO.UsuarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <center>
        <h1>Registrar Peluquero</h1>
        <form method="post" action="Peluquero">
            <table>
                <tr>
                Nombre:<br>
                <input type="text" name="Nombre" required><br>
                Apellido:<br>
                <input type="text" name="apellido" required><br>
                Telefono:<br>
                <input type="text" name="Telefono" required><br>
                Direccion:<br>
                <input type="text" name="Direccion" required><br>
                Correo:<br>
                <input type="text" name="Correo" required><br>
                Estado:<br>
                <input type="text" name="Estado" required><br>
                <select class="aa" name="Usuario" required>
                    <option>Seleccion</option>
                    <%                        UsuarioDAO usuDAO = new UsuarioDAO();
                        for (UsuarioVO usuVO : usuDAO.listar()) {

                    %>
                    <option value="<%=usuVO.getId_Usuario()%>"><%=usuVO.getUsuario()%></option>

                    <%}%>

                </select><br
                </tr>
            </table><br>
            <button class="btn btn-secondary btn-sm">Registrar</button> 
            <input type="hidden" value="1" name="opcion">
        </form><br>
        
        <a href="Peluquero.jsp">
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