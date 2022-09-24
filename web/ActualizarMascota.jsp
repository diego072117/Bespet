<%-- 
    Document   : ActualizarMascota
    Created on : 4/09/2022, 05:38:12 PM
    Author     : Edwin
--%>

<%@page import="ModeloVO.MascotaVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
                
         <center>
        <h1>actualizar Mascota</h1>
        <%            MascotaVO mascotaVO = (MascotaVO) request.getAttribute("datosConsultados");
            if (mascotaVO != null) {
        %>
        <form method="post" action="Mascota">
            <table>
                <tr>
                <style>
                    .aa{
                        border-radius: 10px; 
                    }
                </style>
                ID:<br>
                <input class="aa" type="text" name="id_Mascota" value="<%=mascotaVO.getId_Mascota()%>" readonly><br>
                Nombre:<br>
                <input class="aa" type="text" name="Nombre" value="<%=mascotaVO.getNombre()%>" readonly><br>
                Edad:<br>
                <input class="aa" type="text" name="Edad" value="<%=mascotaVO.getEdad()%>"><br>
                Tipo:<br>
                <input class="aa" type="text" name="Tipo" value="<%=mascotaVO.getTipo()%>"  readonly><br>
                Raza:<br>
                <input class="aa" type="text" name="Raza" value="<%=mascotaVO.getRaza()%>" readonly><br>
                Estado:<br>
                <input class="aa" type="text" name="Estado" value="<%=mascotaVO.getEstado()%>" readonly><br>
                Id_cliente:<br>
                <input class="aa" type="text" name="id_cliente" value="<%=mascotaVO.getId_cliente()%>" readonly><br>
       
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