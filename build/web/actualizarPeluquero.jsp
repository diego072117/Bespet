<%-- 
    Document   : actualizarPeluquero
    Created on : 9/08/2022, 08:46:00 PM
    Author     : Nicolas
--%>

<%@page import="ModeloVO.PeluqueroVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />

        <link href="css/estilos_forms_actu.css" rel="stylesheet" type="text/css"/>
        <link rel="icon" type="image/x-icon" href="image/pata.png">
        <title>Actualizar Peluquero</title>
    </head>
    <body>
        <%@include file="navadmin.jsp"%>
        <section class="home-section"> 

            <h1>Actualizar Peluquero</h1>
            <div class="form-data">
                <div >
                    <a class="atras" href="Peluquero.jsp"><i class="fa-solid fa-angle-left"></i></a>
                </div>
                <center>

                    <%            PeluqueroVO peluVO = (PeluqueroVO) request.getAttribute("datosConsultados");
                        if (peluVO != null) {
                    %>
                    <form method="post" action="Peluquero">
                        <table>
                            <tr>
                           
                          
                            <input class="aa" type="hidden" name="id_Peluquero" value="<%=peluVO.getId_Peluquero()%>" readonly><br>
                            Nombre:<br>
                            <input class="aa" type="text" name="Nombre" value="<%=peluVO.getNombre()%>" readonly><br>
                            Apellido:<br>
                            <input class="aa" type="text" name="Apellido" value="<%=peluVO.getApellido()%>" readonly><br>
                            Telefono:<br>
                            <input class="aa" type="text" name="Telefono" value="<%=peluVO.getTelefono()%>"><br>
                            Direccion:<br>
                            <input class="aa" type="text" name="Direccion" value="<%=peluVO.getDireccion()%>" ><br>
                            Correo:<br>
                            <input class="aa" type="text" name="Correo" value="<%=peluVO.getCorreo()%>"><br>

                           
                            <input class="aa" type="hidden" name="Usuario" value="<%=peluVO.getId_Usuario()%>" readonly>

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