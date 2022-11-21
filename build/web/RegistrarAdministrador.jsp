<%-- 
    Document   : RegistrarAdministrador
    Created on : 28/07/2022, 07:25:14 AM
    Author     : DIEGO
--%>

<%@page import="ModeloVO.UsuarioVO"%>
<%@page import="ModeloDAO.UsuarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link href="css/estilos_form.css" rel="stylesheet" type="text/css"/>
        <link href="css/validaciones.css" rel="stylesheet" type="text/css"/>
        <title>Registro Administrador</title>
    </head>
    <body>
        <%@include file="navadmin.jsp"%>
        <div class="home-section">
           
            <h1>Registro Administrador</h1>

            <div class="form-data">
                 <div>
                        <a class="atras" href="Administrador.jsp"><i class="fa-solid fa-angle-left"></i></a>
                    </div>
                <img src="image/admin.svg" class="gatuno"/>
                <center>
                    <div class="form" id="form">
                        <form method="post" action="Administrador" class="formulario" id="formulario">
                            <table>
                                <tr>
                                <div class="formulario__grupo" id="grupo__Nombre">
                                    <label class="peluq" for="nombre">Nombre</label>
                                    <div class="formulario__grupo-input">
                                        <input type="text" class="formulario__input" name="Nombre" id="textNombre" placeholder="Nombre" required="">
                                        <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                    </div>
                                </div>
                                <br>
                                <div class="formulario__grupo" id="grupo__Apellido">
                                    <label class="peluq" for="apellido">Apellido</label>
                                    <div class="formulario__grupo-input">
                                        <input type="text" class="formulario__input" name="Apellido" id="textApellido" placeholder="Apellido">
                                        <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                    </div>
                                </div>
                                <br>
                                <div class="formulario__grupo" id="grupo__Telefono">
                                    <label class="peluq" for="Telefono">Telefono</label>
                                    <div class="formulario__grupo-input">
                                        <input type="text" class="formulario__input" name="Telefono" id="Telefono" placeholder="Telefono">
                                        <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                    </div>
                                </div>
                                <br>
                                <div class="formulario__grupo" id="grupo__Direccion">
                                    <label class="peluq" for="Direccion">Dirección</label>
                                    <div class="formulario__grupo-input">
                                        <input type="text" class="formulario__input" name="Direccion" id="Direccion" placeholder="Dirección">
                                        <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                    </div>
                                </div>
                                <br>
                                <div class="formulario__grupo" id="grupo__Correo">
                                    <label class="peluq" for="Correo">Correo</label>
                                    <div class="formulario__grupo-input">
                                        <input type="text" class="formulario__input" name="Correo" id="Correo" placeholder="Correo">
                                        <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                    </div>
                                </div>
                                <br>
                                <div class="user">
                                    <label>Usuario:</label> <br>

                                    <div class="formulario__grupo" id="grupo__tipo_docu">
                                        <select class="form-select" name="Usuario">
                                            <option>Selección</option>
                                            <%                        UsuarioDAO usuDAO = new UsuarioDAO();
                                                for (UsuarioVO usuVO : usuDAO.listar()) {

                                            %>
                                            <option name="user" id="user" value="<%=usuVO.getId_Usuario()%>"><%=usuVO.getUsuario()%></option>
                                            <%}%>
                                        </select><br>
                                        <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                    </div>
                                </div>
                                </tr>
                            </table><br>
                            <button class="btn2" type="submit">Registrar</button> 
                            <input type="hidden" value="1" name="opcion">
                        </form><br>
                    </div>
                </center>
                <%
                    if (request.getAttribute("mensajeError") != null) { %>
                ${mensajeError}

                <%} else {%>
                ${mensajeExito}
                <%}%>
            </div>

            <script src="https://kit.fontawesome.com/2c36e9b7b1.js" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
                    integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
            crossorigin="anonymous"></script>
            <script src="js/validaciones.js" type="text/javascript"></script>
    </body>
</html>
