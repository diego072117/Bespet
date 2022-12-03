/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import ModeloVO.asignarServicioVO;
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
public class asignarServicioDAO extends ConexionBd implements Crud{
    
     //1.Declarar
    //definir objetos

    private Connection conexion;
    ConexionBd con = new ConexionBd(); 
    private PreparedStatement puente;
    private ResultSet mensajero;
    
    //variables para las operaciones
    private boolean operacion = false;
    
    int r;
    private String sql;

    //declarar las variables 
    private String id_Asignar = "", id_Mascota = "", id_Servicio = "", id_Peluquero="",nombrePeluquero="",nombreMascota="",nombreServicio="",idCliente="",fechaTerminado="",  Estado = "";

    public asignarServicioDAO() {
    }
    
    
    //2. Método principal para recibir datos del VO
    public asignarServicioDAO(asignarServicioVO asiVO) {
        super();
        //conexion 
        try {
            conexion = this.obtenerConexion();

            //traer los datos del VO
            id_Asignar = asiVO.getId_Asignar();
            id_Mascota = asiVO.getId_Mascota();
            id_Servicio = asiVO.getId_Servicio();
            id_Peluquero = asiVO.getId_Peluquero();
            nombrePeluquero = asiVO.getNombrePeluquero();
            nombreMascota= asiVO.getNombreMascota();
            nombreServicio= asiVO.getNombreMascota();
            idCliente = asiVO.getIdCliente();
            fechaTerminado = asiVO.getFechaTerminado();
            Estado = asiVO.getEstado();

        } catch (Exception e) {
            Logger.getLogger(asignarServicioDAO.class.getName()).log(Level.SEVERE, null, e);

        }

    }
    
    

   
    public boolean registrarCISI(asignarServicioVO asignar) {
         String consulta ="INSERT INTO asignarservicio (id_Mascota,id_Servicios,id_Peluquero,nombrePeluquero,nombreMascota,nombreServicio,idcliente) VALUES (?,?,?,?,?,?,?)";
         try {
          conexion = con.obtenerConexion();
            puente = conexion.prepareStatement(consulta);
        
            puente.setString(1, asignar.getId_Mascota());
            puente.setString(2, asignar.getId_Servicio());
            puente.setString(3, asignar.getId_Peluquero());
            puente.setString(4, asignar.getNombrePeluquero());
            puente.setString(5, asignar.getNombreMascota());
            puente.setString(6, asignar.getNombreServicio());
            puente.setString(7, asignar.getIdCliente());
            puente.executeUpdate();
            puente.close();
     
            
            operacion = true;

        } catch (SQLException e) {
            Logger.getLogger(ServiciosDAO.class.getName()).log(Level.SEVERE, null, e);
        } 
        return operacion;    
    }

