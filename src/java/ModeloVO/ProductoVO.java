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
public class ProductoVO {
    
    private String id_Producto, Nombre, Stock, Precio , Estado;

    public ProductoVO(String id_Producto, String Nombre, String Stock, String Precio, String Estado) {
        this.id_Producto = id_Producto;
        this.Nombre = Nombre;
        this.Stock = Stock;
        this.Precio = Precio;
        this.Estado = Estado;
    }

    public ProductoVO() {
    }

    public String getId_Producto() {
        return id_Producto;
    }

    public void setId_Producto(String id_Producto) {
        this.id_Producto = id_Producto;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getStock() {
        return Stock;
    }

    public void setStock(String Stock) {
        this.Stock = Stock;
    }

    public String getPrecio() {
        return Precio;
    }

    public void setPrecio(String Precio) {
        this.Precio = Precio;
    }

    public String getEstado() {
        return Estado;
    }

    public void setEstado(String Estado) {
        this.Estado = Estado;
    }
      
      
    
      
    
}
