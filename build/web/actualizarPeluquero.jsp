<%-- 
    Document   : actualizarPeluquero
    Created on : 9/08/2022, 08:46:00 PM
    Author     : Nicolas
--%>

<%@page import="ModeloVO.PeluqueroVO"%>
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
        <%            PeluqueroVO peluVO = (PeluqueroVO) request.getAttribute("datosConsultados");
            if (peluVO != null) {
        %>
        <form method="post" action="Peluquero">
            <table>
                <tr>
                <style>
                    .aa{
                        border-radius: 10px; 
                    }
                </style>
                ID:<br>
                <input class="aa" type="text" name="id_Peluquero" value="<%=peluVO.getId_Peluquero()%>" readonly><br>
                Nombre:<br>
                <input class="aa" type="text" name="Nombre" value="<%=peluVO.getNombre()%>" readonly><br>
                Apellido:<br>
                <input class="aa" type="text" name="apellido" value="<%=peluVO.getApellido()%>" readonly><br>
                Telefono:<br>
                <input class="aa" type="text" name="Telefono" value="<%=peluVO.getTelefono()%>"><br>
                Direccion:<br>
                <input class="aa" type="text" name="Direccion" value="<%=peluVO.getDireccion()%>" ><br>
                Correo:<br>
                <input class="aa" type="text" name="Correo" value="<%=peluVO.getCorreo()%>"><br>
                Estado:<br>
                <input class="aa" type="text" name="Estado" value="<%=peluVO.getEstado()%>" readonly><br>
                Usuario:<br>
                <input class="aa" type="text" name="Usuario" value="<%=peluVO.getId_Usuario()%>" readonly><br>
       
            </table><br>
            <button class="btn btn-secondary">Actualizar</button>
            <input type="hidden" value="2" name="opcion">
        </form><br>
        <a href="Peluquero.jsp">regresar</a>
        <%}%>
        <% if (request.getAttribute("mensajeError") != null) {%>
        ${mensajeError}     
        <% } else {%>
        ${mensajeExito}
        <%}%>
    </center>
    </body>
</html>