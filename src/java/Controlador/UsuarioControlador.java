/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import ModeloDAO.RolDAO;
import ModeloDAO.UsuarioDAO;
import ModeloVO.RolVO;
import ModeloVO.UsuarioVO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author DIEGO
 */
@WebServlet(name = "UsuarioControladorr", urlPatterns = {"/Usuario"})
public class UsuarioControlador extends HttpServlet {

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
        //1. Recibir datos de la vista
        String id_Usuario = request.getParameter("id_Usuario");
        String Usuario = request.getParameter("textUsuario");
        String Password = request.getParameter("textClave");
        int opcion = Integer.parseInt(request.getParameter("opcion"));
        // id_Usuario , Usuario, Password,id_Rol 
        //2. ¿quien tiene los datos de forma segura? VO
        UsuarioVO usuVO = new UsuarioVO(id_Usuario, Usuario, Password);
        //3. ¿quien hace las operaciones? DAO
        UsuarioDAO usuDAO = new UsuarioDAO(usuVO);
        //4. administrar operaciones 
        switch (opcion) {

            case 1: //Agregar registro
                if (usuDAO.agregarRegistro()) {
                    request.setAttribute("mensajeExito", "El usuario se registro correctamente");
                } else {
                    request.setAttribute("mensajeError", "El usuario no se registro correctamente");
                }
                request.getRequestDispatcher("registrarUsuario.jsp").forward(request, response);
                break;
            case 2: //Actualizar registro
                if (usuDAO.actualizarRegistro()) {
                    request.setAttribute("mensajeExito", "El Usuario se actualizo correctamente");
                } else {
                    request.setAttribute("mensajeError", "El Usuario no se actualizo correctamente");
                }
                request.getRequestDispatcher("Usuarios.jsp").forward(request, response);
                break;

            case 3: //consultar udusrio
                usuVO = usuDAO.consultarusu(id_Usuario);
                if (usuVO != null) {
                    request.setAttribute("id_Usuario",request.getParameter("id_Usuario"));
                    request.setAttribute("datosConsultados", usuVO);
                    request.getRequestDispatcher("actualizarUsuario.jsp").forward(request, response);
                } else {
                    request.setAttribute("mensajeError", "¡El Usuario no existe!");
                    request.getRequestDispatcher("Usuarios.jsp").forward(request, response);
                }
                break;
            
              case 4: {
                
            if (usuDAO.inicioSesion(Usuario, Password)) {
                
                
                HttpSession misesion = request.getSession(true);
                usuVO = new UsuarioVO(id_Usuario, Usuario, Password);
               
                RolDAO rolDAO = new RolDAO();
                RolVO rolVO = new RolVO();
                
                ArrayList<RolVO>listaRol = rolDAO.listar(Usuario); 
                 for (int i = 0; i < listaRol.size(); i++) {
                    
                    rolVO = listaRol.get(i);
                }
                 String usuid = rolVO.getId_Rol();
                 String roltipo = rolVO.getRolTiPo();
                 
                 misesion.setAttribute("datosUsuario", usuVO);
                
                if (listaRol.size() > 1) {
                    request.getRequestDispatcher("menuAdmin.jsp").forward(request, response);
                }
                
                if(roltipo.equals("Administrador")){
                    request.getRequestDispatcher("menuAdmin.jsp").forward(request, response);
                }else if(roltipo.equals("Peluquero")){
                    request.getRequestDispatcher("menuPelu.jsp").forward(request, response);
                }
               
                
            }else{
                request.setAttribute("mensajeError", "¡Por favor, verifique sus datos de acceso!");
                request.getRequestDispatcher("index.jsp").forward(request, response);
            }
        }
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
