package controladores;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelos.Usuario;


@WebServlet(name = "Menu", urlPatterns = {"/Menu"})
public class Menu extends HttpServlet {
  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try{
        String accion = request.getParameter("accion");
                        
        switch(accion){
            case "1": iniciarSesion(request,response);
            break;
            case "2": ingresarRequerimientos(request,response);
            break;
            case "3": consultarRequerimientos(request,response);
            break;
            case "4": cerrarRequerimientos(request,response);
            break;
        }
        
                
        }
        catch(Exception e){
            response.sendRedirect("index.jsp?mensaje="+e.getMessage());
        }
    }
       
    private void iniciarSesion(HttpServletRequest request, HttpServletResponse response) throws IOException, ClassNotFoundException, SQLException{
        String usuario = request.getParameter("usuario").trim();
        String password = request.getParameter("password").trim();
        if(usuario.isEmpty()||password.isEmpty()){
            response.sendRedirect("index.jsp?mensaje=Complete todos los campos");
        }else{
            Usuario u = new Usuario();
            u.setUsuario(usuario);
            u.setPassword(password);
            if(u.iniciarSesion()){
                HttpSession sesion = request.getSession();
                response.sendRedirect("menu.jsp");
            }else{
                response.sendRedirect("index.jsp?mensaje=credenciales incorrectas");
            }
        }   
    }  
    
    private void ingresarRequerimientos(HttpServletRequest request, HttpServletResponse response) throws IOException, ClassNotFoundException, SQLException{        
        HttpSession sesion = request.getSession();
        response.sendRedirect("ingresarRequerimientos.jsp");           
    }  
    
    private void consultarRequerimientos(HttpServletRequest request, HttpServletResponse response) throws IOException, ClassNotFoundException, SQLException{        
        HttpSession sesion = request.getSession();
        response.sendRedirect("consultarRequerimientos.jsp");           
    } 
    private void cerrarRequerimientos(HttpServletRequest request, HttpServletResponse response) throws IOException, ClassNotFoundException, SQLException{        
        HttpSession sesion = request.getSession();
        response.sendRedirect("cerrarRequerimientos.jsp");           
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
