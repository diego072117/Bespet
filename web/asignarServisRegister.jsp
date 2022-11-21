<%-- 
    Document   : asignarServisRegister
    Created on : 11/11/2022, 09:02:44 AM
    Author     : DIEGO
--%>

<%@page import="ModeloDAO.MascotaDAO"%>
<%@page import="ModeloVO.MascotaVO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/asigservi.css" rel="stylesheet" type="text/css"/>
        <link rel="icon" type="image/x-icon" href="image/pata.png">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">

        <title>Asignar servicio</title>
    </head>
    <body>
        <%@include file="navadmin.jsp"%>

        <section class="home-section">


            <div class="form">
                <div class="row ">
                    <div class="col-lg-5 parte01">
                        <div class="card">
                            <form action="asignarServicio" method="POST">
                                <div class="card-body">

                                    <!--DATOS DEL peluquero-->
                                    <div class="form-group">
                                        <label>Codigo Peluquero</label>
                                    </div>
                                    <div class="form-group d-flex">
                                        <div class="col-sm-6 d-flex">
                                            <input type="text" name="id_Peluquero" value="${peluVO.getId_Peluquero()}" class="form-control" placeholder="Codigo" required>
                                            <button type="submit" name="opcion" value="6" class="btn btn-outline-info">Buscar</button>
                                        </div>                           
                                        <div class="col-sm-6">
                                            <input type="text" name="nombrePeluquero" value="${peluVO.getNombre()}" placeholder="Datos Peluquero" class="form-control">
                                        </div>   

                                    </div>

                                    <!--DATOS DE MAscota-->
                                    <div class="form-group">
                                        <label>Codigo Mascota</label>
                                    </div>
                                    <div class="form-group d-flex">
                                        <div class="col-sm-6 d-flex">
                                            <input type="text" name="id_Mascota" value="${masVO.getId_Mascota()}" class="form-control" placeholder="Codigo" >
                                            <button type="submit" name="opcion" value="5" class="btn btn-outline-info">Buscar</button>
                                        </div>                           
                                        <div class="col-sm-6">
                                            <input type="text" name="nombreMascota" value="${masVO.getNombre()}" placeholder="Datos Mascota" class="form-control">
                                        </div>   

                                    </div>

                                    <!--DATOS DEL Servicio-->
                                    <div class="form-group">
                                        <label>Codigo Servicio</label>
                                    </div>
                                    <div class="form-group d-flex">
                                        <div class="col-sm-6 d-flex">
                                            <input type="text" name="id_Servicio" value="${serVO.getId_Servicio()}" class="form-control" placeholder="Codigo" >
                                            <button type="submit" name="opcion" value="7" class="btn btn-outline-info">Buscar</button>
                                        </div>                           
                                        <div class="col-sm-6">
                                            <input type="text" name="nombreServicio" value="${serVO.getNombre()}" placeholder="Datos Servicios" class="form-control">
                                        </div>   

                                    </div>

                                    <!--BOTON AGREGAR PRODUCTO AL REGISTRO-->
                                    <div class="form-group">
                                        <div class="col-sm">
                                            <button type="submit" name="opcion" value="8" class="btn btn-outline-primary">Asignar</button>
                                        </div>
                                    </div>
                            </form>
                        </div>
                    </div>

                </div>       
                <div class="col-sm-7">
                    <div class="card parte02">                    
                        <div class="card-body">

                            <br>
                            <table class="table table-hover">
                                <thead>
                                    <tr class="text-center">

                                        <th class="noneid">N°</th>
                                        <th>Peluquero</th>
                                        <th class="noneid">N°</th>
                                        <th>Mascota</th>
                                        <th class="noneid">N°</th>
                                        <th>Servicio</th>                 
                                            <%--<th class="accion">ACCION</th>--%>                                  
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="list" items="${lista}">
                                        <tr class="text-center">
                                            <%--  <td>${list.getId_Asignar()}</td>--%>


                                            <td class="noneid">${list.getId_Peluquero()}</td>
                                            <td>${list.getNombrePeluquero()}</td>
                                            <td class="noneid">${list.getId_Mascota()}</td>
                                            <td>${list.getNombreMascota()}</td>
                                            <td class="noneid">${list.getId_Servicio()}</td>
                                            <td>${list.getNombreServicio()}</td>



                                            <%-- <td class="text-center">
                                                 <input type="hidden"  value="${peluVO.getId_Peluquero()}">
                                                 <a  class="btn btn-outline-danger btn-sm"><i class="bi bi-trash"></i></a>                                        
                                             </td>--%>
                                        </tr>
                                    </c:forEach>

                                </tbody>
                            </table>
                        </div>
                        <div class="card-footer" >
                            <div class="row">
                                <div class="col-sm-6">


                                    <a href="asignarServicio?opcion=9" class="btn btn-success">Asignar</a>
                                    <%--<a type="submit" href="asignarServicio?opcion=10" class="btn btn-danger">Cancelar</a>--%>
                                </div>

                            </div>                        
                        </div>
                    </div>

                </div>
            </div>
        </div> 

    </section>                      


</body>
</html>
