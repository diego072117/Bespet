<%-- 
    Document   : actualizarCliente
    Created on : 7/09/2022, 11:48:38 PM
    Author     : DIEGO
--%>

<%@page import="ModeloVO.ClienteVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
                
         <center>
        <h1>actualizar Cliente</h1>
        <%            ClienteVO clieVO = (ClienteVO) request.getAttribute("datosConsultados");
            if (clieVO != null) {
        %>
        <form method="post" action="Cliente">
            <table>
                <tr>
                <style>
                    .aa{
                        border-radius: 10px; 
                    }
                </style>
                ID:<br>
                <input class="aa" type="text" name="id_cliente" value="<%=clieVO.getId_cliente()%>" readonly><br>
                Nombre:<br>
                <input class="aa" type="text" name="Nombres" value="<%=clieVO.getNombres()%>" readonly><br>
                Apellido:<br>
                <input class="aa" type="text" name="apellidos" value="<%=clieVO.getApellidos()%>" readonly><br>

                Correo:<br>
                <input class="aa" type="text" name="correo" value="<%=clieVO.getCorreo()%>"><br>
                Estado:<br>
                <input class="aa" type="text" name="estado" value="<%=clieVO.getEstado()%>" readonly><br>
       
            </table><br>
            <button class="btn btn-secondary">Actualizar</button>
            <input type="hidden" value="2" name="opcion">
        </form><br>
        <a href="Cliente.jsp">regresar</a>
        <%}%>
        <% if (request.getAttribute("mensajeError") != null) {%>
        ${mensajeError}     
        <% } else {%>
        ${mensajeExito}
        <%}%>
        
    </center>
        
    </body>
</html>