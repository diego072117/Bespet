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
    private String id_cliente = "", Nombres = "", apellidos = "", correo="", estado="";

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
            correo = cliVO.getCorreo();
            estado = cliVO.getEstado();
        } catch (Exception e) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);

        }

    }
    
        @Override
    public boolean agregarRegistro() {
        try {
            sql = "insert into cliente values (?,?,?,?,?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, id_cliente);
            puente.setString(2, Nombres);
            puente.setString(3, apellidos);
            puente.setString(4, correo);
            puente.setString(5, estado);
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
            sql = "update cliente set Nombres=?, apellidos=?, correo=?, estado=? where id_cliente=?";
            puente = conexion.prepareStatement(sql);
            
            puente.setString(1, Nombres);
            puente.setString(2, apellidos);
            puente.setString(3, correo);
            puente.setString(4, estado);
            puente.setString(5, id_cliente);
          
            
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
                        mensajero.getString(4), mensajero.getString(5) );
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
            sql = "select * from cliente where estado='activo'";
            puente = conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {
                ClienteVO clieVO = new ClienteVO(mensajero.getString(1), mensajero.getString(2), mensajero.getString(3),
                        mensajero.getString(4), mensajero.getString(5));
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
    
    
}
