<%-- 
    Document   : GenerarPDF
    Created on : 11/11/2022, 11:12:33 PM
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
            File reporte = new File(application.getRealPath("Servicios.jasper"));
            Map<String,Object> parametros = new HashMap<String,Object>();
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