    @Override
    public boolean actualizarRegistro() {
              try {
            sql = "update asignarservicio set id_Mascota=?, id_Servicios=?, id_Peluquero=?, estado='pendiente' where id_Asignar=?";
            puente = conexion.prepareStatement(sql);
            
            puente.setString(1, id_Mascota);
            puente.setString(2, id_Servicio);
            puente.setString(3, id_Peluquero); 
            puente.setString(4, id_Asignar); 
            puente.executeUpdate();
            operacion = true;

        } catch (SQLException e) {
            Logger.getLogger(asignarServicioVO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (Exception e) {
                Logger.getLogger(asignarServicioDAO.class.getName()).log(Level.SEVERE, null, e);

            }
        }

        return operacion;
    }
    
     public asignarServicioVO consultarAsignar(String id_Asignar) {
        asignarServicioVO asignarServicioVO = null;
        try {
            conexion = this.obtenerConexion();
            sql = "select * from asignarservicio where id_Asignar=?";
            puente = conexion.prepareStatement(sql);
            
            puente.setString(1, id_Asignar);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {
                asignarServicioVO = new asignarServicioVO(mensajero.getString(1), mensajero.getString(2), mensajero.getString(3),
                        mensajero.getString(4),mensajero.getString(5),mensajero.getString(6),mensajero.getString(7),mensajero.getString(8),mensajero.getString(9)
                        ,mensajero.getString(10));
                
            }

        } catch (SQLException e) {
            Logger.getLogger(asignarServicioVO.class.getName()).log(Level.SEVERE, null, e);
        } 
        return asignarServicioVO;

    }
     
     
      public asignarServicioVO consultarImg(String id_Servicio) {
        asignarServicioVO asignarServicioVO = null;
        try {
            conexion = this.obtenerConexion();
            sql = "SELECT ser.id_Servicios, ser.img FROM `asignarservicio` as asi INNER JOIN servicios as ser on asi.id_Servicios=ser.id_Servicios WHERE asi.id_Servicios = ?;";
            puente = conexion.prepareStatement(sql);
            
            puente.setString(1, id_Servicio);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {
                asignarServicioVO = new asignarServicioVO(mensajero.getString(1), mensajero.getString(2), mensajero.getString(3),
                        mensajero.getString(4),mensajero.getString(5),mensajero.getString(6),mensajero.getString(7),mensajero.getString(8),mensajero.getString(9)
                ,mensajero.getString(10));
                
            }

        } catch (SQLException e) {
            Logger.getLogger(asignarServicioVO.class.getName()).log(Level.SEVERE, null, e);
        } 
        return asignarServicioVO;

    }
     
    

    @Override
    public boolean eliminarRegistro() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

     public ArrayList<asignarServicioVO> listar() {

        ArrayList<asignarServicioVO> listaAsi = new ArrayList<>();
        try {
            conexion = this.obtenerConexion();
            sql = "select asi.id_Asignar, mas.Nombre, servi.Nombre, pelu.Nombre ,asi.nombrePeluquero,asi.nombreMascota,nombreServicio,asi.idCliente,asi.fechaterminado, asi.Estado from asignarservicio as asi INNER JOIN mascota as mas on mas.id_Mascota = asi.id_Mascota INNER JOIN servicios as servi ON servi.id_Servicios = asi.id_Servicios INNER JOIN peluquero as pelu on pelu.id_Peluquero=asi.id_Peluquero WHERE asi.Estado = 'pendiente';";
            puente = conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {
                asignarServicioVO asiVO = new asignarServicioVO(mensajero.getString(1), mensajero.getString(2), mensajero.getString(3), mensajero.getString(4), 
                        mensajero.getString(5),mensajero.getString(6),mensajero.getString(7),mensajero.getString(8),mensajero.getString(9),mensajero.getString(10));
                listaAsi.add(asiVO);
            }

        } catch (SQLException e) {
            Logger.getLogger(asignarServicioDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(asignarServicioDAO.class.getName()).log(Level.SEVERE, null, e);

            }

        }
        return listaAsi;
    }
     
     public ArrayList<asignarServicioVO> listarTerminados() {

        ArrayList<asignarServicioVO> listaAsi = new ArrayList<>();
        try {
            conexion = this.obtenerConexion();
            sql = "select asi.id_Asignar, mas.Nombre, servi.Nombre, pelu.Nombre ,asi.nombrePeluquero,asi.nombreMascota,nombreServicio,concat(clie.Nombres,' ',clie.Apellidos) as cliente,asi.fechaterminado, asi.Estado from asignarservicio as asi INNER JOIN mascota as mas on mas.id_Mascota = asi.id_Mascota INNER JOIN servicios as servi ON servi.id_Servicios = asi.id_Servicios INNER JOIN peluquero as pelu on pelu.id_Peluquero=asi.id_Peluquero INNER JOIN cliente as clie on clie.id_cliente = mas.id_cliente WHERE asi.Estado = 'terminado';";
            puente = conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {
                asignarServicioVO asiVO = new asignarServicioVO(mensajero.getString(1), mensajero.getString(2), mensajero.getString(3), mensajero.getString(4), 
                        mensajero.getString(5),mensajero.getString(6),mensajero.getString(7),mensajero.getString(8),mensajero.getString(9),mensajero.getString(10));
                listaAsi.add(asiVO);
            }

        } catch (SQLException e) {
            Logger.getLogger(asignarServicioDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(asignarServicioDAO.class.getName()).log(Level.SEVERE, null, e);

            }

        }
        return listaAsi;
    }
     
     
     /* public asignarServicioVO consultarTusServicios(String id_Usuario, String id_Peluquero) {
        asignarServicioVO asiVO = null;
        try {
            conexion = this.obtenerConexion();
            sql = "SELECT mas.Nombre, servi.Nombre, pelu.Nombre FROM asignarservicio as asi INNER JOIN mascota as mas on asi.id_Mascota=mas.id_Mascota INNER JOIN servicios as servi on asi.id_Servicios=servi.id_Servicios INNER JOIN peluquero as pelu on pelu.id_Peluquero = asi.id_Peluquero WHERE asi.id_Peluquero = ? AND pelu.id_Peluquero = ?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, id_Usuario);
            puente.setString(2, id_Peluquero);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {
                asiVO = new asignarServicioVO(mensajero.getString(1), mensajero.getString(2), mensajero.getString(3),
                        mensajero.getString(4), mensajero.getString(5) );
            }

        } catch (SQLException e) {
            Logger.getLogger(asignarServicioVO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(asignarServicioDAO.class.getName()).log(Level.SEVERE, null, e);

            }
        }
        return asiVO;
SELECT mas.Nombre, servi.Nombre, pelu.Nombre FROM asignarservicio as asi INNER JOIN mascota as mas on asi.id_Mascota=mas.id_Mascota INNER JOIN servicios as servi on asi.id_Servicios=servi.id_Servicios INNER JOIN peluquero as pelu on pelu.id_Peluquero = asi.id_Peluquero WHERE asi.id_Peluquero = ? AND pelu.id_Peluquero = ?
    }*/
      
          public ArrayList<asignarServicioVO> listarServicios(String id_Peluquero) {

        ArrayList<asignarServicioVO> listaTusServicios = new ArrayList<>();
        try {
            conexion = this.obtenerConexion();
            //sql = "SELECT * FROM `asignarservicio` WHERE id_Peluquero = ? AND Estado='pendiente'";
            sql = "SELECT asi.id_Asignar, mas.Nombre,ser.Nombre,asi.id_Peluquero, asi.nombrePeluquero,asi.nombreMascota,asi.nombreServicio,concat(clie.Nombres,' ',clie.Apellidos) as cliente,asi.fechaterminado, asi.Estado FROM `asignarservicio` as asi INNER JOIN mascota as mas on asi.id_Mascota=mas.id_Mascota INNER JOIN servicios as ser on asi.id_Servicios=ser.id_Servicios INNER JOIN cliente as clie on clie.id_cliente = mas.id_cliente WHERE asi.id_Peluquero = ? AND asi.Estado='pendiente';";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, id_Peluquero);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {
                asignarServicioVO asiVO = new asignarServicioVO(mensajero.getString(1), mensajero.getString(2), mensajero.getString(3), mensajero.getString(4),
                        mensajero.getString(5),mensajero.getString(6),mensajero.getString(7),mensajero.getString(8),mensajero.getString(9),mensajero.getString(10));
                listaTusServicios.add(asiVO);
            }

        } catch (SQLException e) {
            Logger.getLogger(asignarServicioDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(asignarServicioDAO.class.getName()).log(Level.SEVERE, null, e);

            }

        }
        return listaTusServicios;
    }
          
          
       public asignarServicioVO terminado(String id_Asignar) {
           asignarServicioVO asignarServicioVO = null;
            try {
             conexion = this.obtenerConexion();
            sql = "update asignarservicio set fechaterminado = current_timestamp, estado='terminado' where id_Asignar=?";
            puente = conexion.prepareStatement(sql);
            
 
            puente.setString(1, id_Asignar);
   
            puente.executeUpdate();
            operacion = true;

        } catch (SQLException e) {
            Logger.getLogger(ServiciosDAO.class.getName()).log(Level.SEVERE, null, e);
        } 

        return asignarServicioVO;

    }    
       
        public asignarServicioVO EliminarAsignacion(String id_Asignar) {
           asignarServicioVO asignarServicioVO = null;
            try {
                conexion = this.obtenerConexion();
            sql = "DELETE FROM asignarservicio WHERE id_Asignar = ?;";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, id_Asignar);
   
            puente.executeUpdate();
            operacion = true;

        } catch (SQLException e) {
            Logger.getLogger(ServiciosDAO.class.getName()).log(Level.SEVERE, null, e);
        } 

        return asignarServicioVO;

    }  

    @Override
    public boolean agregarRegistro() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

 
    
}
