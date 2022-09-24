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
public class AdministradorVO {
      private String id_Administrador,Nombre,apellido,Telefono,Direccion,Correo,id_Usuario,estado;

    public AdministradorVO(String id_Administrador, String Nombre, String apellido, String Telefono, String Direccion, String Correo, String id_Usuario, String estado) {
        this.id_Administrador = id_Administrador;
        this.Nombre = Nombre;
        this.apellido = apellido;
        this.Telefono = Telefono;
        this.Direccion = Direccion;
        this.Correo = Correo;
        this.id_Usuario = id_Usuario;
        this.estado = estado;
    }

    public AdministradorVO() {
    }



    public String getId_Administrador() {
        return id_Administrador;
    }

    public void setId_Administrador(String id_Administrador) {
        this.id_Administrador = id_Administrador;
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

    public String getId_Usuario() {
        return id_Usuario;
    }

    public void setId_Usuario(String id_Usuario) {
        this.id_Usuario = id_Usuario;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }
    
    
    
    
    
}
