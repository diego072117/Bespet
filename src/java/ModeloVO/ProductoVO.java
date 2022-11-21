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
    
    private String id_Producto, Nombre, Precio , Estado, img;

    public ProductoVO(String id_Producto, String Nombre, String Precio, String Estado, String img) {
        this.id_Producto = id_Producto;
        this.Nombre = Nombre;
        this.Precio = Precio;
        this.Estado = Estado;
        this.img = img;
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

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }
      
      
    
      
    
}
