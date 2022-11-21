/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;


import ModeloDAO.ServiciosDAO;
import ModeloVO.ServiciosVO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Edwin
 */
@WebServlet(name = "ServiciosControlador", urlPatterns = {"/Servicios"})
public class ServiciosControlador extends HttpServlet {

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
        String id_Servicio = request.getParameter("id_Servicio");
        String Nombre = request.getParameter("Nombre");
        String Precio = request.getParameter("Precio");
        String img = request.getParameter("img");
        String Estado = request.getParameter("estado");
        
        int opcion = Integer.parseInt(request.getParameter("opcion"));
           //2. ¿Quién tiene los datos de forma segura? VO
        ServiciosVO serviciosVO = new ServiciosVO(id_Servicio, Nombre, Precio,img ,Estado);

        //3. ¿Quién hace las operaciones? DAO
        ServiciosDAO serviciosDAO = new ServiciosDAO(serviciosVO);

        //4. dministrar Operaciones
         switch(opcion){
            
            case 1: //Agregar registro
                if (serviciosDAO.agregarRegistro()) {
                    request.setAttribute("mensajeExito", "El servicio se registro correctamente");
                }else{
                    request.setAttribute("mensajeError", "El servicio no se registro correctamente");
                }
                request.getRequestDispatcher("servicios.jsp").forward(request, response);
                break;
                
            case 2: //Actualizar registro
                
                if (serviciosDAO.actualizarRegistro()) {
           
                    request.setAttribute("mensajeExito", "El Servicio se actualizo correctamente");
                }else{
                    request.setAttribute("mensajeError", "El Servicio no se actualizo correctamente");
                }
                request.getRequestDispatcher("servicios.jsp").forward(request, response);
                break;
                
            case 3: //consultar id
                serviciosVO = serviciosDAO.consultarServicios(id_Servicio);
                if (serviciosVO != null) {
                     request.setAttribute("id_Servicio",request.getParameter("id_Servicio"));
                    request.setAttribute("datosConsultados", serviciosVO);
                    request.getRequestDispatcher("ActualizarServicio.jsp").forward(request, response);
                }else{
                     request.setAttribute("mensajeError", "¡El servicio no existe!");
                       request.getRequestDispatcher("servicios.jsp").forward(request, response);
                }
                break;     
            
            case 4: //Eliminar registro
                serviciosVO = serviciosDAO.inabilitar(id_Servicio);
                if (serviciosVO != null) {
                    request.setAttribute("Servicio", serviciosVO);
                    request.setAttribute("mensajeExito", "Servicio eliminado");
                    
                }else{
                    request.setAttribute("mensajeError", "");
                }
                request.getRequestDispatcher("servicios.jsp").forward(request, response);
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
