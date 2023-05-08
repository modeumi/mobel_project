package servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Dao;
import model.Item;

/**
 * Servlet implementation class Itemsmallinfo
 */
@WebServlet("/Itemservlet")
public class Itemservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Itemservlet() {
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
		HttpSession session = request.getSession();
//		Item item = new Item();
		String id = request.getParameter("itemid");
		        Item item = Dao.iteminfo(id);
		        if (session.getAttribute("item") == null) {
//		        session.setAttribute("item", item);
		        session.setAttribute("item_num", 1);
		        session.setAttribute("item_id", item.getId());
		        session.setAttribute("item_img", item.getImg());
		        session.setAttribute("item_name", item.getName());
		        session.setAttribute("item_price", item.getPrice());
		        response.sendRedirect("iteminfo.jsp");
		        }else {
//		        	Item itemall = (Item) session.getAttribute("item");
//		        	List<Item> itemalls = new ArrayList<>();
//		        	itemalls.add(itemall);
//		        	session.setAttribute("item", itemalls);
		        	
		        	int num = (Integer) session.getAttribute("item_num") + 1;
		        	session.setAttribute("item_num", num);
		        	
		        	List<Integer> itemids = new ArrayList<>();
		        	itemids.add(item.getId());
		        	session.setAttribute("item_id", itemids);
		        	
		        	List <String> itemimg =  new ArrayList<>();
		        	itemimg.add(item.getImg());
		        	session.setAttribute("item_img", itemimg);
		        	
		        	List <String> itemname  = new ArrayList<>();
		        	itemname.add(item.getName());
		        	session.setAttribute("item_id", itemname);
		        	
		        	List <Integer> itemprice   = new ArrayList<>();
		        	itemprice.add(item.getPrice());
		        	session.setAttribute("item_price", itemprice);
		        	
		        	response.sendRedirect("iteminfo.jsp");
		        }
	}

}
