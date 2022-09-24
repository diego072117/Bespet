/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;
import Util.Crud;
import ModeloVO.RolVO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import Util.ConexionBd;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;



/**
 *
 * @author DIEGO
 */
public class RolDAO extends ConexionBd implements Crud {

    //1. Declarar variables
    private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;

    private boolean operacion = false;
    private String sql;
    private String id_Rol = "", rolTipo = "";
    
    public RolDAO(){
    
    }

    public RolDAO(RolVO rolVO) {
        super();

        try {
            conexion = this.obtenerConexion();

            id_Rol = rolVO.getId_Rol();
            rolTipo = rolVO.getRolTiPo();
            
        } catch (Exception e) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
        }

    }

    @Override
    public boolean agregarRegistro() {
        try {
            sql = "insert into rol(rolId,rolTipo) values (?,?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, id_Rol);
            puente.setString(2, rolTipo);
            puente.executeUpdate();
            operacion = true;

        } catch (SQLException e) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (SQLException ex) {
                Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        return operacion;
    }

    @Override
    public boolean actualizarRegistro() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean eliminarRegistro() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    

    public ArrayList<RolVO> listar(String Usuario) 
    {
        ArrayList<RolVO> listaRol = new ArrayList<>();
        try 
        {
            conexion = this.obtenerConexion();
            sql = "SELECT usuarios.id_Usuario, rol.rolTipo FROM rol INNER JOIN usuario_rol ON rol.id_Rol = usuario_rol.id_Rol INNER JOIN usuarios ON usuario_rol.id_Usuario = usuarios.id_Usuario WHERE usuarios.Usuario=?;";  
            puente = conexion.prepareStatement(sql);
            puente.setString(1, Usuario);
            mensajero = puente.executeQuery();
            while (mensajero.next()) 
            {
                RolVO rolVO = new RolVO(mensajero.getString(1), mensajero.getString(2));
                listaRol.add(rolVO);
            }

        } 
        catch (SQLException e) 
        {
            Logger.getLogger(RolDAO.class.getName()).log(Level.SEVERE, null, e);
        } 
        finally 
        {
            try 
            {
                this.cerrarConexion();
            } 
            catch (SQLException e) 
            {
                Logger.getLogger(RolDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return listaRol;
    }
}

