/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import com.sun.jdi.connect.spi.Connection;
import dal.UserDao;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.User;

/**
 *
 * @author manht
 */
@WebServlet(name = "AuthController", urlPatterns = {"/auth"})
public class AuthController extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AuthController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AuthController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
    protected void doPost(HttpServletRequest request, 
            HttpServletResponse response)
        throws ServletException, IOException {
        String type = request.getParameter("type");
        
        if(type.equals("LOGIN")){
            String userName = request.getParameter("userName");
            String password = request.getParameter("password");
            postLogin(request, response, userName, password);
        } if(type.equals("REGISTER")) {
            
            String userName = request.getParameter("userName");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            String address = request.getParameter("address");
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String password = request.getParameter("password");
            User user = new User(11, userName, email, 
                    phone, address, firstName, lastName);
            postRegister(request, response, user, password);
        }
        
    }

    protected void postLogin(HttpServletRequest request, HttpServletResponse response,String email, String password)
            throws ServletException, IOException {
		try {
			UserDao userDao = new UserDao();
			int status = userDao.checkLoginUser(email, password);
			switch (status) {
			case 0:// login success
				User user = userDao.getUser(email);
				HttpSession session = request.getSession();
				session.setAttribute("isLogged", true);// user is logged
				session.setAttribute("user", user);
				session.setMaxInactiveInterval(60 * 60);// second
				response.sendRedirect("Home");
				break;
			case 1:// wrong password66
				request.setAttribute("loginStatus", 1);
				request.setAttribute("email", email);
				request.getRequestDispatcher("login.jsp").forward(request, response);
				break;
			case 2:// userName not found
				request.setAttribute("loginStatus", 2);
				request.setAttribute("email", email);
				request.getRequestDispatcher("login.jsp").forward(request, response);
				break;

			default:

				break;
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
    }

    protected void postRegister(HttpServletRequest request, 
            HttpServletResponse response, 
            User user,
            String password
    )
            throws ServletException, IOException {
        
        UserDao dao = new UserDao();
        if(dao.getUser(user.getEmail())!= null){
            request.setAttribute("msg", "Email is exist!!!");
            request.getRequestDispatcher("register.jsp").forward(request, response);
        } else {
            dao.createUser(user, password);
            response.sendRedirect("login.jsp");
            
        }

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
