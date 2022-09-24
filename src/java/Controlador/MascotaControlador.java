/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;


import ModeloDAO.MascotaDAO;
import ModeloVO.MascotaVO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
    
/**
 *
 * @author Edwin
 */
@WebServlet(name = "MascotaControlador", urlPatterns = {"/Mascota"})
public class MascotaControlador extends HttpServlet {

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
        String id_Mascota = request.getParameter("id_Mascota");
        String Nombre = request.getParameter("Nombre");
        String Edad = request.getParameter("Edad");
        String Tipo = request.getParameter("Tipo");
        String Raza = request.getParameter("Raza");
        String Estado = request.getParameter("Estado");
        String id_cliente = request.getParameter("id_cliente");
        int opcion = Integer.parseInt(request.getParameter("opcion"));
           //2. ¿Quién tiene los datos de forma segura? VO
        MascotaVO mascotaVO = new MascotaVO(id_Mascota, Nombre, Edad, Tipo, Raza, Estado, id_cliente);

        //3. ¿Quién hace las operaciones? DAO
        MascotaDAO mascotaDAO = new MascotaDAO(mascotaVO);

        //4. dministrar Operaciones
         switch(opcion){
            
            case 1: //Agregar registro
                if (mascotaDAO.agregarRegistro()) {
                    request.setAttribute("mensajeExito", "La mascota se registro correctamente");
                }else{
                    request.setAttribute("mensajeError", "La mascota no se registro correctamente");
                }
                request.getRequestDispatcher("Mascota.jsp").forward(request, response);
                break;
                
            case 2: //Actualizar registro
                
                if (mascotaDAO.actualizarRegistro()) {
           
                    request.setAttribute("mensajeExito", "El Mascota se actualizo correctamente");
                }else{
                    request.setAttribute("mensajeError", "El Mascota no se actualizo correctamente");
                }
                request.getRequestDispatcher("Mascota.jsp").forward(request, response);
                break;
                
            case 3: //consultar id
                mascotaVO = mascotaDAO.consultarMascota(id_Mascota);
                if (mascotaVO != null) {
                     request.setAttribute("id_Mascota",request.getParameter("id_Mascota"));
                    request.setAttribute("datosConsultados", mascotaVO);
                    request.getRequestDispatcher("ActualizarMascota.jsp").forward(request, response);
                }else{
                     request.setAttribute("mensajeError", "¡El administrador no existe!");
                       request.getRequestDispatcher("Mascota.jsp").forward(request, response);
                }
                break;     
            
            case 4: //Eliminar registro
                mascotaVO = mascotaDAO.inabilitar(id_Mascota);
                if (mascotaVO != null) {
                    request.setAttribute("mas", mascotaVO);
                    request.setAttribute("mensajeExito", "Administrador eliminado");
                    
                }else{
                    request.setAttribute("mensajeError", "");
                }
                request.getRequestDispatcher("Mascota.jsp").forward(request, response);
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
