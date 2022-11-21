<%-- 
    Document   : actualizarCliente
    Created on : 7/09/2022, 11:48:38 PM
    Author     : DIEGO
--%>

<%@page import="ModeloVO.ClienteVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />

        <link href="css/estilos_forms_actu.css" rel="stylesheet" type="text/css"/>
        <link rel="icon" type="image/x-icon" href="image/pata.png">
        <title>Actualizar Cliente</title>
    </head>
    <body>
        <%@include file="navadmin.jsp"%>
        <section class="home-section">

            <h1>actualizar Cliente</h1>
            <div class="form-data">
                <div >
                    <a class="atras" href="Cliente.jsp"><i class="fa-solid fa-angle-left"></i></a>
                </div>
                <center>
                    <%            ClienteVO clieVO = (ClienteVO) request.getAttribute("datosConsultados");
                        if (clieVO != null) {
                    %>
                    <form method="post" action="Cliente">
                        <table>
                            <tr>
                           
                      
                            <input class="aa" type="hidden" name="id_cliente" value="<%=clieVO.getId_cliente()%>" readonly><br>
                            Nombre:<br>
                            <input class="aa" type="text" name="Nombres" value="<%=clieVO.getNombres()%>" readonly><br>
                            Apellido:<br>
                            <input class="aa" type="text" name="apellidos" value="<%=clieVO.getApellidos()%>" readonly><br>
                            Avatar:<br>
                            <input class="aa" type="text" name="avatar" value="<%=clieVO.getAvatar()%>" readonly><br>
                                Telefono:<br>
                            <input class="aa" type="text" name="telefono" value="<%=clieVO.getTelefono()%>"><br>
                            Correo:<br>
                            <input class="aa" type="text" name="correo" value="<%=clieVO.getCorreo()%>"><br>
                            
                            <input class="aa" type="hidden" name="id_Usuario" value="<%=clieVO.getId_Usuario()%>" readonly="">


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