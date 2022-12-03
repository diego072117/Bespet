<%-- 
    Document   : GenerarPDFasignarServicios
    Created on : 15/11/2022, 07:47:30 AM
    Author     : nicov
--%>

<%@page import="Util.ConexionBd"%>
<%@page import="java.sql.Connection"%>
<%@page import="net.sf.jasperreports.engine.JasperRunManager"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
            File reporte = new File(application.getRealPath("asignarServiciosTerminados.jasper"));
            Map<String,Object> parametros = new HashMap<String,Object>();
            String peluquero = request.getParameter("peluquero");
            parametros.put("peluquero", new String(peluquero));
            String estado = request.getParameter("estado");
            parametros.put("estado", new String(estado));
            ConexionBd conexionbd = new ConexionBd();
            Connection conexion = conexionbd.obtenerConexion();
            byte[] bytes = JasperRunManager.runReportToPdf(reporte.getPath(), parametros, conexion);
            response.setContentType("application/pdf");
            response.setContentLength(bytes.length);
            ServletOutputStream salida = response.getOutputStream();
            salida.write(bytes,0,bytes.length);
            salida.flush();
            salida.close();
        %>
        
    </body>
</html>
