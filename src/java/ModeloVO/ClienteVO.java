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
public class ClienteVO {
    
       private String id_cliente,Nombres,apellidos,correo,estado;

    public ClienteVO(String id_cliente, String Nombres, String apellidos, String correo, String estado) {
        this.id_cliente = id_cliente;
        this.Nombres = Nombres;
        this.apellidos = apellidos;
        this.correo = correo;
        this.estado = estado;
    
    }

    public ClienteVO() {
    }

    public String getId_cliente() {
        return id_cliente;
    }

    public void setId_cliente(String id_cliente) {
        this.id_cliente = id_cliente;
    }

    public String getNombres() {
        return Nombres;
    }

    public void setNombres(String Nombres) {
        this.Nombres = Nombres;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }
       
}