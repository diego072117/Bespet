<%-- 
    Document   : registrarUsuario
    Created on : 23/07/2022, 03:05:22 PM
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
        <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
        <link href="https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap5.min.css" rel="stylesheet" />
        <title>Registro Usuario</title>
    </head>
    <body>
        <%@include file="navadmin.jsp"%>
        <div class="home-section">

           
                <h1 class="titulo1">Registro Usuario</h1>
                <div class="form-dataa">
                    <div>
                        <a class="atras" href="Usuarios.jsp"><i class="fa-solid fa-angle-left"></i></a>
                    </div>
                     <center>
                    <img src="image/usuario.svg" class="gatuno2"/>
                    <div class="form" id="form">
                        <form method="post" action="Usuario">
                            <table>
                                <tr>
                                <div class="formulario__grupo" id="grupo__Correo">
                                    <label class="peluq" for="usuario" class="formulario__label">Usuario</label>
                                    <div class="formulario__grupo-input">
                                        <input type="email" class="formulario__input" name="Correo" id="Correo" placeholder="Usuario">
                                        <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                    </div>
                                    <p class="formulario__input-error">Correo no valido</p>
                                </div>



                                <div class="formulario__grupo" id="grupo__textClave">
                                    <label class="peluq" for="usuario" class="formulario__label">Contraseña</label>
                                    <div class="formulario__grupo-input">
                                        <input type="password" class="formulario__input" name="textClave" id="textClave" placeholder="Contraseña">
                                        <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                    </div>
                                    <p class="formulario__input-error">Debe ser más extensa</p>
                                </div>
                                <!--<label class="usur">Usuario:</label>                              
                                <input type="text" name="textUsuario" required placeholder="Usuario"> <br>
                                <label class="contra">Contraseña:</label>
                                <input type="password" name="textClave" required placeholder="Contraseña"><br>-->
                                </tr>
                            </table>
                            <button class="btn" type="submit">Registrar</button>
                            <input type="hidden" value="1" name="opcion">

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
        <script src="js/script-dash.js" type="text/javascript"></script>
        <script src="https://kit.fontawesome.com/2c36e9b7b1.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
        crossorigin="anonymous"></script>
        <script src="js/validaciones.js"></script>
    </body>
</html>
