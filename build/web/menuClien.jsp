<%-- 
    Document   : manuPelu
    Created on : 21/08/2022, 01:50:33 PM
    Author     : DIEGO

--%>

<%@page import="ModeloDAO.ProductoDAO"%>
<%@page import="ModeloVO.ProductoVO"%>
<%@page import="ModeloDAO.ServiciosDAO"%>
<%@page import="ModeloVO.ServiciosVO"%>
<%@page import="ModeloDAO.MascotaDAO"%>
<%@page import="ModeloVO.MascotaVO"%>
<%@page import="ModeloVO.ClienteVO"%>
<%@page import="ModeloDAO.ClienteDAO"%>
<%@page import="ModeloVO.RolVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="ModeloDAO.RolDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="sesion.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


        <!--=============== Remixicons ===============-->
        <link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet" />

        <!--=============== Swiper Css ===============-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css" />
        <link href="css/clientee.css" rel="stylesheet" type="text/css"/>
        <!--=============== Css ===============-->
        <link href="css/skins/color1.css" rel="stylesheet" type="text/css"/>
    

        <!--=============== Skin Colors ===============-->
       
        <link href="css/skins/color1.css" rel="stylesheet" type="text/css" class="alternate-style" title="color-1" disabled/>
        <link rel="stylesheet" href="./css/skins/color-2.css" class="alternate-style" title="color-2" disabled />
        
        <link rel="icon" type="image/x-icon" href="image/pata.png">
        <title>Cliente | Bespet</title>
        
    </head>

    <body>

        <%            RolDAO rolDAO = new RolDAO();
            RolVO rolVO = new RolVO();

            ArrayList<RolVO> listaRol = rolDAO.listar(Usuario);
            for (int i = 0; i < listaRol.size(); i++) {

                rolVO = listaRol.get(i);
            }
            String id_usua = rolVO.getId_Rol();

            ClienteVO clieVO = new ClienteVO();

            ClienteDAO clieDAO = new ClienteDAO(clieVO);

            clieVO = clieDAO.consultarUsuCliente(id_usua);

            String id_clie = clieVO.getId_cliente();


        %>


        <%-- 
         MascotaVO masVO = new MascotaVO();

            MascotaDAO masDAO = new MascotaDAO(masVO);

            masVO = clieDAO.consultarMascota(id_clie);

            String id_mas = masVO.getNombre();--%>


        <!--=============== Header ===============-->
        <header class="header" id="header">
            <nav class="nav container">
                <div class="nav__menu" id="nav-menu">
                    <ul class="nav__list">
                        <li>
                            <a href="#home" class="nav__link active-link">Inicio</a>
                        </li>
                      
                        <li>
                            <a href="#portfolio" class="nav__link">Galeria</a>
                        </li>

                        <li>
                            <a href="#blog" class="nav__link">Productos</a>
                        </li>

                        <li>
                            <a href="#contact" class="nav__link">Contacto</a>
                        </li>



                        <li>

                            <form method="post" action="Sesiones">
                                <input type="submit" class="nav__link" value="Cerrar Sesion" >
                            </form>

                        </li>

                    </ul>

                    <div class="nav__close" id="nav-close">
                        <i class="ri-close-fill"></i>
                    </div>
                </div>

                <div class="nav__toggle" id="nav-toggle">
                    <i class="ri-menu-fill"></i>
                </div>
            </nav>
        </header>


        <!--=============== Main ===============-->
        <main class="main">
            <!--=============== Home ===============-->
            <section class="home" id="home">
                <div class="home__container container grid">
                    <img src="./avatares/<%= clieVO.getAvatar()%>" alt="" class="home__img">

                    <div class="home__data">
                        <h1 class="home__name"><%= clieVO.getNombres()%> <%= clieVO.getApellidos()%>_</h1>
                        <p class="home__work">Bienvenido</p>
                        <dl class="home__list">
                            <dt>PHONE:</dt>
                            <dd>+57 <%= clieVO.getTelefono()%></dd>
                            <dt>EMAIL:</dt>
                            <dd><%= clieVO.getCorreo()%></dd>
                         
                        </dl>
                        <div class="home__socials">

                            <a href="https://www.facebook.com/" target="_blank" class="home__social-link">
                                <i class="ri-facebook-box-fill"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </section>

            <!--=============== Hello ===============-->
            <section class="hello section container">
                <h2 class="section__title">Bienvenido a Bespet</h2>

                <p class="hello__details text-lg">
                    En esta pagina podras ver nuestro productos y servicios que ofrecemos para el cuidado de tu mascota.
                </p>
                
            </section>

            <!--=============== servicios ===============-->
            <%-- <section class="services section container" id="services">
                 <h2 class="section__title">Nuestros Servicios_</h2>

                <div class="services__container grid">

                    <%
                        ServiciosVO servVO = new ServiciosVO();
                        ServiciosDAO servDAO = new ServiciosDAO();
                        ArrayList<ServiciosVO> listaServ = servDAO.listar();
                        for (int i = 0; i < listaServ.size(); i++) {

                            servVO = listaServ.get(i);


                    %>

                    <div class="services__item">
                        <div class="icon__box">
                            <img src="./image/baidu-line.png" alt="" class="services__icon">
                            <div class="services__dot">
                                <span class="dot"></span>
                            </div>
                        </div>
                        <h3 class="services__title text-lg"><%=servVO.getNombre()%></h3>
                        <p class="services__detail">
                            <%=servVO.getPrecio()%>
                        </p>
                    </div>
                    <%}%>

                </div>
            </section>--%>

            <!--=============== Blog ===============-->
            <section class="blog section container" id="blog">
                <h2 class="section__title">Productos_</h2>

                <div class="posts__container grid">

                    <%
                        ProductoVO prodVO = new ProductoVO();
                        ProductoDAO prodDAO = new ProductoDAO();
                        ArrayList<ProductoVO> listaProd = prodDAO.listar();
                        for (int i = 0; i < listaProd.size(); i++) {

                            prodVO = listaProd.get(i);


                    %>

                    <div class="post__card">
                        <img src="./image/<%=prodVO.getImg()%>" alt="" class="post__img">

                        <div class="post__content">
                            <p class="post__date text-xs"> $<%=prodVO.getPrecio()%> </p>
                            <h3 class="post__title text-sm"><%=prodVO.getNombre()%></h3>
                            <p class="post__description text-sm"></p>
                        </div>

                    </div>


                    <%}%>


                </div>
            </section>


