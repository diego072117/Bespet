<%-- 
    Document   : Ventas
    Created on : 20/09/2022, 09:55:37 PM
    Author     : DIEGO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="ModeloDAO.ClienteDAO"%>
<%@page import="ModeloVO.ClienteVO"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container mt-4">
    <div class="row">
        <div class="col-lg-5 parte01">
            <div class="card">
                <form action="Controlador?menu=NuevaVenta" method="POST">
                    <div class="card-body">
                        <!--DATOS DEL PRODUCTO-->
                        <div class="form-group">
                            <label>Datos del Cliente</label>
                        </div>
                        <div class="form-group d-flex">
                            <div class="col-sm-6 d-flex">
                                <input type="text" name="codigocliente" value="${c.getDni()}" class="form-control" placeholder="Codigo">
                                <button type="submit" name="accion" value="BuscarCliente" class="btn btn-outline-info">Buscar</button>
                            </div>                           
                            <div class="col-sm-6">
                                <input type="text" name="nombrescliente" value="${c.getNom()}" placeholder="Datos Cliente" class="form-control">
                            </div>                           
                        </div>
                        <!--DATOS DEL PRODUCTO-->
                        <div class="form-group">
                            <label>Datos Producto</label>
                        </div>
                        <div class="form-group d-flex">
                            <div class="col-sm-6 d-flex">
                                <input type="text" name="codigoproducto" value="${producto.getId()}" class="form-control" placeholder="Codigo">
                                <button type="submit" name="accion" value="BuscarProducto" class="btn btn-outline-info">Buscar</button>
                            </div>                           
                            <div class="col-sm-6">
                                <input type="text" name="nomproducto" value="${producto.getNom()}" placeholder="Datos Producto" class="form-control">
                            </div>  
                        </div>
                        <div class="form-group d-flex">
                            <div class="col-sm-6 d-flex">
                                <input type="text" name="precio" value="${producto.getPre()}" class="form-control" placeholder="S/.0.00">                                
                            </div>                           
                            <div class="col-sm-3">
                                <input type="number" value="1" name="cant" placeholder="" class="form-control">
                            </div>  
                            <div class="col-sm-3">
                                <input type="text" name="stock" value="${producto.getStock()}" placeholder="Stock" class="form-control">
                            </div>  
                        </div>
                        <!--BOTON AGREGAR PRODUCTO AL REGISTRO-->
                        <div class="form-group">
                            <div class="col-sm">
                                <button type="submit" name="accion" value="Agregar" class="btn btn-outline-primary">Agregar Producto</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
