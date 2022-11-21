/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import ModeloDAO.PeluqueroDAO;
import ModeloVO.PeluqueroVO;
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
@WebServlet(name = "PeluqueroControlador", urlPatterns = {"/Peluquero"})
public class PeluqueroControlador extends HttpServlet {

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

        String id_Peluquero = request.getParameter("id_Peluquero");
        String Nombre = request.getParameter("Nombre");
        String apellido = request.getParameter("Apellido");
        String Telefono = request.getParameter("Telefono");
        String Direccion = request.getParameter("Direccion");
        String Correo = request.getParameter("Correo");
        String Estado = request.getParameter("Estado");
        String id_Usuario = request.getParameter("Usuario");
        int opcion = Integer.parseInt(request.getParameter("opcion"));
           //2. ¿Quién tiene los datos de forma segura? VO
        PeluqueroVO peluVO = new PeluqueroVO(id_Peluquero, Nombre, apellido, Telefono, Direccion, Correo, Estado, id_Usuario);

        //3. ¿Quién hace las operaciones? DAO
        PeluqueroDAO peluDAO = new PeluqueroDAO(peluVO);

        //4. dministrar Operaciones
         switch(opcion){
            
            case 1: //Agregar registro
                if (peluDAO.agregarRegistro()) {
                    request.setAttribute("mensajeExito", "El Peluquero se registro correctamente");
                }else{
                    request.setAttribute("mensajeError", "El Peluquero no se registro correctamente");
                }
                request.getRequestDispatcher("Peluquero.jsp").forward(request, response);
                break;
                
            case 2: //Actualizar registro
                
                if (peluDAO.actualizarRegistro()) {
           
                    request.setAttribute("mensajeExito", "El Peluquero se actualizo correctamente");
                }else{
                    request.setAttribute("mensajeError", "El Peluquero no se actualizo correctamente");
                }
                request.getRequestDispatcher("Peluquero.jsp").forward(request, response);
                break;
                
            case 3: //consultar id
                peluVO = peluDAO.consultarpelu(id_Peluquero);
                if (peluVO != null) {
                    request.setAttribute("id_Peluquero",request.getParameter("id_Peluquero"));
                    request.setAttribute("datosConsultados", peluVO);
                    request.getRequestDispatcher("actualizarPeluquero.jsp").forward(request, response);
                }else{
                    request.setAttribute("mensajeError", "¡El peluquero no existe!");
                    request.getRequestDispatcher("Peluquero.jsp").forward(request, response);
                }
                break;     
            
            case 4: //Eliminar registro
                peluVO = peluDAO.inabilitar(id_Peluquero);
                if (peluVO != null) {
                    request.setAttribute("pelu", peluVO);
                    request.setAttribute("mensajeExito", "Peluquero eliminado");
                    
                }else{
                    request.setAttribute("mensajeError", "");
                }
                request.getRequestDispatcher("Peluquero.jsp").forward(request, response);
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
