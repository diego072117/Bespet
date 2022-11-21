<%-- 
    Document   : RegistrarAdministrador
    Created on : 28/07/2022, 07:25:14 AM
    Author     : DIEGO
--%>

<%@page import="ModeloVO.UsuarioVO"%>
<%@page import="ModeloDAO.UsuarioDAO"%>
<%@page import="ModeloVO.ClienteVO"%>
<%@page import="ModeloDAO.ClienteDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="sesion.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/x-icon" href="image/pata.png">
        <title>Registrar cliente</title>
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
                Telefono:<br>
                <input type="number" name="telefono" required><br>
                Correo:<br>
                <input type="email" name="correo" required><br>
                <%--avatar:<br>
               <input type="text" name="avatar" required><br>--%>

                Avatar:<br>
                <select name="avatar" required>
                    <option value="secava" selected>Seleccione un avatar</option>
                    <option  value="avatar1.jpg" >Avatar 1</option>
                    <option  value="avatar2.jpg">Avatar 2</option>
                    <option  value="avatar3.jpg">Avatar 3</option>
                    <option  value="avatar4.jpg">Avatar 4</option>
                </select><br>



                Usuario:<br>
                <select class="aa" name="id_Usuario" required>
                    <option>Seleccion</option>
                    <%                        UsuarioDAO usuDAO = new UsuarioDAO();
                        for (UsuarioVO usuVO : usuDAO.listar()) {

                    %>
                    <option value="<%=usuVO.getId_Usuario()%>"><%=usuVO.getUsuario()%></option>

                    <%}%>

                </select><br>

                </tr>
            </table><br>
            <button class="btn btn-secondary btn-sm">Registrar</button> 
            <input type="hidden" value="1" name="opcion">
        </form><br>

        <a href="index.jsp">
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
