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
public class asignarRolVO {
    
     //declarar objetos
    private String id_Rol , id_Usuario;

    public asignarRolVO(String id_Rol, String id_Usuario) {
        this.id_Rol = id_Rol;
        this.id_Usuario = id_Usuario;
    }

    public asignarRolVO() {
    }

    public String getId_Rol() {
        return id_Rol;
    }

    public void setId_Rol(String id_Rol) {
        this.id_Rol = id_Rol;
    }

    public String getId_Usuario() {
        return id_Usuario;
    }

    public void setId_Usuario(String id_Usuario) {
        this.id_Usuario = id_Usuario;
    }
    
    
    
}
