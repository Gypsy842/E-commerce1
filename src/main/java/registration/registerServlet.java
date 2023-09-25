package registration;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class registerServlet
 */
@WebServlet("/register")
public class registerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String address = request.getParameter("address");
		
		String phonNumb = request.getParameter("phn");
		String password = request.getParameter("pwd");
		String email = request.getParameter("email");
		RequestDispatcher dispatcher = null;
		
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/major1?useSSL=false","root","8420");
			PreparedStatement pst = con.prepareStatement("insert into users set firstName=?,lastName=?,address=?,phonNumb=?,password=?,email=?");
					
			pst.setString(1, firstName);
			pst.setString(2, lastName);
			pst.setString(3, address);
		
			pst.setString(4,phonNumb);
			pst.setString(5, password);
			pst.setString(6, email);

			
			int rowCount =  pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("signup.jsp");
			if (rowCount > 0) {
				request.setAttribute("status", "success");
				
			}else {
				request.setAttribute("status", "failed");
			}

			dispatcher.forward(request, response);			
		} catch (Exception e) {
				e.printStackTrace();
		}
		
		
		
	}

}
