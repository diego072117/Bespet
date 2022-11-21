/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import ModeloDAO.ProductoDAO;
import ModeloVO.ProductoVO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author DIEGO
 */
@WebServlet(name = "ProductoControlador", urlPatterns = {"/Producto"})
public class ProductoControlador extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String id_Producto = request.getParameter("id_Producto");
        String Nombre = request.getParameter("NombreProducto");
        String Precio = request.getParameter("Precio");
        String Estado = request.getParameter("Estado");
        String img = request.getParameter("img");
        int opcion = Integer.parseInt(request.getParameter("opcion"));
           //2. ¿Quién tiene los datos de forma segura? VO
        ProductoVO prodVO = new ProductoVO(id_Producto, Nombre,Precio, Estado, img);

        //3. ¿Quién hace las operaciones? DAO
        ProductoDAO prodDAO = new ProductoDAO(prodVO);
        
        
        //4. dministrar Operaciones
         switch(opcion){
            
            case 1: //Agregar registro
                if (prodDAO.agregarRegistro()) {
                    request.setAttribute("mensajeExito", "El Producto se registro correctamente");
                }else{
                    request.setAttribute("mensajeError", "El Producto no se registro correctamente");
                }
                request.getRequestDispatcher("Producto.jsp").forward(request, response);
                break;
                
            case 2: //Actualizar registro
                
                if (prodDAO.actualizarRegistro()) {
           
                    request.setAttribute("mensajeExito", "El Producto se actualizo correctamente");
                }else{
                    request.setAttribute("mensajeError", "El Producto no se actualizo correctamente");
                }
                request.getRequestDispatcher("Producto.jsp").forward(request, response);
                break;
                
            case 3: //consultar id
                prodVO = prodDAO.consultarprod(id_Producto);
                if (prodVO != null) {
                    request.setAttribute("id_Producto",request.getParameter("id_Producto"));
                    request.setAttribute("datosConsultados", prodVO);
                    request.getRequestDispatcher("actualizarProducto.jsp").forward(request, response);
                }else{
                    request.setAttribute("mensajeError", "¡El Producto no existe!");
                    request.getRequestDispatcher("Producto.jsp").forward(request, response);
                }
                break;     
            
            case 4: //Eliminar registro
                prodVO = prodDAO.inabilitar(id_Producto);
                if (prodVO != null) {
                    request.setAttribute("pelu", prodVO);
                    request.setAttribute("mensajeExito", "Producto eliminado");
                    
                }else{
                    request.setAttribute("mensajeError", "");
                }
                request.getRequestDispatcher("Producto.jsp").forward(request, response);
                break;
           
         }
        
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
