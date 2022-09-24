<%-- 
    Document   : ActualizarUsuario
    Created on : 14/08/2022, 01:34:25 PM
    Author     : DIEGO
--%>

<%@page import="ModeloVO.UsuarioVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
                  
         <center>
        <h1>actualizar Usuario</h1>
        <%            UsuarioVO usuVO = (UsuarioVO) request.getAttribute("datosConsultados");
            if (usuVO != null) {
        %>
        <form method="post" action="Usuario">
            <table>
                <tr>
                <style>
                    .aa{
                        border-radius: 10px; 
                    }
                </style>
                ID:<br>
                <input class="aa" type="text" name="id_Usuario" value="<%=usuVO.getId_Usuario()%>" readonly=""><br>
                Usuario:<br>
                <input class="aa" type="text" name="textUsuario" value="<%=usuVO.getUsuario()%>"><br>
                password:<br>
                <input class="aa" type="text" name="textClave" value="<%=usuVO.getPassword()%>" readonly=""><br>
                
            
       
            </table><br>
            <button class="btn btn-secondary">Actualizar</button>
            <input type="hidden" value="2" name="opcion">
        </form><br>
        <a href="Usuarios.jsp">regresar</a>
        
        <%}%>
        <% if (request.getAttribute("mensajeError") != null) {%>
        ${mensajeError}     
        <% } else {%>
        ${mensajeExito}
        <%}%>
        
    </center>
        
    </body>
</html>
