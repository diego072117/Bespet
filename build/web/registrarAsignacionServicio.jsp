<%-- 
    Document   : registrarAsignacionServicio
    Created on : 28/10/2022, 05:29:40 PM
    Author     : DIEGO
--%>

<%@page import="ModeloVO.ClienteVO"%>
<%@page import="ModeloDAO.ClienteDAO"%>
<%@page import="ModeloVO.ServiciosVO"%>
<%@page import="ModeloDAO.ServiciosDAO"%>
<%@page import="ModeloVO.PeluqueroVO"%>
<%@page import="ModeloDAO.PeluqueroDAO"%>
<%@page import="ModeloVO.MascotaVO"%>
<%@page import="ModeloDAO.MascotaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
             <link rel="icon" type="image/x-icon" href="image/pata.png">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <h1>Asigna un servicio</h1>





      <%-- <form method="post" action="asignarServicio">
            Cuantos servicios desea asignar:<br>
            <input type="number" name="numerito" >
            <button class="btn btn-secondary btn-sm">Registrar</button> 
            <input type="hidden" value="5" name="opcion">
        </form>--%>
        <%--
        <%
         
          String numerito = request.getParameter("numerito");
      
         int cantidad = 2;
         
             
        %> 
--%>
        <%--<p>numerito: <%= numerito %></p>--%>

        <%            
           for (int i = 0; i < 1; i++) {


        %>
        <form method="post" action="asignarServicio">
            Peluquero:<br>
            <select class="aa" name="id_Peluquero" required>
                <option>Seleccion</option>
                <%                        PeluqueroDAO peluDAO = new PeluqueroDAO();
                    for (PeluqueroVO peluVO : peluDAO.listar()) {

                %>
                <option value="<%=peluVO.getId_Peluquero()%>"><%=peluVO.getNombre()%></option>

                <%}%>

            </select><br>

            Mascota:<br>
            <select class="aa" name="id_Mascota" required>
                <option>Seleccion</option>
                <%
                    MascotaDAO masDAO = new MascotaDAO();
                    for (MascotaVO masVO : masDAO.listar()) {

                %>
                <option value="<%=masVO.getId_Mascota()%>"><%=masVO.getNombre()%></option>

                <%}%>

            </select><br>

            Servicio:<br>
            <select class="aa" name="id_Servicio" required>
                <option>Seleccion</option>
                <%
                    ServiciosDAO servDAO = new ServiciosDAO();
                    for (ServiciosVO servVO : servDAO.listar()) {

                %>
                <option value="<%=servVO.getId_Servicio()%>"><%=servVO.getNombre()%></option>

                <%}%>

            </select><br>
           <%}
            %>


            <br>

            <form method="post" action="asignarServicio">
                
                <button class="btn btn-secondary btn-sm">Registrar</button> 
                <input type="hidden" value="1" name="opcion">
            </form>
             
        </form><br>
        
       


        <%
            if (request.getAttribute("mensajeError") != null) { %>
        ${mensajeError}

        <%} else {%>
        ${mensajeExito}
        <%}%>


        <a href="asignarServicio.jsp">Volver<a

                </center>

</body>
</html>