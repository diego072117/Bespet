/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import JavaMail.PropiedadesCorreo;
import ModeloDAO.ClienteDAO;
import ModeloDAO.MascotaDAO;
import ModeloDAO.PeluqueroDAO;
import ModeloDAO.RolDAO;
import ModeloDAO.UsuarioDAO;
import ModeloDAO.asignarRolDAO;
import ModeloVO.ClienteVO;
import ModeloVO.MascotaVO;
import ModeloVO.PeluqueroVO;
import ModeloVO.RolVO;
import ModeloVO.UsuarioVO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletContext;
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
        String Usuario = request.getParameter("Correo");
        String Password = request.getParameter("textClave");
        String Estado = request.getParameter("textEstado");
        int opcion = Integer.parseInt(request.getParameter("opcion"));
        String resultadoMensaje = "";
        // id_Usuario , Usuario, Password,id_Rol 
        //2. ¿quien tiene los datos de forma segura? VO
        UsuarioVO usuVO = new UsuarioVO(id_Usuario, Usuario, Password, Estado);
        //3. ¿quien hace las operaciones? DAO
        UsuarioDAO usuDAO = new UsuarioDAO(usuVO);

        ServletContext context = getServletContext();
        String host = context.getInitParameter("host");
        String puerto = context.getInitParameter("puerto");
        String usuarioCorreo = context.getInitParameter("correo");
        String asunto = "Registro Exitoso";
        String contenido = "Hola te has registrado exitosamente, tu cuenta sera activada en 24 horas";
        String clave = context.getInitParameter("clave");

        //4. administrar operaciones 
        switch (opcion) {

            case 1: //Agregar registro
                if (usuDAO.agregarRegistro()) {
                    request.setAttribute("mensajeExito", "El usuario se registro correctamente");

                    String receptor = request.getParameter("Correo");

                    try {

                        PropiedadesCorreo.envioCorreo(host, puerto, usuarioCorreo, clave, receptor, asunto, contenido);
                        resultadoMensaje = "El mensaje se ha enviado correctamente";

                    } catch (Exception e) {

                        e.printStackTrace();
                        resultadoMensaje = "Error al intentar enviar el mensaje" + e.getMessage();

                    } finally {

                        request.setAttribute("mensaje", resultadoMensaje);
                        getServletContext().getRequestDispatcher("/Usuarios.jsp").forward(request, response);

                    }

                } else {
                    request.setAttribute("mensajeError", "El usuario no se registro correctamente");
                }
                request.getRequestDispatcher("Usuarios.jsp").forward(request, response);
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
                    request.setAttribute("id_Usuario", request.getParameter("id_Usuario"));
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
                    usuVO = new UsuarioVO(id_Usuario, Usuario, Password, Estado);

                    RolDAO rolDAO = new RolDAO();
                    RolVO rolVO = new RolVO();

                    ArrayList<RolVO> listaRol = rolDAO.listar(Usuario);
                    for (int i = 0; i < listaRol.size(); i++) {

                        rolVO = listaRol.get(i);
                    }
                    String usuid = rolVO.getId_Rol();
                    String roltipo = rolVO.getRolTiPo();

                    misesion.setAttribute("datosUsuario", usuVO);                    
                    

                    if (listaRol.size() > 1 || roltipo.equals("Administrador")) {
                        request.getRequestDispatcher("menuAdmin.jsp").forward(request, response);
                    }

                    if (roltipo.equals("Peluquero")) {
                        request.getRequestDispatcher("menuPelu.jsp").forward(request, response);

                        //id peluquero
                        PeluqueroVO peluVO = new PeluqueroVO();
                        PeluqueroDAO peluDAO = new PeluqueroDAO(peluVO);

                        peluDAO.consultarUsuPelu(usuid);

                    } else if (roltipo.equals("Cliente")) {
                        request.getRequestDispatcher("menuClien.jsp").forward(request, response);
                        //id cliente
                        ClienteVO clieVO = new ClienteVO();
                        ClienteDAO clieDAO = new ClienteDAO(clieVO);

                        clieDAO.consultarUsuCliente(usuid);
                    }

                } else {
                    request.setAttribute("mensajeError", "¡Por favor, verifique sus datos de acceso!");
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                }
            }
            break;
            case 5: //inabilitar registro
                usuVO = usuDAO.inabilitar(id_Usuario);
                if (usuVO != null) {
                    request.setAttribute("admin", usuVO);
                    request.setAttribute("mensajeExito", "Administrador eliminado");

                } else {
                    request.setAttribute("mensajeError", "");
                }
                request.getRequestDispatcher("Usuarios.jsp").forward(request, response);
                break;

            case 6:
                String idUsuario = request.getParameter("idUsuario");
                String loginUsuario = request.getParameter("loginUsuario");
                request.setAttribute("idUsuario", idUsuario);
                request.setAttribute("loginUsuario", loginUsuario);

                request.getRequestDispatcher("asignarRol.jsp").forward(request, response);
                break;

            case 7:

                RolVO rolVO = new RolVO();
                RolDAO rolDAO = new RolDAO(rolVO);
                String usuarioID = request.getParameter("usuarioID");
                String rol = request.getParameter("rol");

                if (rolDAO.agregarRegistro(rol, usuarioID)) {
                    request.setAttribute("mensajeExito", "se le asigno el rol correoctamente al usuario");
                } else {
                    request.setAttribute("mensajeError", "hubo un problema por favor intentelo de nuevo");
                }
                request.getRequestDispatcher("Usuarios.jsp").forward(request, response);
                break;

            case 8: //Agregar registro cliente
                if (usuDAO.agregarRegistro()) {
                    request.setAttribute("mensajeExito", "Te registraste correctamente, mira tu correo.");

                    String receptor = request.getParameter("Correo");

                    try {

                        PropiedadesCorreo.envioCorreo(host, puerto, usuarioCorreo, clave, receptor, asunto, contenido);
                        resultadoMensaje = "exito ";

                    } catch (Exception e) {

                        e.printStackTrace();
                        resultadoMensaje = "Error al intentar enviar el mensaje" + e.getMessage();

                    } finally {

                        request.setAttribute("mensaje", resultadoMensaje);
                        getServletContext().getRequestDispatcher("/clienteRegistra.jsp").forward(request, response);

                    }

                } else {
                    request.setAttribute("mensajeError", "El usuario no se registro correctamente");
                }
                request.getRequestDispatcher("clienteRegistra.jsp").forward(request, response);
                break;
                
                
               case 9:
                usuVO = usuDAO.consultarCorreo(Usuario);

                if (usuVO != null) {

                    request.setAttribute("datosConsultados", usuVO);
                    request.getRequestDispatcher("recuperaContrasenaTwo.jsp").forward(request, response);

                } else {
                    request.setAttribute("mensajeError", "lo sentimos revisa los campos nuevamente");
                    request.getRequestDispatcher("recuperarContrasena.jsp").forward(request, response);

                }
                break;
                
                case 10://cambiarcontraseña contraseña
                if (usuDAO.actualizarContrasena()) {

                    request.setAttribute("mensajeExito", "Contraseña actualizada");
                    request.getRequestDispatcher("recuperarContrasena.jsp").forward(request, response);
                } else {
                    request.setAttribute("mensajeError", "No se actualizo la contraseña");
                }
                request.getRequestDispatcher("recuperarContrasena.jsp").forward(request, response);
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
