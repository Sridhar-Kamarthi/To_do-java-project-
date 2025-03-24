// LogoutServlet.java
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LogoutServlet")
public class logoutServlet extends HttpServlet {
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    response.setContentType("text/html");
    PrintWriter out = response.getWriter();
    
    // Get the current session, do not create a new one
    HttpSession session = request.getSession(false); 
    
    if (session != null) {
      session.invalidate(); // Invalidate session if it exists
    }
    
    // Redirect to Login.jsp instead of forwarding
    response.sendRedirect("Login.jsp"); 
  }
}
