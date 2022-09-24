/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloVO;

/**
 *
 * @author Edwin
 */
public class ServiciosVO {
    
    private String id_Servicio, Nombre, Precio,Estado, id_Peluquero;

    public ServiciosVO() {
    }

    public ServiciosVO(String id_Servicio, String Nombre, String Precio,String Estado, String id_Peluquero) {
        this.id_Servicio = id_Servicio;
        this.Nombre = Nombre;
        this.Precio = Precio;
        this.Estado = Estado;
        this.id_Peluquero = id_Peluquero;
    }

    public String getId_Servicio() {
        return id_Servicio;
    }

    public void setId_Servicio(String id_Servicio) {
        this.id_Servicio = id_Servicio;
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

    public String getId_Peluquero() {
        return id_Peluquero;
    }

    public void setId_Peluquero(String id_Peluquero) {
        this.id_Peluquero = id_Peluquero;
    }
    
    
}
   