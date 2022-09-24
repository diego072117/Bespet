<%-- 
    Document   : actualizarAdministrador
    Created on : 9/08/2022, 08:46:00 PM
    Author     : DIEGO
--%>

<%@page import="ModeloVO.AdministradorVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
                
         <center>
        <h1>actualizar Administrador</h1>
        <%            AdministradorVO adminVO = (AdministradorVO) request.getAttribute("datosConsultados");
            if (adminVO != null) {
        %>
        <form method="post" action="Administrador">
            <table>
                <tr>
                <style>
                    .aa{
                        border-radius: 10px; 
                    }
                </style>
                ID:<br>
                <input class="aa" type="text" name="id_Administrador" value="<%=adminVO.getId_Administrador()%>" readonly><br>
                Nombre:<br>
                <input class="aa" type="text" name="Nombre" value="<%=adminVO.getNombre()%>" readonly><br>
                Apellido:<br>
                <input class="aa" type="text" name="apellido" value="<%=adminVO.getApellido()%>" readonly><br>
                Telefono:<br>
                <input class="aa" type="text" name="Telefono" value="<%=adminVO.getTelefono()%>"><br>
                Direccion:<br>
                <input class="aa" type="text" name="Direccion" value="<%=adminVO.getDireccion()%>" ><br>
                Correo:<br>
                <input class="aa" type="text" name="Correo" value="<%=adminVO.getCorreo()%>"><br>
                Usuario:<br>
                <input class="aa" type="text" name="Usuario" value="<%=adminVO.getId_Usuario()%>" readonly><br>
      
       
            </table><br>
            <button class="btn btn-secondary">Actualizar</button>
            <input type="hidden" value="2" name="opcion">
        </form><br>
        <a href="Administrador.jsp">regresar</a>
        <%}%>
        <% if (request.getAttribute("mensajeError") != null) {%>
        ${mensajeError}     
        <% } else {%>
        ${mensajeExito}
        <%}%>
        
    </center>
        
    </body>
</html>
