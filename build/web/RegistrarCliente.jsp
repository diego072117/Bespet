<%-- 
    Document   : RegistrarAdministrador
    Created on : 28/07/2022, 07:25:14 AM
    Author     : DIEGO
--%>

<%@page import="ModeloVO.UsuarioVO"%>
<%@page import="ModeloDAO.UsuarioDAO"%>
<%@page import="ModeloVO.ClienteVO"%>
<%@page import="ModeloDAO.ClienteDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link href="css/estilos_form.css" rel="stylesheet" type="text/css"/>
        <link href="css/validaciones.css" rel="stylesheet" type="text/css"/>
        <title>Registro Cliente</title>
    </head>
    <body>
        <%@include file="navadmin.jsp"%>
        <div class="home-section">
            
            
                <h1>Registro Cliente</h1>
                <div class="form-data3">
                    <div>
                <a class="atras" href="Cliente.jsp"><i class="fa-solid fa-angle-left"></i></a>
            </div>
                    <center>
                    <img src="image/cliente.svg" class="gatuno4"/>
                    <div class="form" id="form">
                        <form method="post" action="Cliente">
                            <table>
                                <tr>
                                <div class="formulario__grupo" id="grupo__Nombres">
                                    <label class="peluq" for="Nombres">Nombre</label>
                                    <div class="formulario__grupo-input">
                                        <input type="text" class="formulario__input" name="Nombres" id="Nombres" placeholder="Nombre">
                                        <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                    </div>
                                </div><br>
                                <div class="formulario__grupo" id="grupo__apellidos">
                                    <label class="peluq" for="apellidos">Apellido</label>
                                    <div class="formulario__grupo-input">
                                        <input type="text" class="formulario__input" name="apellidos" id="apellidos" placeholder="Apellido">
                                        <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                    </div>
                                </div><br>
                                <div class="formulario__grupo" id="grupo__telefono">
                                    <label class="peluq" for="telefono">Telefono</label>
                                    <div class="formulario__grupo-input">
                                        <input type="text" class="formulario__input" name="telefono" id="telefono" placeholder="Telefono">
                                        <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                    </div>
                                </div><br>
                                <div class="formulario__grupo" id="grupo__correo">
                                    <label class="peluq" for="correo">Correo</label>
                                    <div class="formulario__grupo-input">
                                        <input type="text" class="formulario__input" name="correo" id="correo" placeholder="Correo">
                                        <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                    </div>
                                </div><br>
                                <%--avatar:<br>
                               <input type="text" name="avatar" required><br>--%>

                                <label class="peluq">Avatar:</label>
                                <select name="avatar" required>
                                    <option value="secava" selected>Seleccione un avatar</option>
                                    <option  value="avatar1.jpg" >Avatar 1</option>
                                    <option  value="avatar2.jpg">Avatar 2</option>
                                </select><br>



                                <label class="peluq">Usuario:</label>
                                <select class="aa" name="id_Usuario" required>
                                    <option>Seleccion</option>
                                    <%                        UsuarioDAO usuDAO = new UsuarioDAO();
                                        for (UsuarioVO usuVO : usuDAO.listar()) {

                                    %>
                                    <option value="<%=usuVO.getId_Usuario()%>"><%=usuVO.getUsuario()%></option>

                                    <%}%>

                                </select><br>

                                </tr>
                            </table><br>
                            <button type="submit">Registrar</button> 
                            <input type="hidden" value="1" name="opcion">
                        </form><br>
                    </div>
                    <%
                        if (request.getAttribute("mensajeError") != null) { %>
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
