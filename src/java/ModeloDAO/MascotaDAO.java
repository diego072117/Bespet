/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import ModeloVO.MascotaVO;
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
public class MascotaDAO extends ConexionBd implements Crud{
    //1.Declarar
    //definir objetos
    private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;

    //variables para las operaciones
    private boolean operacion = false;
    private String sql;

    //declarar las variables 
    private String id_Mascota = "", Nombre = "", Edad = "", Tipo="", Raza="", Estado="", id_cliente;

    public MascotaDAO() {
    }
    
    
     //2. Método principal para recibir datos del VO
    public MascotaDAO(MascotaVO mascotaVO) {
        super();
        //conexion 
        try {
            conexion = this.obtenerConexion();

            //traer los datos del VO
            id_Mascota = mascotaVO.getId_Mascota();
            Nombre = mascotaVO.getNombre();
            Edad = mascotaVO.getEdad();
            Tipo = mascotaVO.getTipo();
            Raza = mascotaVO.getRaza();
            Estado = mascotaVO.getEstado();
            id_cliente = mascotaVO.getId_cliente();

        } catch (Exception e) {
            Logger.getLogger(MascotaDAO.class.getName()).log(Level.SEVERE, null, e);

        }

    }
    
 
    @Override
    public boolean agregarRegistro() {
        try {
            sql = "insert into mascota values (?,?,?,?,?,?,?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, id_Mascota);
            puente.setString(2, Nombre);
            puente.setString(3, Edad);
            puente.setString(4, Tipo);
            puente.setString(5, Raza);
            puente.setString(6, Estado);
            puente.setString(7, id_cliente);
            puente.executeUpdate();
            operacion = true;

        } catch (SQLException e) {
            Logger.getLogger(MascotaDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (Exception e) {
                Logger.getLogger(MascotaDAO.class.getName()).log(Level.SEVERE, null, e);

            }
        }

        return operacion;    
    }

    @Override
    public boolean actualizarRegistro() {
        try {
            sql = "update mascota set Nombre=?, Edad=?, Tipo=?, Raza=?, Estado=?, id_cliente=? where id_Mascota=?";
            puente = conexion.prepareStatement(sql);
            
            puente.setString(1, Nombre);
            puente.setString(2, Edad);
            puente.setString(3, Tipo);
            puente.setString(4, Raza);
            puente.setString(5, Estado);
            puente.setString(6, id_cliente);
            puente.setString(7, id_Mascota);
            puente.executeUpdate();
            operacion = true;

        } catch (SQLException e) {
            Logger.getLogger(MascotaDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (Exception e) {
                Logger.getLogger(MascotaDAO.class.getName()).log(Level.SEVERE, null, e);

            }
        }

        return operacion;
    }
    
    
        public MascotaVO consultarMascota(String id_Mascota) {
        MascotaVO mascotaVO = null;
        try {
            conexion = this.obtenerConexion();
            sql = "select * from mascota where id_Mascota=?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, id_Mascota);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {
                mascotaVO = new MascotaVO(mensajero.getString(1), mensajero.getString(2), mensajero.getString(3),
                        mensajero.getString(4), mensajero.getString(5), mensajero.getString(6), mensajero.getString(7));
            }

        } catch (SQLException e) {
            Logger.getLogger(MascotaVO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(MascotaDAO.class.getName()).log(Level.SEVERE, null, e);

            }
        }
        return mascotaVO;

    }
         public ArrayList<MascotaVO> listar() {

        ArrayList<MascotaVO> listaMascota= new ArrayList<>();
        try {
            conexion = this.obtenerConexion();
            sql = "select * from mascota where estado='activo'";
            puente = conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {
                MascotaVO mascotaVO = new MascotaVO(mensajero.getString(1), mensajero.getString(2), mensajero.getString(3),
                        mensajero.getString(4), mensajero.getString(5), mensajero.getString(6), mensajero.getString(7));
                listaMascota.add(mascotaVO);
            }

        } catch (SQLException e) {
            Logger.getLogger(MascotaDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(MascotaDAO.class.getName()).log(Level.SEVERE, null, e);

            }

        }
        return listaMascota;
    }

    @Override
    public boolean eliminarRegistro() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    public MascotaVO inabilitar(String id_Mascota) {
           MascotaVO mascotaVO = null;
            try {
            sql = "update mascota set estado='inactivo' where id_Mascota=?";
            puente = conexion.prepareStatement(sql);
            
 
            puente.setString(1, id_Mascota);
   
            puente.executeUpdate();
            operacion = true;

        } catch (SQLException e) {
            Logger.getLogger(MascotaDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (Exception e) {
                Logger.getLogger(MascotaDAO.class.getName()).log(Level.SEVERE, null, e);

            }
        }

        return mascotaVO;

    }    
}

