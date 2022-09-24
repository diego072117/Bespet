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
public class RolVO {
    
   private String id_Rol, rolTiPo;

    public RolVO(String id_Rol, String rolTiPo) {
        this.id_Rol = id_Rol;
        this.rolTiPo = rolTiPo;
    }

    public RolVO() {

    }

    public String getId_Rol() {
        return id_Rol;
    }

    public void setId_Rol(String id_Rol) {
        this.id_Rol = id_Rol;
    }

    public String getRolTiPo() {
        return rolTiPo;
    }

    public void setRolTiPo(String rolTiPo) {
        this.rolTiPo = rolTiPo;
    }
    
    
}
