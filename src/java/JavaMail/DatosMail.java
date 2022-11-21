/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package JavaMail;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author dfriv
 */
@WebServlet(name = "DatosMail", urlPatterns = {"/DatosMail"})
public class DatosMail extends HttpServlet {

    private String host, puerto, usuarioCorreo, clave;
    public void init(){
    
        ServletContext context = getServletContext();
        host = context.getInitParameter("host");
        puerto = context.getInitParameter("puerto");
        usuarioCorreo = context.getInitParameter("correo");
        clave = context.getInitParameter("clave");
        
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
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       String receptor = request.getParameter("textReceptor");
       String asunto = request.getParameter("textAsunto");
       String contenido =request.getParameter("textMensaje");
       String resultadoMensaje = "";
        try {
            PropiedadesCorreo.envioCorreo(host, puerto, usuarioCorreo, clave, receptor, asunto, contenido);
            resultadoMensaje="el mensaje se envio de forma correcta";
        } catch (Exception e) {
            e.printStackTrace();
            resultadoMensaje="Error al enviar el mensaje" + e.getMessage();
        }finally{
            request.setAttribute("mensaje", resultadoMensaje);
            getServletContext().getRequestDispatcher("/resultado.jsp").forward(request, response);
        }
    }


 

}
