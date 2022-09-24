<%-- 
    Document   : registrarServicio
    Created on : 24/08/2022, 11:07:41 PM
    Author     : Edwin
--%>
<%@page import="ModeloVO.PeluqueroVO"%>
<%@page import="ModeloDAO.PeluqueroDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <center>
        <h1>Registrar Servicio</h1>
        <form method="post" action="Servicios">
            <table>
                <tr>
                    Nombre:<br>
                <input type="text" name="Nombre" required=""><br>
                    Precio:<br>
                <input type="number" name="Precio" required><br>
                Estado:<br>
                <input type="text" name="estado" required><br>
                
                  <select class="aa" name="id_Peluquero" required>
                    <option>Seleccion</option>
                    <%                        PeluqueroDAO peluDAO = new PeluqueroDAO();
                        for (PeluqueroVO peluVO : peluDAO.listar()) {

                    %>
                    <option value="<%=peluVO.getId_Peluquero()%>"><%=peluVO.getNombre()%></option>

                    <%}%>

                </select><br>
                </tr>
            </table><br>
            <button class="btn btn-secondary btn-sm">Registrar</button> 
            <input type="hidden" value="1" name="opcion"><br>
            <a href="servicios.jsp">Volver<a
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
