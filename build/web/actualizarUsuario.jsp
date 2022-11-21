<%-- 
    Document   : ActualizarUsuario
    Created on : 14/08/2022, 01:34:25 PM
    Author     : DIEGO
--%>

<%@page import="ModeloVO.UsuarioVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/x-icon" href="image/pata.png">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />

        <link href="css/estilos_forms_actu.css" rel="stylesheet" type="text/css"/>
        <title>Actualizar Usuarios</title>
    </head>
    <body>

        <%@include file="navadmin.jsp"%>
        <section class="home-section">


            <h1>Actualizar usuario</h1>
            <div class="form-data">
                <div >
                    <a class="atras" href="Usuarios.jsp"><i class="fa-solid fa-angle-left"></i></a>
                </div>
                <center>
                    <%            UsuarioVO usuVO = (UsuarioVO) request.getAttribute("datosConsultados");
                        if (usuVO != null) {
                    %>
                    <form method="post" action="Usuario">
                        <table>
                            <tr>
                            <style>
                                .aa{
                                    border-radius: 10px; 
                                }
                            </style>
                           
                            <input class="aa" type="hidden" name="id_Usuario" value="<%=usuVO.getId_Usuario()%>" readonly=""><br>
                            Usuario:<br>
                            <input class="aa" type="text" name="Correo" value="<%=usuVO.getUsuario()%>"><br>
                            
                            <input class="aa" type="hidden" name="textClave" value="<%=usuVO.getPassword()%>" readonly="">



                        </table>
                        <button class="btn btn-secondary">Actualizar</button>
                        <input type="hidden" value="2" name="opcion">
                    </form><br>


                    <%}%>
                    <% if (request.getAttribute("mensajeError") != null) {%>
                    ${mensajeError}     
                    <% } else {%>
                    ${mensajeExito}
                    <%}%>

                </center>
            </div>
        </section>
    </body>
</html>
