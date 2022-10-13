package servlet.chap14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.chap14.Employee;
import jdk.jfr.Percentage;

/**
 * Servlet implementation class Servlet24
 */
@WebServlet("/Servlet24")
public class Servlet24 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet24() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String strId = request.getParameter("id");
		
		if(strId == null || strId.equals("")) {
			strId = "";
		}
		
		strId = "%" + strId + "%";
		
		String sql = "SELECT LastName, FirstName "
				+ "FROM Employees "
				+ "WHERE Lastname LIKE ? "
				+ "OR FirstName LIKE ? ";
		
		
		ServletContext application = request.getServletContext();

		String url = application.getAttribute("jdbc.url").toString();
		String user = application.getAttribute("jdbc.username").toString();
		String pw = application.getAttribute("jdbc.password").toString();

		try (
				Connection con = DriverManager.getConnection(url, user, pw);
				PreparedStatement pstmt = con.prepareStatement(sql);
				
				){
			pstmt.setString(1, strId);
			pstmt.setString(2, strId);
			
			try(ResultSet rs = pstmt.executeQuery()){
				
				List<Employee> list = new ArrayList<>();
				while(rs.next()) {
					String lname = rs.getString("LastName");
					String fname = rs.getString("firstName");
					
					Employee emp = new Employee();
					emp.setFirstName(fname);
					emp.setLastName(lname);
					
					list.add(emp);
				}
				request.setAttribute("employeeList", list);		
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		
		String path = "/WEB-INF/view/chap14/view05.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	
	}

	/**
	 * @see HttpServlet#doPost(HttpSe
	 * rvletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
