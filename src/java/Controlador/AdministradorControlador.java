/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import ModeloDAO.AdministradorDAO;
import ModeloVO.AdministradorVO;
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
@WebServlet(name = "AdministradorControlador", urlPatterns = {"/Administrador"})
public class AdministradorControlador extends HttpServlet {

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

        String id_Administrador = request.getParameter("id_Administrador");
        String Nombre = request.getParameter("Nombre");
        String apellido = request.getParameter("apellido");
        String Telefono = request.getParameter("Telefono");
        String Direccion = request.getParameter("Direccion");
        String Correo = request.getParameter("Correo");
        String id_Usuario = request.getParameter("Usuario");
        String estado = request.getParameter("estado");
        int opcion = Integer.parseInt(request.getParameter("opcion"));
           //2. ¿Quién tiene los datos de forma segura? VO
        AdministradorVO adminVO = new AdministradorVO(id_Administrador, Nombre, apellido, Telefono, Direccion, Correo, id_Usuario, estado);

        //3. ¿Quién hace las operaciones? DAO
        AdministradorDAO adminDAO = new AdministradorDAO(adminVO);

        //4. dministrar Operaciones
         switch(opcion){
            
            case 1: //Agregar registro
                if (adminDAO.agregarRegistro()) {
                    request.setAttribute("mensajeExito", "El Administrador se registro correctamente");
                }else{
                    request.setAttribute("mensajeError", "El Administrador no se registro correctamente");
                }
                request.getRequestDispatcher("RegistrarAdministrador.jsp").forward(request, response);
                break;
                
            case 2: //Actualizar registro
                
                if (adminDAO.actualizarRegistro()) {
           
                    request.setAttribute("mensajeExito", "El Administrador se actualizo correctamente");
                }else{
                    request.setAttribute("mensajeError", "El Administrador no se actualizo correctamente");
                }
                request.getRequestDispatcher("Administrador.jsp").forward(request, response);
                break;
                
            case 3: //consultar id
                adminVO = adminDAO.consultaradmin(id_Administrador);
                if (adminVO != null) {
                     request.setAttribute("id_Administrador",request.getParameter("id_Administrador"));
                    request.setAttribute("datosConsultados", adminVO);
                    request.getRequestDispatcher("actualizarAdministrador.jsp").forward(request, response);
                }else{
                     request.setAttribute("mensajeError", "¡El administrador no existe!");
                       request.getRequestDispatcher("Administrador.jsp").forward(request, response);
                }
                break;     
            
            case 4: //inabilitar registro
                adminVO = adminDAO.inabilitar(id_Administrador);
                if (adminVO != null) {
                    request.setAttribute("admin", adminVO);
                    request.setAttribute("mensajeExito", "Administrador eliminado");
                    
                }else{
                    request.setAttribute("mensajeError", "");
                }
                request.getRequestDispatcher("Administrador.jsp").forward(request, response);
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
