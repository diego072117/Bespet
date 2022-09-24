<%-- 
    Document   : RegistrarMascota
    Created on : 28/07/2022, 07:25:14 AM
    Author     : Edwin
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
        <h1>Registrar Mascota</h1>
        <form method="post" action="Mascota">
            <table>
                <tr>
                    Nombre:<br>
                <input type="text" name="Nombre"><br>
                    Edad:<br>
                <input type="number" name="Edad"><br>
                    Tipo:<br>
                <input type="text" name="Tipo"><br>
                    Raza:<br>
                <input type="text" name="Raza"><br>
                    Estado:<br>
                <input type="text" name="Estado"><br>
                
                     <select class="aa" name="id_cliente" required>
                    <option>Seleccion</option>
                    <%                        ClienteDAO clieDAO = new ClienteDAO();
                        for (ClienteVO clieVO : clieDAO.listar()) {

                    %>
                    <option value="<%=clieVO.getId_cliente()%>"><%=clieVO.getNombres()%></option>

                    <%}%>

                </select><br>
                </tr>
            </table><br>
            <button class="btn btn-secondary btn-sm">Registrar</button> 
            <input type="hidden" value="1" name="opcion">
        </form><br>

        <%
            if (request.getAttribute("mensajeError") != null) { %>
        ${mensajeError}

        <%} else {%>
        ${mensajeExito}
        <%}%>

    </center>
    </body>
</html>
