<%-- 
    Document   : RegistrarAdministrador
    Created on : 28/07/2022, 07:25:14 AM
    Author     : DIEGO
--%>

<%@page import="ModeloVO.UsuarioVO"%>
<%@page import="ModeloDAO.UsuarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />

        <title>JSP Page</title>
    </head>
    <body>
         <center>
        <h1>Registrar Administrador</h1>
        <div class="form-data" >
        <form method="post" action="Administrador"  class="formulario" id="formulario">
            <table>
                <tr>
       
                    Nombre:<br>
                <input type="text" name="Nombre" required=""><br>
                Apellido:<br>
                <input type="text" name="apellido" required><br>
                Telefono:<br>
                <input type="text" name="Telefono" required><br>
                Direccion:<br>
                <input type="text" name="Direccion" required><br>
                Correo:<br>
                <input type="text" name="Correo" required><br>
                
                <select class="aa" name="Usuario" required>
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
      
        <a href="Administrador.jsp">
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
