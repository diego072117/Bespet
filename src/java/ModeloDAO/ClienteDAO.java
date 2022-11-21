/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import ModeloVO.ClienteVO;
import Util.ConexionBd;
import Util.Crud;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import ModeloVO.MascotaVO;

/**
 *
 * @author DIEGO
 */
public class ClienteDAO extends ConexionBd implements Crud {
    
     //1.Declarar
    //definir objetos
    private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;

    //variables para las operaciones
    private boolean operacion = false;
    private String sql;

    //declarar las variables 
    private String id_cliente = "", Nombres = "", apellidos = "", telefono="",correo="", avatar="", estado="", id_Usuario="";

    public ClienteDAO() {
    }
    
    
     
    //2. Método principal para recibir datos del VO
    public ClienteDAO(ClienteVO cliVO) {
        super();
        //conexion 
        try {
            conexion = this.obtenerConexion();

            //traer los datos del VO
            id_cliente = cliVO.getId_cliente();
            Nombres = cliVO.getNombres();
            apellidos = cliVO.getApellidos();
            telefono = cliVO.getTelefono();
            correo = cliVO.getCorreo();
            avatar = cliVO.getAvatar();
            estado = cliVO.getEstado();
            id_Usuario = cliVO.getId_Usuario();
        } catch (Exception e) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);

        }

    }
    
        @Override
    public boolean agregarRegistro() {
        try {
            sql = "INSERT INTO cliente (Nombres,Apellidos,telefono,Correo,avatar,id_Usuario) VALUES (?,?,?,?,?,?)";
          
            puente = conexion.prepareStatement(sql);
        
            puente.setString(1, Nombres);
            puente.setString(2, apellidos);
            puente.setString(3, telefono);
            puente.setString(4, correo);
            puente.setString(5, avatar);
            puente.setString(6, id_Usuario);
        
            puente.executeUpdate();
            operacion = true;

        } catch (SQLException e) {
            Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (Exception e) {
                Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null, e);

            }
        }

        return operacion;
    }

    @Override
    public boolean actualizarRegistro() {
        try {
            sql = "update cliente set Nombres=?, Apellidos=?,telefono=?,Correo=?,avatar=?,estado='activo', id_Usuario=? where id_cliente=?";
            
            puente = conexion.prepareStatement(sql);
            
            puente.setString(1, Nombres);
            puente.setString(2, apellidos);
            puente.setString(3, telefono);
            puente.setString(4, correo);
            puente.setString(5, avatar);
            puente.setString(6, id_Usuario);
            puente.setString(7, id_cliente);
          
            
            puente.executeUpdate();
            operacion = true;

        } catch (SQLException e) {
            Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (Exception e) {
                Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null, e);

            }
        }

        return operacion;
    }

   @Override
    public boolean eliminarRegistro() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
      
       public ClienteVO inabilitar(String id_cliente) {
           ClienteVO clieVO = null;
            try {
            sql = "update cliente set estado='inactivo' where id_cliente=?";
            puente = conexion.prepareStatement(sql);
            
 
            puente.setString(1, id_cliente);
   
            puente.executeUpdate();
            operacion = true;

        } catch (SQLException e) {
            Logger.getLogger(ClienteVO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (Exception e) { 
                Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null, e);

            }
        }

        return clieVO;

    }

    public ClienteVO consultarclie(String id_cliente) {
        ClienteVO clieVO = null;
        try {
            conexion = this.obtenerConexion();
            sql = "select * from cliente where id_cliente=?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, id_cliente);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {
                clieVO = new ClienteVO(mensajero.getString(1), mensajero.getString(2), mensajero.getString(3),
                        mensajero.getString(4), mensajero.getString(5), mensajero.getString(6), mensajero.getString(7), mensajero.getString(8));
            }

        } catch (SQLException e) {
            Logger.getLogger(ClienteVO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null, e);

            }
        }
        return clieVO;

    }
    
    
    
    
    

    public ArrayList<ClienteVO> listar() {

        ArrayList<ClienteVO> listaClie = new ArrayList<>();
        try {
            conexion = this.obtenerConexion();
            sql = "SELECT clie.id_cliente, clie.Nombres,clie.Apellidos,clie.Telefono,clie.Correo,clie.avatar,clie.Estado, usu.Usuario FROM `cliente` as clie INNER JOIN usuarios as usu on clie.id_Usuario=usu.id_Usuario WHERE clie.Estado = 'activo'";
            puente = conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {
                ClienteVO clieVO = new ClienteVO(mensajero.getString(1), mensajero.getString(2), mensajero.getString(3),
                        mensajero.getString(4), mensajero.getString(5), mensajero.getString(6), mensajero.getString(7), mensajero.getString(8));
                listaClie.add(clieVO);
            }

        } catch (SQLException e) {
            Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null, e);

            }

        }
        return listaClie;
    }
    
    
      public ClienteVO consultarUsuCliente(String id_Usuario) {
        ClienteVO clieVO = null;
        try {
            conexion = this.obtenerConexion();
            sql = "select * from cliente where id_Usuario=?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, id_Usuario);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {
                clieVO = new ClienteVO(mensajero.getString(1), mensajero.getString(2), mensajero.getString(3),
                        mensajero.getString(4), mensajero.getString(5), mensajero.getString(6), mensajero.getString(7), mensajero.getString(8) );
            }

        } catch (SQLException e) {
            Logger.getLogger(ClienteVO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null, e);

            }
        }
        return clieVO;

    }
    
}
