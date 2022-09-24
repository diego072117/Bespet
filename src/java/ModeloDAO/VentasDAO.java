/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import ModeloVO.VentasVO;
import Util.ConexionBd;
import Util.Crud;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author DIEGO
 */
public class VentasDAO extends ConexionBd implements Crud{

    //1.Declarar
    //definir objetos
    private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;

    //variables para las operaciones
    private boolean operacion = false;
    private String sql;

    //declarar las variables 
    private String id_venta = "", id_cliente = "", id_Peluquero = "", id_Productos = "",
            Precio = "", Cantidad = "", Subtotal = "", Monto = "", Estado = "";

    //Constructor vacio
    public VentasDAO() {
    }

    public VentasDAO(VentasVO venVO) {
        super();
        //conexion 
        try {
            conexion = this.obtenerConexion();

            //traer los datos del VO
            id_venta = venVO.getId_venta();
            id_cliente = venVO.getId_cliente();
            id_Peluquero = venVO.getId_Peluquero();
            id_Productos = venVO.getId_Productos();
            Precio = venVO.getPrecio();
            Cantidad = venVO.getCantidad();
            Subtotal = venVO.getSubtotal();
            Monto = venVO.getMonto();
            Estado = venVO.getEstado();

        } catch (Exception e) {
            Logger.getLogger(VentasDAO.class.getName()).log(Level.SEVERE, null, e);

        }

    }
        @Override
    public boolean agregarRegistro() {
        try {
            sql = "insert into venta values (?,?,?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, Monto);
            puente.setString(2, id_Peluquero);
            puente.setString(3, id_cliente);
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
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean eliminarRegistro() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
     public boolean guardarVenta(VentasVO ve) {
        String sql = "insert into venta(Monto, id_Peluquero, id_cliente)values(?,?,?)";
        try {
            puente = conexion.prepareStatement(sql);
            puente.setString(1, Monto);
            puente.setString(2, id_Peluquero);
            puente.setString(3, id_cliente);
            puente.executeUpdate();
            operacion = true;
        } catch (SQLException e) {
            System.out.println("Error:" + e);
        }
        return operacion;
    }

    public boolean guardarDetalleventas(VentasVO venta) {
        String sql = "insert into detalle_venta(PrecioVenta, id_Productos,id_Venta, PrecioVenta)values(?,?,?)";
        try {
            puente = conexion.prepareStatement(sql);
            puente.setString(1, Precio);
            puente.setString(2, id_Productos);
            puente.setString(3, id_venta);
            puente.executeUpdate();
            operacion = true;
        } catch (SQLException e) {
            System.out.println("Error:" + e);
        }
        return operacion;
    }

    


}
