/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloVO;

/**
 *
 * @author DIEGO
 */
public class VentasVO {
    
      private String id_venta, id_cliente, id_Peluquero, id_Productos,
                    Precio, Cantidad,Subtotal,Monto,Estado;

    public VentasVO() {
    }

    public VentasVO(String id_venta, String id_cliente, String id_Peluquero, String id_Productos, String Fecha, String Precio, String Cantidad, String Subtotal, String Monto, String Estado) {
        this.id_venta = id_venta;
        this.id_cliente = id_cliente;
        this.id_Peluquero = id_Peluquero;
        this.id_Productos = id_Productos;
        this.Precio = Precio;
        this.Cantidad = Cantidad;
        this.Subtotal = Subtotal;
        this.Monto = Monto;
        this.Estado = Estado;
    }

 
    public String getId_venta() {
        return id_venta;
    }

    public void setId_venta(String id_venta) {
        this.id_venta = id_venta;
    }

    public String getId_cliente() {
        return id_cliente;
    }

    public void setId_cliente(String id_cliente) {
        this.id_cliente = id_cliente;
    }

    public String getId_Peluquero() {
        return id_Peluquero;
    }

    public void setId_Peluquero(String id_Peluquero) {
        this.id_Peluquero = id_Peluquero;
    }

    public String getId_Productos() {
        return id_Productos;
    }

    public void setId_Productos(String id_Productos) {
        this.id_Productos = id_Productos;
    }

    public String getPrecio() {
        return Precio;
    }

    public void setPrecio(String Precio) {
        this.Precio = Precio;
    }

    public String getCantidad() {
        return Cantidad;
    }

    public void setCantidad(String Cantidad) {
        this.Cantidad = Cantidad;
    }

    public String getSubtotal() {
        return Subtotal;
    }

    public void setSubtotal(String Subtotal) {
        this.Subtotal = Subtotal;
    }

    public String getMonto() {
        return Monto;
    }

    public void setMonto(String Monto) {
        this.Monto = Monto;
    }

    public String getEstado() {
        return Estado;
    }

    public void setEstado(String Estado) {
        this.Estado = Estado;
    }
      
      
    
}
