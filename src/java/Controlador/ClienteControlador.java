/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import ModeloDAO.ClienteDAO;
import ModeloVO.ClienteVO;
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
@WebServlet(name = "Cliente", urlPatterns = {"/Cliente"})
public class ClienteControlador extends HttpServlet {

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
        
        String id_cliente = request.getParameter("id_cliente");
        String Nombres = request.getParameter("Nombres");
        String apellidos = request.getParameter("apellidos");
        String Correo = request.getParameter("correo");
        String Estado = request.getParameter("estado");
        int opcion = Integer.parseInt(request.getParameter("opcion"));
        
          //2. ¿Quién tiene los datos de forma segura? VO
        ClienteVO clieVO = new ClienteVO(id_cliente, Nombres, apellidos, Correo, Estado);

        //3. ¿Quién hace las operaciones? DAO
        ClienteDAO clieDAO = new ClienteDAO(clieVO);
        
         //4. dministrar Operaciones
         switch(opcion){
            
            case 1: //Agregar registro
                if (clieDAO.agregarRegistro()) {
                    request.setAttribute("mensajeExito", "El cliente se registro correctamente");
                }else{
                    request.setAttribute("mensajeError", "El cliente no se registro correctamente");
                }
                request.getRequestDispatcher("RegistrarCliente.jsp").forward(request, response);
                break;
                
            case 2: //Actualizar registro
                
                if (clieDAO.actualizarRegistro()) {
           
                    request.setAttribute("mensajeExito", "El cliente se actualizo correctamente");
                }else{
                    request.setAttribute("mensajeError", "El cliente no se actualizo correctamente");
                }
                request.getRequestDispatcher("Cliente.jsp").forward(request, response);
                break;
                
            case 3: //consultar id
                clieVO = clieDAO.consultarclie(id_cliente);
                if (clieVO != null) {
                     request.setAttribute("id_cliente",request.getParameter("id_cliente"));
                    request.setAttribute("datosConsultados", clieVO);
                    request.getRequestDispatcher("actualizarCliente.jsp").forward(request, response);
                }else{
                     request.setAttribute("mensajeError", "¡El cliente no existe!");
                       request.getRequestDispatcher("Cliente.jsp").forward(request, response);
                }
                break;     
            
            case 4: //Eliminar registro
                clieVO = clieDAO.inabilitar(id_cliente);
                if (clieVO != null) {
                    
                    request.setAttribute("mensajeExito", "cliente eliminado");
                    
                }else{
                    request.setAttribute("mensajeError", "");
                }
                request.getRequestDispatcher("Cliente.jsp").forward(request, response);
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
