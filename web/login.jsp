<%-- 
    Document   : index
    Created on : 21/08/2022, 03:22:10 PM
    Author     : DIEGO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/x-icon" href="image/pata.png">
        <title>Iniciar sesion</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">

    </head>
    <body>
        <nav class="navbar navbar-expand-lg bg-light">
            <div class="container-fluid">
                <a class="navbar-brand" href="menu.jsp">Inicio</a>
                <figure class="text-center">
                    <blockquote class="blockquote">
                        <p>Bienvenido</p>
                    </blockquote>
                    <figcaption class="blockquote-footer">
                        Por favor <cite title="Source Title">Inicie Sesion</cite>
                    </figcaption>
                </figure>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                </ul>
                <form class="d-flex" role="search">
                    <button class="btn btn-outline-success" type="submit"> <a class="navbar-brand" href="registrarUsuario.jsp">registrarse</a></button>
                </form>
            </div>
        </div>
    </nav>
<center>
    <form method="post" action="Usuario">
        <table>
            <tr>
                Usuario:<br>
            <input class="form-label" type="text" name="textUsuario"><br>
            Contraseña:<br>
            <input class="form-label" type="password" name="textClave"><br>
            </tr>
        </table><br>
        <button class="btn btn-secondary btn-sm">Iniciar</button> 
        <input type="hidden" value="4" name="opcion">
    </form><br>

    <%
        if (request.getAttribute("mensajeError") != null) { %>
    <div class="alert alert-danger" role="alert">
        ${mensajeError}
    </div>


    <%} else {%>
    ${mensajeExito}
    <%}%>

</center>
</body>
</html>
