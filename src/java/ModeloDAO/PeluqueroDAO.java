 /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;


import ModeloVO.PeluqueroVO;
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
public class PeluqueroDAO extends ConexionBd implements Crud{
    
    
    
     //1.Declarar
    //definir objetos
    private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;

    //variables para las operaciones
    private boolean operacion = false;
    private String sql;

    //declarar las variables 
    private String id_Peluquero = "", Nombre = "", apellido = "", Telefono="", Direccion="", Correo="", Estado="", id_Usuario="";

    public PeluqueroDAO() {
    }
    
    
     
    //2. Método principal para recibir datos del VO
    public PeluqueroDAO(PeluqueroVO peluVO) {
        super();
        //conexion 
        try {
            conexion = this.obtenerConexion();

            //traer los datos del VO
            id_Peluquero = peluVO.getId_Peluquero();
            Nombre = peluVO.getNombre();
            apellido = peluVO.getApellido();
            Telefono = peluVO.getTelefono();
            Direccion = peluVO.getDireccion();
            Correo = peluVO.getCorreo();
            Estado = peluVO.getEstado();
            id_Usuario = peluVO.getId_Usuario();
        } catch (Exception e) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);

        }

    }
    
        @Override
    public boolean agregarRegistro() {
        try {
            sql = "insert into peluquero values (?,?,?,?,?,?,?,?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, id_Peluquero);
            puente.setString(2, Nombre);
            puente.setString(3, apellido);
            puente.setString(4, Telefono);
            puente.setString(5, Direccion);
            puente.setString(6, Correo);
            puente.setString(7, Estado);
            puente.setString(8, id_Usuario);
            puente.executeUpdate();
            operacion = true;

        } catch (SQLException e) {
            Logger.getLogger(PeluqueroDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (Exception e) {
                Logger.getLogger(PeluqueroDAO.class.getName()).log(Level.SEVERE, null, e);

            }
        }

        return operacion;
    }

    @Override
    public boolean actualizarRegistro() {
        try {
            sql = "update peluquero set Nombre=?, apellido=?, Telefono=?, Direccion=?, Correo=?, Estado=?, id_Usuario=? where id_Peluquero=?";
            puente = conexion.prepareStatement(sql);
            
            puente.setString(1, Nombre);
            puente.setString(2, apellido);
            puente.setString(3, Telefono);
            puente.setString(4, Direccion);
            puente.setString(5, Correo);
            puente.setString(6, Estado);
            puente.setString(7, id_Usuario);
            puente.setString(8, id_Peluquero);
            
            puente.executeUpdate();
            operacion = true;

        } catch (SQLException e) {
            Logger.getLogger(PeluqueroDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (Exception e) {
                Logger.getLogger(PeluqueroDAO.class.getName()).log(Level.SEVERE, null, e);

            }
        }

        return operacion;
    }

   @Override
    public boolean eliminarRegistro() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
      
       public PeluqueroVO inabilitar(String id_Peluquero) {
           PeluqueroVO peluVO = null;
            try {
            sql = "update peluquero set estado='inactivo' where id_Peluquero=?";
            puente = conexion.prepareStatement(sql);
            
 
            puente.setString(1, id_Peluquero);
   
            puente.executeUpdate();
            operacion = true;

        } catch (SQLException e) {
            Logger.getLogger(PeluqueroDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (Exception e) { 
                Logger.getLogger(PeluqueroDAO.class.getName()).log(Level.SEVERE, null, e);

            }
        }

        return peluVO;

    }

    public PeluqueroVO consultarpelu(String id_Peluquero) {
        PeluqueroVO peluVO = null;
        try {
            conexion = this.obtenerConexion();
            sql = "select * from peluquero where id_Peluquero=?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, id_Peluquero);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {
                peluVO = new PeluqueroVO(mensajero.getString(1), mensajero.getString(2), mensajero.getString(3), mensajero.getString(4), 
                        mensajero.getString(5), mensajero.getString(6), mensajero.getString(7),mensajero.getString(8) );
            }

        } catch (SQLException e) {
            Logger.getLogger(PeluqueroVO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(PeluqueroDAO.class.getName()).log(Level.SEVERE, null, e);

            }
        }
        return peluVO;

    }

    public ArrayList<PeluqueroVO> listar() {

        ArrayList<PeluqueroVO> listaPelu = new ArrayList<>();
        try {
            conexion = this.obtenerConexion();
            sql = "select * from peluquero where estado='activo'";
            puente = conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {
                PeluqueroVO peluVO = new PeluqueroVO(mensajero.getString(1), mensajero.getString(2), mensajero.getString(3), mensajero.getString(4), 
                        mensajero.getString(5), mensajero.getString(6), mensajero.getString(7),mensajero.getString(8));
                listaPelu.add(peluVO);
            }

        } catch (SQLException e) {
            Logger.getLogger(PeluqueroDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(PeluqueroDAO.class.getName()).log(Level.SEVERE, null, e);

            }

        }
        return listaPelu;
    }
    
}
