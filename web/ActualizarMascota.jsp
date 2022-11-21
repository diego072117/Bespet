<%-- 
    Document   : ActualizarMascota
    Created on : 4/09/2022, 05:38:12 PM
    Author     : Edwin
--%>

<%@page import="ModeloVO.MascotaVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />

        <link href="css/estilos_forms_actu.css" rel="stylesheet" type="text/css"/>
        <link rel="icon" type="image/x-icon" href="image/pata.png">
        <title>Actualizar mascota</title>
    </head>
    <body>

        <%@include file="navadmin.jsp"%>
        <section class="home-section">


            <h1>Actualizar mascota</h1>
            <div class="form-data">
                <div >
                    <a class="atras" href="Mascota.jsp"><i class="fa-solid fa-angle-left"></i></a>
                </div>
                <center>
                    <%            MascotaVO mascotaVO = (MascotaVO) request.getAttribute("datosConsultados");
                        if (mascotaVO != null) {
                    %>
                    <form method="post" action="Mascota">
                        <table>
                            <tr>
                           
                          
                            <input class="aa" type="hidden" name="id_Mascota" value="<%=mascotaVO.getId_Mascota()%>" readonly><br>
                            Nombre:<br>
                            <input class="aa" type="text" name="Nombre" value="<%=mascotaVO.getNombre()%>" readonly><br>
                            Edad:<br>
                            <input class="aa" type="text" name="Edad" value="<%=mascotaVO.getEdad()%>"><br>
                            Tipo:<br>
                            <input class="aa" type="text" name="Tipo" value="<%=mascotaVO.getTipo()%>"  readonly><br>
                            Raza:<br>
                            <input class="aa" type="text" name="Raza" value="<%=mascotaVO.getRaza()%>" readonly><br>

                      
                            <input class="aa" type="hidden" name="id_cliente" value="<%=mascotaVO.getId_cliente()%>" readonly>

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