<%-- 
    Document   : recuperarContraseña
    Created on : 20/11/2022, 08:52:31 PM
    Author     : DIEGO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <link href="css/main.css" rel="stylesheet" type="text/css"/>
        <link href="css/util.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="limiter">
            <div class="container-login100">
                <div class="wrap-login100">
                    <div class="login100-pic js-tilt" data-tilt>
                        <img src="image/poyo.svg" alt="IMG">
                    </div>

                    <form class="login100-form validate-form" method="post" action="Usuario">
                        <div class="header">
                            <img src="image/p.png" alt="icon">
                            <span class="login100-form-title">
                                Recupera tu contraseña 
                            </span>
                        </div>

                     
                            <div class="wrap-input100 validate-input" >
                                <input class="input100" type="text" name="Correo" placeholder="Correo electronico">
                                <span class="focus-input100"></span>
                                <span class="symbol-input100">
                                    <i class="fa fa-envelope" aria-hidden="true"></i>
                                </span>
                            </div>

                          

                            <div class="container-login100-form-btn">
                                <button class="login100-form-btn" type="submit">Recuperar</button>
                                <input type="hidden" value="9" name="opcion">
                            </div>
                       
                        <div class="text-center p-t-136">
                            <a class="txt2" href="index.jsp">
                                Iniciar Sesion
                                <i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
                            </a>
                        </div>
                        
                     

 <%            if (request.getAttribute("mensajeError") != null) { %>
                    ${mensajeError}

                    <%} else {%>
                    ${mensajeExito}
                    <%}%>
                        
                    </form>
                </div>
            </div>
        </div>
        
         


    </body>
</html>

