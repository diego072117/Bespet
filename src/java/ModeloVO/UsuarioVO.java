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
public class UsuarioVO {
    //declarar objetos
    private String id_Usuario , Usuario, Password, Estado;

    public UsuarioVO(String id_Usuario, String Usuario, String Password, String Estado) {
        this.id_Usuario = id_Usuario;
        this.Usuario = Usuario;
        this.Password = Password;
        this.Estado = Estado;
    
    }
    //constructor

    public UsuarioVO() {
    }
    
    
    
    //getters y setters

    

    public String getId_Usuario() {
        return id_Usuario;
    }

    public void setId_Usuario(String id_Usuario) {
        this.id_Usuario = id_Usuario;
    }

    public String getUsuario() {
        return Usuario;
    }

    public void setUsuario(String Usuario) {
        this.Usuario = Usuario;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }

    public String getEstado() {
        return Estado;
    }

    public void setEstado(String Estado) {
        this.Estado = Estado;
    }

    
    
   
}

