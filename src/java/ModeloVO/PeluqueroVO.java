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
public class PeluqueroVO {
      private String id_Peluquero, Nombre, apellido, Telefono, Direccion, Correo, Estado, id_Usuario;

    public PeluqueroVO(String id_Peluquero, String Nombre, String apellido, String Telefono, String Direccion, String Correo, String Estado, String id_Usuario) {
        this.id_Peluquero = id_Peluquero;
        this.Nombre = Nombre;
        this.apellido = apellido;
        this.Telefono = Telefono;
        this.Direccion = Direccion;
        this.Correo = Correo;
        this.Estado = Estado;
        this.id_Usuario = id_Usuario;
    }

    public PeluqueroVO() {
    }



    public String getId_Peluquero() {
        return id_Peluquero;
    }

    public void setId_Peluquero(String id_Peluquero) {
        this.id_Peluquero = id_Peluquero;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getTelefono() {
        return Telefono;
    }

    public void setTelefono(String Telefono) {
        this.Telefono = Telefono;
    }

    public String getDireccion() {
        return Direccion;
    }

    public void setDireccion(String Direccion) {
        this.Direccion = Direccion;
    }

    public String getCorreo() {
        return Correo;
    }

    public void setCorreo(String Correo) {
        this.Correo = Correo;
    }

    public String getEstado() {
        return Estado;
    }

    public void setEstado(String Estado) {
        this.Estado = Estado;
    }
    
    public String getId_Usuario() {
        return id_Usuario;
    }

    public void setId_Usuario(String id_Usuario) {
        this.id_Usuario = id_Usuario;
    }
    
}