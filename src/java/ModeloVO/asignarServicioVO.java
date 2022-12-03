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
public class asignarServicioVO {

    private String id_Asignar, id_Mascota, id_Servicio, id_Peluquero, nombrePeluquero,nombreMascota, nombreServicio,idCliente,fechaTerminado, Estado;

    public asignarServicioVO(String id_Asignar, String id_Mascota, String id_Servicio, String id_Peluquero, String nombrePeluquero, String nombreMascota, String nombreServicio, String idCliente,String fechaTerminado,String Estado) {
        this.id_Asignar = id_Asignar;
        this.id_Mascota = id_Mascota;
        this.id_Servicio = id_Servicio;
        this.id_Peluquero = id_Peluquero;
        this.nombrePeluquero = nombrePeluquero;
        this.nombreMascota = nombreMascota;
        this.nombreServicio = nombreServicio;
        this.idCliente = idCliente;
        this.fechaTerminado = fechaTerminado;
        this.Estado = Estado;
    }


    public asignarServicioVO() {
    }

    public String getId_Asignar() {
        return id_Asignar;
    }

    public void setId_Asignar(String id_Asignar) {
        this.id_Asignar = id_Asignar;
    }

    public String getId_Mascota() {
        return id_Mascota;
    }

    public void setId_Mascota(String id_Mascota) {
        this.id_Mascota = id_Mascota;
    }

    public String getId_Servicio() {
        return id_Servicio;
    }

    public void setId_Servicio(String id_Servicio) {
        this.id_Servicio = id_Servicio;
    }

    public String getId_Peluquero() {
        return id_Peluquero;
    }

    public void setId_Peluquero(String id_Peluquero) {
        this.id_Peluquero = id_Peluquero;
    }

    public String getNombrePeluquero() {
        return nombrePeluquero;
    }

    public void setNombrePeluquero(String nombrePeluquero) {
        this.nombrePeluquero = nombrePeluquero;
    }

    public String getNombreMascota() {
        return nombreMascota;
    }

    public void setNombreMascota(String nombreMascota) {
        this.nombreMascota = nombreMascota;
    }

    public String getNombreServicio() {
        return nombreServicio;
    }

    public void setNombreServicio(String nombreServicio) {
        this.nombreServicio = nombreServicio;
    }

    public String getIdCliente() {
        return idCliente;
    }

    public void setIdCliente(String idCliente) {
        this.idCliente = idCliente;
    }


    public String getFechaTerminado() {
        return fechaTerminado;
    }

    public void setFechaTerminado(String fechaTerminado) {
        this.fechaTerminado = fechaTerminado;
    }
    
    
    
   
    public String getEstado() {
        return Estado;
    }

    public void setEstado(String Estado) {
        this.Estado = Estado;
    }

   
}
