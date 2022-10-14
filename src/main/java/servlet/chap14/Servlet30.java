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
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import domain.chap14.Customer;

/**
 * Servlet implementation class Servlet30
 */
@WebServlet("/Servlet30")
public class Servlet30 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet30() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// parameter 추가
		String idstr = request.getParameter("id");
		int id = Integer.parseInt(idstr);
	
		// business logic
		String sql = "SELECT CustomerName,"
				+ " ContactName,"
				+ " Address,"
				+ " City, "
				+ "Country "
				+ "FROM Customers "
				+ "WHERE CustomerId = ?";
	
		ServletContext application = request.getServletContext();

		String url = application.getAttribute("jdbc.url").toString();
		String user = application.getAttribute("jdbc.username").toString();
		String pw = application.getAttribute("jdbc.password").toString();

		try (	Connection con = DriverManager.getConnection(url, user, pw);
				PreparedStatement pstmt = con.prepareStatement(sql); ) {
			
			pstmt.setInt( 1, id );
			
			try( ResultSet rs = pstmt.executeQuery(); ){
			
				if(rs.next()) {
				
					Customer ct = new Customer();
				
					ct.setName(rs.getString("CustomerName"));
					ct.setContactName("ContactName");
					ct.setAddress(rs.getString("Address"));
					ct.setCity(rs.getString("City"));
					ct.setCountry(rs.getString("Country"));
					
					request.setAttribute("customers", ct);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		// forward
		String path = "/WEB-INF/view/chap14/view13.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// parameter 추가
		String custName = request.getParameter("custName"); 
		String contName = request.getParameter("contName"); 
		String addr = request.getParameter("addr"); 
		String city = request.getParameter("city"); 
		String country = request.getParameter("country");
		String custId = request.getParameter("id");
		int id = Integer.parseInt(custId);
		
		// business logic
		String sql = "UPDATE Customers "
				+ "SET CustomerName = ?, "
				+ "		ContactName = ?, "
				+ "		Address = ?, "
				+ "		City = ?, "
				+ "		Country = ? "
				+ "WHERE CustomerId = ?";
		
		ServletContext application = request.getServletContext();

		String url = application.getAttribute("jdbc.url").toString();
		String user = application.getAttribute("jdbc.username").toString();
		String pw = application.getAttribute("jdbc.password").toString();

		try (	Connection con = DriverManager.getConnection(url, user, pw);
				PreparedStatement pstmt = con.prepareStatement(sql); ) {
		
				pstmt.setString(1, custName);
				pstmt.setString(2, contName);
				pstmt.setString(3, addr);
				pstmt.setString(4, city);
				pstmt.setString(5, country);
				pstmt.setInt(6, id);
		
				int cnt = pstmt.executeUpdate();
				System.out.println(con);
				if(cnt == 1) {
					// add Attribute
					HttpSession session = request.getSession();
					session.setAttribute("message","직원 정보가 수정되었습니다.");
				}

		}catch (Exception e) {
			e.printStackTrace();
		}
	
	}

}
