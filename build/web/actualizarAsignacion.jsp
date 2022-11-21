<%-- 
    Document   : actualizarAsignacion
    Created on : 28/10/2022, 06:15:53 PM
    Author     : DIEGO
--%>

<%@page import="ModeloVO.ServiciosVO"%>
<%@page import="ModeloDAO.ServiciosDAO"%>
<%@page import="ModeloVO.MascotaVO"%>
<%@page import="ModeloDAO.MascotaDAO"%>
<%@page import="ModeloVO.PeluqueroVO"%>
<%@page import="ModeloDAO.PeluqueroDAO"%>
<%@page import="ModeloVO.asignarServicioVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="sesion.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/x-icon" href="image/pata.png">
        <title>Actualizar asignacion</title>
    </head>
    <body>

    <center>
        <h1>actualizar Administrador</h1>
        <%            asignarServicioVO asiVO = (asignarServicioVO) request.getAttribute("datosConsultados");
            if (asiVO != null) {
        %>
        <form method="post" action="asignarServicio">
            <table>
                <tr>
                <style>
                    .aa{
                        border-radius: 10px; 
                    }
                </style>
                ID:<br>
                <input class="aa" type="text" name="id_Asignar" value="<%=asiVO.getId_Asignar()%>" readonly><br>
                <%-- Peluquero:<br>
                <input class="aa" type="text" name="id_Peluquero" value="<%=asiVO.getId_Peluquero()%>" readonly><br>
                Mascota:<br>
                <input class="aa" type="text" name="id_Mascota" value="<%=asiVO.getId_Mascota()%>" ><br>
                Servicio:<br>
                <input class="aa" type="text" name="id_Servicio" value="<%=asiVO.getId_Servicio()%>" readonly><br>
                --%>
                Peluquero:<br>
                <select class="aa" name="id_Peluquero" required>

                    <%
                        PeluqueroDAO peluDAO = new PeluqueroDAO();
                        for (PeluqueroVO peluVO : peluDAO.listar()) {

                    %>
                    <option value="<%=peluVO.getId_Peluquero()%>"><%=peluVO.getNombre()%></option>

                    <%}%>

                </select><br>

                Mascota:<br>
                <select class="aa" name="id_Mascota" required>

                    <%
                        MascotaDAO masDAO = new MascotaDAO();
                        for (MascotaVO masVO : masDAO.listar()) {

                    %>
                    <option value="<%=masVO.getId_Mascota()%>"><%=masVO.getNombre()%></option>

                    <%}%>

                </select><br>

                Servicio:<br>
                <select class="aa" name="id_Servicio" required>

                    <%
                        ServiciosDAO servDAO = new ServiciosDAO();
                        for (ServiciosVO servVO : servDAO.listar()) {

                    %>
                    <option value="<%=servVO.getId_Servicio()%>"><%=servVO.getNombre()%></option>

                    <%}%>

                </select><br>


            </table><br>
            <button class="btn btn-secondary">Actualizar</button>
            <input type="hidden" value="2" name="opcion">
        </form><br>
        <a href="asignarServicio.jsp">regresar</a>
        <%}%>
        <% if (request.getAttribute("mensajeError") != null) {%>
        ${mensajeError}     
        <% } else {%>
        ${mensajeExito}
        <%}%>

    </center>

</body>
</html>
