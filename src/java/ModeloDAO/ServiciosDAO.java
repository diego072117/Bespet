/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import ModeloVO.MascotaVO;
import ModeloVO.ServiciosVO;
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
 * @author Edwin
 */
public class ServiciosDAO extends ConexionBd implements Crud{
    //1.Declarar
    //definir objetos
    private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;

    public ServiciosDAO() {
    }

    //variables para las operaciones
    private boolean operacion = false;
    private String sql;

    //declarar las variables 
    private String id_Servicio = "", Nombre = "", Precio = "", img="",Estado="";
    
         //2. Método principal para recibir datos del VO
    public ServiciosDAO(ServiciosVO serviciosVO) {
        super();
        //conexion 
        try {
            conexion = this.obtenerConexion();

            //traer los datos del VO
            id_Servicio = serviciosVO.getId_Servicio();
            Nombre = serviciosVO.getNombre();
            Precio = serviciosVO.getPrecio();
            img = serviciosVO.getImg();
            Estado = serviciosVO.getEstado();



        } catch (Exception e) {
            Logger.getLogger(ServiciosDAO.class.getName()).log(Level.SEVERE, null, e);

        }

    }

    @Override
    public boolean agregarRegistro() {
        try {
            sql = "INSERT INTO servicios (Nombre,Precio,img) VALUES (?,?,?)";
            
            puente = conexion.prepareStatement(sql);
        
            puente.setString(1, Nombre);
            puente.setString(2, Precio);
            puente.setString(3, img);
   
            puente.executeUpdate();
            operacion = true;

        } catch (SQLException e) {
            Logger.getLogger(ServiciosDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (Exception e) {
                Logger.getLogger(ServiciosDAO.class.getName()).log(Level.SEVERE, null, e);

            }
        }

        return operacion;    
    }
        @Override
    public boolean actualizarRegistro() {
        try {
            sql = "update servicios set Nombre=?, Precio=?,img=?,estado='activo' where id_Servicios=?";
            puente = conexion.prepareStatement(sql);
            
            puente.setString(1, Nombre);
            puente.setString(2, Precio);
            puente.setString(3, img);
            puente.setString(4, id_Servicio);
            puente.executeUpdate();
            operacion = true;

        } catch (SQLException e) {
            Logger.getLogger(ServiciosDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (Exception e) {
                Logger.getLogger(ServiciosDAO.class.getName()).log(Level.SEVERE, null, e);

            }
        }

        return operacion;
    }
    public ServiciosVO consultarServicios(String id_Servicio) {
        ServiciosVO serviciosVO = null;
        try {
            conexion = this.obtenerConexion();
            sql = "select * from servicios where id_Servicios=?";
            puente = conexion.prepareStatement(sql);
            
            puente.setString(1, id_Servicio);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {
                serviciosVO = new ServiciosVO(mensajero.getString(1), mensajero.getString(2), mensajero.getString(3),
                        mensajero.getString(4),mensajero.getString(5));
                
            }

        } catch (SQLException e) {
            Logger.getLogger(ServiciosVO.class.getName()).log(Level.SEVERE, null, e);
        } 
        return serviciosVO;

    }
    
    
    
    
    
    
        public ArrayList<ServiciosVO> listar() {

        ArrayList<ServiciosVO> listaServicio= new ArrayList<>();
        try {
            conexion = this.obtenerConexion();
            sql = "select * from servicios where  estado='activo' ";
            puente = conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {
                ServiciosVO serviciosVO = new ServiciosVO(mensajero.getString(1), mensajero.getString(2), mensajero.getString(3),
                        mensajero.getString(4),mensajero.getString(5));
                listaServicio.add(serviciosVO);
            }

        } catch (SQLException e) {
            Logger.getLogger(ServiciosDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(ServiciosDAO.class.getName()).log(Level.SEVERE, null, e);

            }

        }
        return listaServicio;
    }
    @Override
    public boolean eliminarRegistro() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    public ServiciosVO inabilitar(String id_Servicio) {
           ServiciosVO serviciosVO = null;
            try {
            sql = "update servicios set estado='inactivo' where id_Servicios=?";
            puente = conexion.prepareStatement(sql);
            
 
            puente.setString(1, id_Servicio);
   
            puente.executeUpdate();
            operacion = true;

        } catch (SQLException e) {
            Logger.getLogger(ServiciosDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (Exception e) {
                Logger.getLogger(ServiciosDAO.class.getName()).log(Level.SEVERE, null, e);

            }
        }

        return serviciosVO;

    }    
}
 

    
