<%-- 
    Document   : sesion
    Created on : 21/08/2022, 03:15:44 PM
    Author     : DIEGO
--%>

<%@page import="ModeloVO.UsuarioVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
       
         <%
        response.setHeader("pragma", "No-cache");
        response.setHeader("Cache-control", "no-cache,no-store,must-revalidate");
        response.setDateHeader("Expires", 0);


    %>
    
    
    <%           
        HttpSession miSesion = (HttpSession) request.getSession();
        String Usuario = "";
        
        if (miSesion.getAttribute("datosUsuario") == null) {
            request.getRequestDispatcher("index.jsp").forward(request, response);
        } else {
            UsuarioVO usuVO = (UsuarioVO) miSesion.getAttribute("datosUsuario");
            Usuario = usuVO.getUsuario();
        }
    %>
    <body>

    <figure class="text-center">
        <blockquote class="blockquote">
            <p>Bienvenido <%=Usuario%></p>
        </blockquote>
    </figure>
      
    </body>
</html>
