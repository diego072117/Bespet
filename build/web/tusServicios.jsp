<%-- 
    Document   : tusServicios
    Created on : 28/10/2022, 03:11:13 PM
    Author     : DIEGO
--%>


<%@page import="ModeloDAO.ServiciosDAO"%>
<%@page import="ModeloVO.ServiciosVO"%>
<%@page import="ModeloDAO.asignarServicioDAO"%>
<%@page import="ModeloVO.asignarServicioVO"%>
<%@page import="ModeloDAO.MascotaDAO"%>
<%@page import="ModeloVO.MascotaVO"%>
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

        <!--=============== Remixicons ===============-->
        <link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet" />

        <!--=============== Swiper Css ===============-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css" />

        <!--=============== Css ===============-->
        <link href="css/servis.css" rel="stylesheet" type="text/css"/>
        <link href="css/skins/color-1.css" rel="stylesheet" type="text/css"/>



        <title>Tus Servicios</title>
    </head>

    <body>
        <%@include file="navadmin.jsp"%>

        <%            String id_usua = rolVO.getId_Rol();

            PeluqueroVO peluVO = new PeluqueroVO();

            PeluqueroDAO peluDAO = new PeluqueroDAO(peluVO);

            peluVO = peluDAO.consultarUsuPelu(id_usua);

            String id_pelu = peluVO.getId_Peluquero();

            MascotaVO masVO = new MascotaVO();


        %>

        <section class="home-section">
            <%--<input type="text" value="<%= id_pelu%>"><br>--%>

            <!--=============== Main ===============-->
            <main class="main">

                <!--=============== Blog ===============-->
                <section class="blog section container" id="blog">
                    <h2 class="section__title">Tus Servicios_</h2>

                    <div class="posts__container grid">

                        <%                            asignarServicioVO asiVO = new asignarServicioVO();
                            asignarServicioDAO asiDAO = new asignarServicioDAO();

                            ArrayList<asignarServicioVO> listarServicios = asiDAO.listarServicios(id_pelu);
                            for (int i = 0; i < listarServicios.size(); i++) {

                                asiVO = listarServicios.get(i);

                        %>

                        <div class="post__card">





                            <div class="post__content">
                                <p class="post__date text-xs">Numero de servicio: <%=asiVO.getId_Asignar()%></p>

                                <h3 class="post__title text-sm"></h3>
                                <h3 class="post__title text-sm"><%= peluVO.getNombre()%></h3>
                                <h3 class="post__title text-sm">Mascota:<%= asiVO.getId_Mascota()%></h3>
                                <h3 class="post__title text-sm">Servicio:<%=asiVO.getId_Servicio()%></h3>
                                <p class="post__description text-sm"></p>
                                <a href="asignarServicio?opcion=4&id_Asignar=<%= asiVO.getId_Asignar()%>" class="button button--flex text-sm">Terminado</a>
                            </div>

                        </div>


                        <%}%>

                    </div>
                </section>




            </main>

        </section>

        <!--=============== Mixitup ===============-->
        <script src="./js/mixitup.min.js"></script>

        <!--=============== Swiper Js ===============-->
        <script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>

        <!--=============== Email Js ===============-->
        <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/@emailjs/browser@3/dist/email.min.js"></script>

        <!--=============== Js ===============-->
        <script src="./js/main.js"></script>

        <!--=============== Common ===============-->
        <script src="./js/common.js"></script>
    </body>
</html>

