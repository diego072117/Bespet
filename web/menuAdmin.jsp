<%-- 
    Document   : menuAdmin
    Created on : 21/08/2022, 01:50:17 PM
    Author     : DIEGO
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="ModeloDAO.RolDAO"%>
<%@page import="ModeloVO.RolVO"%>
<%@page import="ModeloVO.UsuarioVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="sesion.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">

    </head>
    <body>
        
         <center>
        <h1> Menu Administrador</h1>
        <h1>Rol</h1>

      <form method="post" action="Sesiones">
              <input type="submit" value="Cerrar Sesion" >
       </form>
        
        
    
        <a href="Administrador.jsp">Administradores</a><br>
        <a href="Usuarios.jsp">Usuarios</a><br>
        <a href="Peluquero.jsp">Peluqueros</a><br>
        <a href="Cliente.jsp">Cliente</a><br>
        <a href="Producto.jsp">Productos</a><br>
        <a href="Mascota.jsp">Mascotas</a><br>
        <a href="servicios.jsp">Servicios</a><br>
    </center>
        
     
       
    </body>
</html>
