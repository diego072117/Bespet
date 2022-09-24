/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import ModeloVO.UsuarioVO;
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
public class UsuarioDAO extends ConexionBd implements Crud {
  //1.Declarar
    //definir objetos
    private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;

    //variables para las operaciones
    private boolean operacion = false;
    private String sql;

    //declarar las variables 
    private String id_Usuario = "", Usuario = "", Password = "";

    public UsuarioDAO() {
    }
    
    
     
    //2. Método principal para recibir datos del VO
    public UsuarioDAO(UsuarioVO usuVO) {
        super();
        //conexion 
        try {
            conexion = this.obtenerConexion();

            //traer los datos del VO
            id_Usuario = usuVO.getId_Usuario();
            Usuario = usuVO.getUsuario();
            Password = usuVO.getPassword();

        } catch (Exception e) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);

        }

    }

    @Override
    public boolean agregarRegistro() {

        try {
            sql = "insert into usuarios(Usuario, Password) values (?,?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, Usuario);
            puente.setString(2, Password);
            puente.executeUpdate();
            operacion = true;

        } catch (SQLException e) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);

            }
        }

        return operacion;

    }

    @Override
    public boolean actualizarRegistro() {
        try {
            sql = "update usuarios set Usuario=?, Password=? where Id_Usuario=?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, Usuario);
            puente.setString(2, Password);
            puente.setString(3, id_Usuario);
            puente.executeUpdate();
            operacion = true;

        } catch (SQLException e) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);

            }
        }

        return operacion;

    }

    @Override
    public boolean eliminarRegistro() {
        try {
            sql = "delete usuario set usulogin=?, usupassword=? where usuid=?";
            puente.setString(1, Usuario);
            puente.setString(2, Password);
            puente.setString(3, id_Usuario);
            puente.executeUpdate();
            operacion = true;

        } catch (SQLException e) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }

        return operacion;

    }
    
       public UsuarioVO consultarusu(String id_Usuario) {
        UsuarioVO usuVO = null;
        try {
            conexion = this.obtenerConexion();
            sql = "select * from usuarios where id_Usuario=?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, id_Usuario);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {
                usuVO = new UsuarioVO(mensajero.getString(1), mensajero.getString(2), mensajero.getString(3));
            }

        } catch (SQLException e) {
            Logger.getLogger(UsuarioVO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(AdministradorDAO.class.getName()).log(Level.SEVERE, null, e);

            }
        }
        return usuVO;

    }

       public boolean inicioSesion(String Usuario, String Password) {
        try {
            conexion = this.obtenerConexion();
            sql = "select * from usuarios where Usuario=? and Password=?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, Usuario);
            puente.setString(2, Password);
            mensajero = puente.executeQuery();
            if (mensajero.next()) {
                operacion = true;
            }

        } catch (Exception e) {
        } finally {
            try {
                this.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return operacion;
    }
       
      public ArrayList<UsuarioVO> listar() {

        ArrayList<UsuarioVO> listaUsu = new ArrayList<>();
        try {
            conexion = this.obtenerConexion();
            sql = "select * from usuarios";
            puente = conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {
                UsuarioVO adminVO = new UsuarioVO(mensajero.getString(1), mensajero.getString(2), mensajero.getString(3));
                listaUsu.add(adminVO);
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
        return listaUsu;
    }
       
 
}
