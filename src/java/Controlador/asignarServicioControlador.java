/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import ModeloDAO.MascotaDAO;
import ModeloDAO.PeluqueroDAO;
import ModeloDAO.ServiciosDAO;
import ModeloDAO.asignarServicioDAO;
import ModeloVO.MascotaVO;
import ModeloVO.PeluqueroVO;
import ModeloVO.ServiciosVO;
import ModeloVO.asignarServicioVO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author DIEGO
 */
@WebServlet(name = "asignarServicioControlador", urlPatterns = {"/asignarServicio"})
public class asignarServicioControlador extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    MascotaVO masVO = new MascotaVO();
    MascotaDAO masDAO = new MascotaDAO();

    PeluqueroVO peluVO = new PeluqueroVO();
    PeluqueroDAO peluDAO = new PeluqueroDAO();

    ServiciosVO serVO = new ServiciosVO();
    ServiciosDAO serDAO = new ServiciosDAO();

    asignarServicioVO asiVO = new asignarServicioVO();
    asignarServicioDAO asignarDAO = new asignarServicioDAO();

    List<asignarServicioVO> lista = new ArrayList<>();


    String nombrePelu;
    String nombreMas;
    String nombreSer;
    String peluquero;
    String mascota;
    String servicio;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        //1. Recibir datos de la vista
        String id_Asignar = request.getParameter("id_Asignar");
        String Estado = request.getParameter("Estado");
        int opcion = Integer.parseInt(request.getParameter("opcion"));

        switch (opcion) {

            case 1: //Agregar registro
                if (asignarDAO.agregarRegistro()) {
                    request.setAttribute("mensajeExito", "Servicio asignado");
                } else {
                    request.setAttribute("mensajeError", "Servicio no asignado");
                }
                request.getRequestDispatcher("registrarAsignacionServicio.jsp").forward(request, response);
                break;

            case 3: //consultar id
                asiVO = asignarDAO.EliminarAsignacion(id_Asignar);
                if (asiVO != null) {
                    request.setAttribute("id_Asignar", request.getParameter("id_Asignar"));
                    request.setAttribute("datosConsultados", asiVO);
                    request.getRequestDispatcher("asignarServicio.jsp").forward(request, response);
                } else {
                    request.setAttribute("mensajeError", "");
                    request.getRequestDispatcher("asignarServicio.jsp").forward(request, response);
                }
                break;
            case 4: //inabilitar registro
                asiVO = asignarDAO.terminado(id_Asignar);
                if (asiVO != null) {
                    request.setAttribute("admin", asiVO);
                    request.setAttribute("mensajeExito", "Servicio terminado");

                } else {
                    request.setAttribute("mensajeError", "");
                }
                request.getRequestDispatcher("tusServicios.jsp").forward(request, response);
                break;
            /*BUSCAR MASCOTA*/
            case 5:
                String id_Mascota = request.getParameter("id_Mascota");
                masVO.setId_Mascota(id_Mascota);
                masVO = masDAO.consultarMascota(id_Mascota);

                request.setAttribute("masVO", masVO);
                request.setAttribute("peluVO", peluVO);

                request.setAttribute("lista", lista);
                request.getRequestDispatcher("asignarServisRegister.jsp").forward(request, response);
                break;
            /*BUSCAR Peluquero*/
            case 6:
                String id_Peluquero = request.getParameter("id_Peluquero");
                peluVO.setId_Peluquero(id_Peluquero);
                peluVO = peluDAO.consultarpelu(id_Peluquero);
                request.setAttribute("peluVO", peluVO);
                request.setAttribute("lista", lista);
                request.getRequestDispatcher("asignarServisRegister.jsp").forward(request, response);

                break;
            /*BUSCAR SERVICIO*/
            case 7:
                String id_Servicio = request.getParameter("id_Servicio");
                serVO.setId_Servicio(id_Servicio);
                serVO = serDAO.consultarServicios(id_Servicio);
                request.setAttribute("peluVO", peluVO);
                request.setAttribute("masVO", masVO);
                request.setAttribute("serVO", serVO);
                request.setAttribute("lista", lista);
                request.getRequestDispatcher("asignarServisRegister.jsp").forward(request, response);

                break;

            case 8:
                request.setAttribute("peluVO", peluVO);

                /*id = asiVO.getId_Asignar();*/
             
                peluquero = request.getParameter("id_Peluquero");
                nombrePelu = request.getParameter("nombrePeluquero");
                mascota = request.getParameter("id_Mascota");
                nombreMas = request.getParameter("nombreMascota");
                servicio = request.getParameter("id_Servicio");
                nombreSer = request.getParameter("nombreServicio");

                asiVO = new asignarServicioVO();
                /*asiVO.setId_Asignar(id);*/

            
                asiVO.setId_Peluquero(peluquero);
                asiVO.setNombrePeluquero(nombrePelu);
                asiVO.setId_Mascota(mascota);
                asiVO.setNombreMascota(nombreMas);
                asiVO.setId_Servicio(servicio);
                asiVO.setNombreServicio(nombreSer);
                lista.add(asiVO);

                request.setAttribute("lista", lista);
                request.getRequestDispatcher("asignarServisRegister.jsp").forward(request, response);
                break;

            case 9:

                //Guardar Venta
                for (int i = 0; i < lista.size(); i++) {
                    asiVO = new asignarServicioVO();

                    asiVO.setId_Mascota(lista.get(i).getId_Mascota());
                    asiVO.setId_Servicio(lista.get(i).getId_Servicio());
                    asiVO.setId_Peluquero(lista.get(i).getId_Peluquero());
                    asiVO.setNombrePeluquero(lista.get(i).getNombrePeluquero());
                    asiVO.setNombreMascota(lista.get(i).getNombreMascota());
                    asiVO.setNombreServicio(lista.get(i).getNombreServicio());

                    /*asignarDAO.registrarCISI(asiVO);*/
                    if (asignarDAO.registrarCISI(asiVO)) {
                        request.setAttribute("mensajeExito", "Servicio asignado");
                    } else {
                        request.setAttribute("mensajeError", "Servicio no asignado");
                    }

                }

                lista = new ArrayList<>();
                request.getRequestDispatcher("asignarServicio.jsp").forward(request, response);

                break;

            case 10:

                  request.getRequestDispatcher("asignarServicio.jsp").forward(request, response);

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
