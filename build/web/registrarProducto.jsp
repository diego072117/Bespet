<%-- 
    Document   : registrarProducto
    Created on : 21/09/2022, 06:20:18 PM
    Author     : DIEGO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link href="css/estilos_form.css" rel="stylesheet" type="text/css"/>
        <link href="css/validaciones.css" rel="stylesheet" type="text/css"/>
        <title>Registro Producto</title>
    </head>
    <body>
        <%@include file="navadmin.jsp"%>
        <div class="home-section">

            
                <h1>Registro Producto</h1>
                <div class="form-data4">
                    <div>
                        <a class="atras" href="Producto.jsp"><i class="fa-solid fa-angle-left"></i></a>
                    </div>
                    <center>
                    <img src="image/producto.svg" class="gatuno7"/>
                    <div class="form" id="form">
                        <form method="post" action="Producto">
                            <table>
                                <tr>
                                <div class="formulario__grupo" id="grupo__NombreProducto">
                                    <label class="peluq" for="NombreProducto">Nombre</label>
                                    <div class="formulario__grupo-input">
                                        <input type="text" class="formulario__input" name="NombreProducto" id="NombreProducto" placeholder="Nombre">
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
                                </div><br>
                                <label class="peluq">Imagen</label>
                                <input type="file" name="img" required><br>


                                </select><br>
                                </tr>
                            </table>
                            <button type="submit">Registrar</button> 
                            <input type="hidden" value="1" name="opcion"><br>

                        </form><br>
                    </div>
                    <%                        if (request.getAttribute("mensajeError") != null) { %>
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