<%-- 
    Document   : ActualizarServicio
    Created on : 7/09/2022, 09:21:15 PM
    Author     : Edwin
--%>

<%@page import="ModeloVO.ServiciosVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

    <center>
        <h1>actualizar Servicios</h1>
        <%            ServiciosVO serviciosVO = (ServiciosVO) request.getAttribute("datosConsultados");
            if (serviciosVO != null) {
        %>
        <form method="post" action="Servicios">
            <table>
                <tr>
                <style>
                    .aa{
                        border-radius: 10px; 
                    }
                </style>
                ID:<br>
                <input class="aa" type="text" name="id_Servicio" value="<%=serviciosVO.getId_Servicio()%>" readonly><br>
                Nombre:<br>
                <input class="aa" type="text" name="Nombre" value="<%=serviciosVO.getNombre()%>" readonly><br>
                Precio:<br>
                <input class="aa" type="text" name="Precio" value="<%=serviciosVO.getPrecio()%>"><br>
                Estado:<br>
                <input class="aa" type="text" name="estado" value="<%=serviciosVO.getEstado()%>" readonly><br>
                Id_peluquero:<br>
                <input class="aa" type="text" name="Id_peluquero" value="<%=serviciosVO.getId_Peluquero()%>" readonly><br>

            </table><br>
            <button class="btn btn-secondary">Actualizar</button>
            <input type="hidden" value="2" name="opcion">
        </form><br>
        <a href="Mascota.jsp">regresar</a>
        <%}%>
        <% if (request.getAttribute("mensajeError") != null) {%>
        ${mensajeError}     
        <% } else {%>
        ${mensajeExito}
        <%}%>

    </center>

</body>
</html>
