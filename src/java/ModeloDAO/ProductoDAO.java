/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import ModeloVO.PeluqueroVO;
import ModeloVO.ProductoVO;
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
public class ProductoDAO extends ConexionBd implements Crud {

    //1.Declarar
    //definir objetos
    private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;

    //variables para las operaciones
    private boolean operacion = false;
    private String sql;

    //declarar las variables 
    private String id_Producto = "", Nombre = "", Stock = "", Precio = "", Estado = "";

    public ProductoDAO() {
    }

    //2. Método principal para recibir datos del VO
    public ProductoDAO(ProductoVO prodVO) {
        super();
        //conexion 
        try {
            conexion = this.obtenerConexion();

            //traer los datos del VO
            id_Producto = prodVO.getId_Producto();
            Nombre = prodVO.getNombre();
            Stock = prodVO.getStock();
            Precio = prodVO.getPrecio();
            Estado = prodVO.getEstado();

        } catch (Exception e) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);

        }

    }

    @Override
    public boolean agregarRegistro() {
        try {
            sql = "INSERT INTO productos (Nombre,Stock,Precio) VALUES (?,?,?)";
            puente = conexion.prepareStatement(sql);
     
            puente.setString(1, Nombre);
            puente.setString(2, Stock);
            puente.setString(3, Precio);

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
            sql = "update productos set Nombre=?, Stock=?, Precio=?, Estado='activo' where id_Productos=?";
            puente = conexion.prepareStatement(sql);

            puente.setString(1, Nombre);
            puente.setString(2, Stock);
            puente.setString(3, Precio);
            puente.setString(4, id_Producto);

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

    public ProductoVO inabilitar(String id_Producto) {
        ProductoVO prodVO = null;
        try {
            sql = "update productos set estado='inactivo' where id_Productos=?";
            puente = conexion.prepareStatement(sql);

            puente.setString(1, id_Producto);

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

        return prodVO;

    }

    public ProductoVO consultarprod(String id_Producto) {
        ProductoVO prodVO = null;
        try {
            conexion = this.obtenerConexion();
            sql = "select * from productos where id_Productos=?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, id_Producto);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {
                prodVO = new ProductoVO(mensajero.getString(1), mensajero.getString(2), mensajero.getString(3), mensajero.getString(4),
                        mensajero.getString(5));
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
        return prodVO;

    }

    public ArrayList<ProductoVO> listar() {

        ArrayList<ProductoVO> listaProd = new ArrayList<>();
        try {
            conexion = this.obtenerConexion();
            sql = "select * from productos where estado='activo' ";
            puente = conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {
                ProductoVO prodVO = new ProductoVO(mensajero.getString(1), mensajero.getString(2), mensajero.getString(3), mensajero.getString(4),
                        mensajero.getString(5));
                listaProd.add(prodVO);
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
        return listaProd;
    }

}
