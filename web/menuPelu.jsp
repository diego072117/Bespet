<%-- 
    Document   : manuPelu
    Created on : 21/08/2022, 01:50:33 PM
    Author     : DIEGO
--%>

<%@page import="ModeloDAO.ServiciosDAO"%>
<%@page import="ModeloVO.ServiciosVO"%>
<%@page import="ModeloDAO.PeluqueroDAO"%>
<%@page import="ModeloVO.PeluqueroVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="ModeloVO.RolVO"%>
<%@page import="ModeloDAO.RolDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/x-icon" href="image/pata.png">
        <link href="css/tus_servicios.css" rel="stylesheet" type="text/css"/>
        <title>Dashboard</title>
    </head>

    <body>
        <%@include file="navadmin.jsp"%>

        <%            String id_usua = rolVO.getId_Rol();

            PeluqueroVO peluVO = new PeluqueroVO();

            PeluqueroDAO peluDAO = new PeluqueroDAO(peluVO);

            peluVO = peluDAO.consultarUsuPelu(id_usua);

            String id_pelu = peluVO.getId_Peluquero();


        %>




        <section class="home-section">
            <div class="text">Bienvenido Peluquero</div>
            <%--<input type="text" value="<%= id_pelu %>" style="margin-left: 100px"><br>--%>


            <!--=============== Blog ===============-->
            <section class="blog section container" id="blog">
                <h2 class="section__title">Nuestros Servicios_</h2>

                <div class="posts__container grid">


                    <%              ServiciosVO serVO = new ServiciosVO();
                        ServiciosDAO serDAO = new ServiciosDAO();
                        ArrayList<ServiciosVO> listaSer = serDAO.listar();
                        for (int i = 0; i < listaSer.size(); i++) {

                            serVO = listaSer.get(i);


                    %>


                    <div class="post__card">
                        <img src="image/<%= serVO.getImg()%>" alt="" class="post__img">

                        <div class="post__content">
                            <p class="post__date text-xs"><%= serVO.getId_Servicio()%></p>
                            <h3 class="post__title text-sm"><%= serVO.getNombre()%></h3>
                            <p class="post__description text-sm"><%= serVO.getPrecio()%></p>
                        </div>

                    </div>

                    <%}%>

                </div>
            </section>


        </section>




    </body>
</html>
