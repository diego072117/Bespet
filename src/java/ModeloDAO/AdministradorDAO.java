 /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;


import ModeloVO.AdministradorVO;
import Util.ConexionBd;
import Util.Crud;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author DIEGO
 */
public class AdministradorDAO extends ConexionBd implements Crud{
    
    
    
     //1.Declarar
    //definir objetos
    private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;

    //variables para las operaciones
    private boolean operacion = false;
    private String sql;

    //declarar las variables 
    private String id_Administrador = "", Nombre = "", apellido = "", Telefono="", Direccion="", Correo="", id_Usuario="", estado="";

    public AdministradorDAO() {
    }
    
    
     
    //2. Método principal para recibir datos del VO
    public AdministradorDAO(AdministradorVO adminVO) {
        super();
        //conexion 
        try {
            conexion = this.obtenerConexion();

            //traer los datos del VO
            id_Administrador = adminVO.getId_Administrador();
            Nombre = adminVO.getNombre();
            apellido = adminVO.getApellido();
            Telefono = adminVO.getTelefono();
            Direccion = adminVO.getDireccion();
            Correo = adminVO.getCorreo();
            id_Usuario = adminVO.getId_Usuario();
            estado = adminVO.getEstado();
        } catch (Exception e) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);

        }

    }
    
        @Override
    public boolean agregarRegistro() {
        try {
            sql = "INSERT INTO administrador (Nombre,apellido,Telefono,Direccion,Correo,id_Usuario) VALUES (?,?,?,?,?,?)";
            puente = conexion.prepareStatement(sql);

            puente.setString(1, Nombre);
            puente.setString(2, apellido);
            puente.setString(3, Telefono);
            puente.setString(4, Direccion);
            puente.setString(5, Correo);
            puente.setString(6, id_Usuario);
            puente.executeUpdate();
            operacion = true;

        } catch (SQLException e) {
            Logger.getLogger(AdministradorDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (Exception e) {
                Logger.getLogger(AdministradorDAO.class.getName()).log(Level.SEVERE, null, e);

            }
        }

        return operacion;
    }

    @Override
    public boolean actualizarRegistro() {
        try {
            sql = "update administrador set Nombre=?, apellido=?, Telefono=?, Direccion=?, Correo=?, id_Usuario=?, estado='activo' where id_Administrador=?";
            puente = conexion.prepareStatement(sql);
            
            puente.setString(1, Nombre);
            puente.setString(2, apellido);
            puente.setString(3, Telefono);
            puente.setString(4, Direccion);
            puente.setString(5, Correo);
            puente.setString(6, id_Usuario);
            puente.setString(7, id_Administrador);
            
            puente.executeUpdate();
            operacion = true;

        } catch (SQLException e) {
            Logger.getLogger(AdministradorDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (Exception e) {
                Logger.getLogger(AdministradorDAO.class.getName()).log(Level.SEVERE, null, e);

            }
        }

        return operacion;
    }

   @Override
    public boolean eliminarRegistro() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
      
       public AdministradorVO inabilitar(String id_Administrador) {
           AdministradorVO adminVO = null;
            try {
            sql = "update administrador set estado='inactivo' where id_Administrador=?";
            puente = conexion.prepareStatement(sql);
            
 
            puente.setString(1, id_Administrador);
   
            puente.executeUpdate();
            operacion = true;

        } catch (SQLException e) {
            Logger.getLogger(AdministradorDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (Exception e) { 
                Logger.getLogger(AdministradorDAO.class.getName()).log(Level.SEVERE, null, e);

            }
        }

        return adminVO;

    }

    public AdministradorVO consultaradmin(String id_Administrador) {
        AdministradorVO adminVO = null;
        try {
            conexion = this.obtenerConexion();
            sql = "select * from administrador where id_Administrador=?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, id_Administrador);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {
                adminVO = new AdministradorVO(mensajero.getString(1), mensajero.getString(2), mensajero.getString(3),
                        mensajero.getString(4), mensajero.getString(5), mensajero.getString(6), mensajero.getString(7),mensajero.getString(8) );
            }

        } catch (SQLException e) {
            Logger.getLogger(AdministradorVO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(AdministradorDAO.class.getName()).log(Level.SEVERE, null, e);

            }
        }
        return adminVO;

    }

    public ArrayList<AdministradorVO> listar() {

        ArrayList<AdministradorVO> listaAdmin = new ArrayList<>();
        try {
            conexion = this.obtenerConexion();
            sql = "select admin.id_Administrador,admin.Nombre, admin.apellido,admin.Telefono,admin.Direccion,admin.Correo, usu.Usuario, admin.estado from administrador as admin INNER JOIN usuarios as usu on admin.id_Usuario = usu.id_Usuario WHERE admin.estado = 'activo'";
            puente = conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {
                AdministradorVO adminVO = new AdministradorVO(mensajero.getString(1), mensajero.getString(2), mensajero.getString(3),
                        mensajero.getString(4), mensajero.getString(5), mensajero.getString(6), mensajero.getString(7),mensajero.getString(8));
                listaAdmin.add(adminVO);
            }

        } catch (SQLException e) {
            Logger.getLogger(AdministradorDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(AdministradorDAO.class.getName()).log(Level.SEVERE, null, e);

            }

        }
        return listaAdmin;
    }
    
    public AdministradorVO consultarUsuAdmin(String id_Usuario) {
        AdministradorVO adminVO = null;
        try {
            conexion = this.obtenerConexion();
            sql = "select * from administrador where id_Usuario=?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, id_Usuario);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {
                adminVO = new AdministradorVO(mensajero.getString(1), mensajero.getString(2), mensajero.getString(3),
                        mensajero.getString(4), mensajero.getString(5), mensajero.getString(6), mensajero.getString(7), mensajero.getString(8) );
            }

        } catch (SQLException e) {
            Logger.getLogger(AdministradorVO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(AdministradorDAO.class.getName()).log(Level.SEVERE, null, e);

            }
        }
        return adminVO;

    }
    
}