<%--
            <!--=============== Projects ===============-->
            <section class="work section container" id="portfolio">
                <h2 class="section__title">Work_</h2>

                <div class="project__categories">
                    <button class="category__btn text-xs active-work" data-filter="all">ALL</button>
                    <button class="category__btn text-xs" data-filter=".app">MOBILE</button>
                    <button class="category__btn text-xs" data-filter=".web">WEB-SITES</button>
                    <button class="category__btn text-xs" data-filter=".landing">LANDING PAGES</button>
                </div>

                <div class="projects__container grid">

                    <div class="project__item grid mix app">
                        <img src="./image/project-1.png" alt="" class="project__img">

                        <div class="project__data">
                            <h3 class="project__title text-lg">SISTEMA DE INFORMACION FORTUNE</h3>
                            <p class="project__description">
                                Sistema para la gestion del conjunto residencial fortune, 
                                este sistema cuenta con distintas funcionalidades desde la CRUD 
                                la visualizacion de novedades y la validacion de usuarios.

                            </p>
                            <h4 class="projects__stack text-xs">USED STACK:</h4>
                            <ul class="tags text-sm">
                                <li>html5</li>
                                <li>css3</li>
                                <li>PHP</li>
                                <li>Bootstrap</li>
                            </ul>

                            <a href="" class="project__link text-sm">www.superapp.com</a>
                        </div>
                    </div>

                    <div class="project__item grid mix web">
                        <img src="./image/Bespet.PNG" alt="" class="project__img">

                        <div class="project__data">
                            <h3 class="project__title text-lg">SISTEMA DE INFORMACION BESPET</h3>
                            <p class="project__description">
                                Sistema para la gestion de la peluqueria canina titanes peludos, 
                                este sistema cuenta con distintas funcionalidades desde la CRUD, 
                                la visualizacion de productos y la validacion de usuarios por rol.
                            </p>
                            <h4 class="projects__stack text-xs">USED STACK:</h4>
                            <ul class="tags text-sm">
                                <li>html5</li>
                                <li>css3</li>
                                <li>JavaScript</li>
                                <li>Java</li>
                                <li>Bootstrap</li>
                                <li>Mysql</li>
                            </ul>

                            <a href="" class="project__link text-sm">www.superapp.com</a>
                        </div>
                    </div>

                    <div class="project__item grid mix landing">
                        <img src="./image/DashReact.PNG" alt="" class="project__img">

                        <div class="project__data">
                            <h3 class="project__title text-lg">REACT PROJECT</h3>
                            <p class="project__description">
                                Esta pagina cuenta con funcionalidad CRUD, 
                                conexion API, Rutas y Validacion.
                            </p>
                            <h4 class="projects__stack text-xs">USED STACK:</h4>
                            <ul class="tags text-sm">
                                <li>html5</li>
                                <li>css3</li>
                                <li>JavaScript</li>
                                <li>React</li>
                                <li>Node</li>
                                <li>sweet alert 2</li>
                            </ul>

                            <a href="" class="project__link text-sm">www.superapp.com</a>
                        </div>
                    </div>


                </div>
            </section>

            <!--=============== Testimonials ===============-->
            <section class="testimonials section">
                <div class="testimonial__bg">
                    <div class="testimonial__icon">
                        <i class="ri-double-quotes-r"></i>
                    </div>

                    <div class="swiper testimonial__container container">
                        <div class="swiper-wrapper">

                            <div class="swiper-slide testimonial__item">
                                <h3 class="author__name text-lg">Anhy Pinilla</h3>
                                <p class="author__project">Recomendación</p>
                                <div class="ruler"></div>

                                <p class="testimonial__description text-lg">
                                    Me permito recomendar a Diego Alexander Parra Calderón, a quien tengo 
                                    4 años de conocer, y puedo dar fe de su calidad como persona,debido a que se trata de alguien 
                                    respetuoso, honesto y muy trabajador.
                                </p>
                            </div>

                            <div class="swiper-slide testimonial__item">
                                <h3 class="author__name text-lg">Johan Avendaño</h3>
                                <p class="author__project">Recomendación</p>
                                <div class="ruler"></div>
                                <p class="testimonial__description text-lg">
                                    Me permito recomentar a Diego Alexander Parra Calderón, 
                                    a quien conosco hace 10 años, es una persona luchadora trabajadora, 
                                    con ganas de salir adelante y buena persona.
                                    Este tiene un alto desempeño en sus skills tecnicas y sus skills blandas.
                                </p>
                            </div>

                            <div class="swiper-slide testimonial__item">
                                <h3 class="author__name text-lg">Kevin Torres</h3>
                                <p class="author__project">Recomendación</p>
                                <div class="ruler"></div>

                                <p class="testimonial__description text-lg">
                                    Alto desempeño en todos los hambitos laborales y personales.
                                    guapo e inteligente 
                                </p>

                            </div>

                        </div>

                        <div class="swiper-button-next">
                            <img src="./image/arrow-next.svg" alt="">
                        </div>
                        <div class="swiper-button-prev">
                            <img src="./image/arrow-prev.svg" alt="">
                        </div>
                        <div class="swiper-pagination"></div>

                    </div>
                </div>
            </section>

            <!--=============== Blog ===============-->
            <section class="blog section container" id="blog">
                <h2 class="section__title">Latest Posts_</h2>

                <div class="posts__container grid">

                    <div class="post__card">
                        <img src="./image/blog-1.png" alt="" class="post__img">

                        <div class="post__content">
                            <p class="post__date text-xs">October 22, 2017</p>
                            <h3 class="post__title text-sm">HOW TO USE CSS-PREPROCESSOR</h3>
                            <p class="post__description text-sm">
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit,
                                sed
                                do eiusmod tempr incididu...
                            </p>
                        </div>

                    </div>

                    <div class="post__card">
                        <img src="./image/blog-2.png" alt="" class="post__img">

                        <div class="post__content">
                            <p class="post__date text-xs">October 22, 2017</p>
                            <h3 class="post__title text-sm">HOW I ORGANIZE MY WORK WITH CODE</h3>
                            <p class="post__description text-sm">
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit,
                                sed
                                do eiusmod tempr incididu...
                            </p>
                        </div>

                    </div>

                    <div class="post__card">
                        <img src="./image/blog-3.png" alt="" class="post__img">

                        <div class="post__content">
                            <p class="post__date text-xs">October 22, 2017</p>
                            <h3 class="post__title text-sm">SVG SPRITES VS ICON FONT</h3>
                            <p class="post__description text-sm">
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit,
                                sed
                                do eiusmod tempr incididu...
                            </p>
                        </div>

                    </div>

                </div>
            </section>--%>

            <!--=============== Contact ===============-->
            <section class="contact section" id="contact">
                <div class="contact__content container">
                    <h2 class="section__title">Contactanos_</h2>

                    <div class="contact__container grid">

                        <div class="contact__info">
                            <dl class="contact__list">
                                <dt>Phone:</dt>
                                <dd>8 (234) 456-33-33</dd>
                                <dt>Skype:</dt>
                                <dd>iamivanovivan</dd>
                                <dt>Email:</dt>
                                <dd>mail@gmail.com</dd>
                            </dl>

                            <ul class="contact__socials">
                                <li>
                                    <a href="https://www.facebook.com/" class="contact__social-link">Facebook</a>
                                </li>
                                <li>
                                    <a href="https://www.linkedin.com/" class="contact__social-link">Linkedin</a>
                                </li>
                                <li>
                                    <a href="https://github.com/" class="contact__social-link">Github</a>
                                </li>
                                <li>
                                    <a href="https://bitbucket.com/" class="contact__social-link">Bitbucket</a>
                                </li>
                            </ul>
                        </div>


                        <div class="contact__form">
                            <p class="contact__form-title">Or just write me a letter here_</p>

                            <form action="" id="contact-form">
                                <div class="contact__input-div">
                                    <input type="text" name="name" placeholder="Your name" class="contact__input" id="contact-name">
                                </div>

                                <div class="contact__input-div">
                                    <input type="email" name="email" placeholder="Your e-mail" class="contact__input" id="contact-email">
                                </div>

                                <div class="contact__input-div">
                                    <textarea placeholder="Type the message here" class="contact__input textarea" name="message" id="message" cols="30"
                                              rows="10"></textarea>
                                </div>

                                <p class="contact__message text-sm" id="contact-message"></p>

                                <button type="submit" class="button contact__button">SEND</button>

                            </form>

                            <p class="footer__copy"></p>
                        </div>
                    </div>
                </div>
            </section>
        </main>

        <!--=============== Style Switcher ===============-->
        <div class="style__switcher">

            <div class="style__switcher-toggler">
                <i class="ri-settings-4-fill"></i>
            </div>

            <div class="colors">
                <span class="color-1" onclick="setActiveStyle('color-1')"></span>
                <span class="color-2" onclick="setActiveStyle('color-2')"></span>
            </div>

        </div>

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
