package crud;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/showData")
public class showUserServlet extends HttpServlet {
		private final static String query = "select firstName,lastName,address,phonNumb,password,email from users";
	    @Override
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			PrintWriter pw = response.getWriter();
			response.setContentType("text/html");
	        //link the bootstrap
	       
	        pw.println("<marquee><h2 class='text-primary'>User Data</h2></marquee>");
	        //load the JDBC driver
			
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
			}catch(Exception e) {
				e.printStackTrace();
			}
				try(Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/major1","root","8420");
				PreparedStatement pst = con.prepareStatement(query);){
			//resultSet
				ResultSet rs = pst.executeQuery();
				pw.println("<div style='margin:auto; width:800px; margin-top:100px;'>");
				pw.println("<table class='table-hover table-striped'>");
				pw.println("<tr>");
				pw.println("<th>FirstName</th>");
				pw.println("<th>LastName</th>");
				pw.println("<th>Address</th>");
				pw.println("<th>PhoneNumb</th>");
				pw.println("<th>Password</th>");
				pw.println("<th>Email</th>");
				pw.println("<th>Edit</th>");
				pw.println("<th>Delete</th>");
				
				pw.println("</tr>");
				while(rs.next()) {
					pw.println("<tr>");
					pw.println("<td>"+rs.getString(1)+"</td>");
					pw.println("<td>"+rs.getString(2)+"</td>");
					pw.println("<td>"+rs.getString(3)+"</td>");
					pw.println("<td>"+rs.getString(4)+"</td>");
					pw.println("<td>"+rs.getString(5)+"</td>");
					pw.println("<td>"+rs.getString(6)+"</td>");
					//pw.println("<td><a href='editurl?id="+rs.getInt(1)+"'>Edit</a></td>");
					//pw.println("<td><a href='deleteurl?id="+rs.getInt(1)+"'>Delete</a></td>");
					pw.println("</tr>");
				}
				pw.println("</table>");
			}catch(SQLException se) {
				 pw.println("<h2 class='bg-danger text-light text-center'>"+se.getMessage()+"</h2>");
				 se.printStackTrace();
					
			} catch (Exception e) {
					e.printStackTrace();
			}
			pw.println("<button class=''><a href='admin.jsp'>Home</a></button>");
			pw.println("</div>");	
			
			
			
		}

	
}
