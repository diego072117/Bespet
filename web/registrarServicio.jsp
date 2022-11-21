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
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link href="css/estilos_form.css" rel="stylesheet" type="text/css"/>
        <link href="css/validaciones.css" rel="stylesheet" type="text/css"/>
        <title>Registro Servicios</title>
    </head>
    <body>
        <%@include file="navadmin.jsp"%>
        <div class="home-section">


            <h1 class="titulo1">Registro Servicio</h1>
            <div class="form-dataa">
                <div>
                    <a class="atras" href="servicios.jsp"><i class="fa-solid fa-angle-left"></i></a>
                </div>
                <center>
                    <img src="image/servicio.svg" class="gatuno6"/>
                    <div class="form" id="form">
                        <form method="post" action="Servicios">
                            <table>
                                <tr>
                                <div class="formulario__grupo" id="grupo__Nombre">
                                    <label class="peluq" for="Nombre">Nombre</label>
                                    <div class="formulario__grupo-input">
                                        <input type="text" class="formulario__input" name="Nombre" id="Nombre" placeholder="Nombre">
                                        <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                    </div>
                                    <p class="formulario__input-error">Error</p>
                                </div><br>
                                <div class="formulario__grupo" id="grupo__Precio">
                                    <label class="peluq" for="Precio">Precio</label>
                                    <div class="formulario__grupo-input">
                                        <input type="text" class="formulario__input" name="Precio" id="Precio" placeholder="Nombre">
                                        <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                    </div>
                                    <p class="formulario__input-error">Error</p>
                                </div>

                                <label class="peluq">Imagen</label>
                                <input type="file" name="img" required><br>



                                </tr>
                            </table>

                            <button class="btn" type="submit" >Registrar</button> 
                            <input type="hidden" value="1" name="opcion"><br>
                        </form><br>
                    </div>
                    <%            if (request.getAttribute("mensajeError") != null) { %>
                    ${mensajeError}

                    <%} else {%>
                    ${mensajeExito}
                    <%}%>
            </div>
        </center>
    </div>
    <script src="https://kit.fontawesome.com/2c36e9b7b1.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
    crossorigin="anonymous"></script>
    <script src="js/validaciones.js" type="text/javascript"></script>
</body>
</html>
