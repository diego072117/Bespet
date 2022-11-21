<%-- 
    Document   : RegistrarMascota
    Created on : 28/07/2022, 07:25:14 AM
    Author     : Edwin
--%>
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
        <title>Registro Mascota</title>
    </head>
    <body>
        <%@include file="navadmin.jsp"%>
        <div class="home-section">


            <h1>Registro Mascota</h1>
            <div class="form-data3">
                <div>
                    <a class="atras" href="Mascota.jsp"><i class="fa-solid fa-angle-left"></i></a>
                </div>
                <center>
                    <img src="image/mascota.svg" class="gatuno5"/>
                    <div class="form" id="form">
                        <form method="post" action="Mascota">
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
                                <div class="formulario__grupo" id="grupo__Edad">
                                    <label class="peluq" for="Edad">Edad</label>
                                    <div class="formulario__grupo-input">
                                        <input type="text" class="formulario__input" name="Edad" id="Edad" placeholder="Edad">
                                        <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                    </div>
                                    <p class="formulario__input-error">Error</p>
                                </div>
                                <br>
                                <div class="formulario__grupo" id="grupo__Tipo">
                                    <label class="peluq" for="Tipo">Tipo</label>
                                    <div class="formulario__grupo-input">
                                        <input type="text" class="formulario__input" name="Tipo" id="Tipo" placeholder="Tipo">
                                        <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                    </div>
                                    <p class="formulario__input-error">Error</p>
                                </div><br>
                                <div class="formulario__grupo" id="grupo__Raza">
                                    <label class="peluq" for="Raza">Raza</label>
                                    <div class="formulario__grupo-input">
                                        <input type="text" class="formulario__input" name="Raza" id="Raza" placeholder="Raza">
                                        <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                    </div>
                                    <p class="formulario__input-error">Error</p>
                                </div><br>
                                <label class="peluq">Dueño</label>
                                <select class="aa" name="id_cliente" required>
                                    <option>Seleccion</option>
                                    <%                        ClienteDAO clieDAO = new ClienteDAO();
                                        for (ClienteVO clieVO : clieDAO.listar()) {

                                    %>
                                    <option value="<%=clieVO.getId_cliente()%>"><%=clieVO.getNombres()%></option>

                                    <%}%>

                                </select><br>
                                </tr>
                            </table>
                            <button class="btn" type="submit">Registrar</button> 
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
