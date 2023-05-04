package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.DBconnect;

/**
 * Servlet implementation class joinservlet
 */
@WebServlet("/joinservlet")
public class joinservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public joinservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String id = request.getParameter("id");
		String pass = request.getParameter("pw");
		String name = request.getParameter("name");
		String email = request.getParameter("email"+"site");
		String phone = request.getParameter("phone1"+"-"+"phone2"+"-"+"phone3"); 
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBconnect.getConnection();
			pstmt = conn.prepareStatement("INSERT INTO member VALUES ('"+id+"','"+pass+"','"+name+"','"+email+"','"+phone+"')");
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt !=null) { pstmt.close();}
				if (conn != null) { conn.close();}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
}
