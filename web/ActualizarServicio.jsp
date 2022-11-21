<%-- 
    Document   : ActualizarServicio
    Created on : 7/09/2022, 09:21:15 PM
    Author     : Edwin
--%>

<%@page import="ModeloVO.ServiciosVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/estilos_forms_actu.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />

        <link rel="icon" type="image/x-icon" href="image/pata.png">
        <title>Actualizar servicio</title>
    </head>
    <body>
        <%@include file="navadmin.jsp"%>
        <section class="home-section">

            <h1>Actualizar servicios</h1>
            <div class="form-data">
                 <div >
                    <a class="atras" href="servicios.jsp"><i class="fa-solid fa-angle-left"></i></a>
                </div>
                <center>
                    <%            ServiciosVO serviciosVO = (ServiciosVO) request.getAttribute("datosConsultados");
                        if (serviciosVO != null) {
                    %>
                    <form method="post" action="Servicios">
                        <table>
                            <tr>
                            <style>
                                .aa{
                                    border-radius: 10px; 
                                }
                            </style>
                       
                            <input class="aa" type="hidden" name="id_Servicio" value="<%=serviciosVO.getId_Servicio()%>" readonly><br>
                            Nombre:<br>
                            <input class="aa" type="text" name="Nombre" value="<%=serviciosVO.getNombre()%>" readonly><br>
                            Precio:<br>
                            <input class="aa" type="text" name="Precio" value="<%=serviciosVO.getPrecio()%>"><br>
                          
                            <input class="aa" type="hidden" name="img" value="<%= serviciosVO.getImg() %>" readonly=""><br>



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
