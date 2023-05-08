package servlet;

import java.io.IOException;
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
//	String itemid = (String)session.getAttribute("item_id");

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		HttpSession session = request.getSession();
		Item items = new Item();
		String id = request.getParameter("itemid");
		        Dao.iteminfo(id);
		        if (session.getAttribute("item") == null) {
		        session.setAttribute("item", items);
		        session.setAttribute("item_id", items.getId());
		        session.setAttribute("item_img", items.getImg());
		        session.setAttribute("item_name", items.getName());
		        session.setAttribute("item_price", items.getPrice());
		        }else {
		        	List <Item> itemcart = (List<Item>) session.getAttribute("item");
		        	itemcart.add(items);
		        	session.setAttribute("item", itemcart);
		        	
		        	List <Integer> itemid = (List<Integer>) session.getAttribute("item_id");
		        	itemid.add(items.getId());
		        	session.setAttribute("item_id", itemid);
		        	
		        	List <String> itemimg = (List<String>) session.getAttribute("item_img");
		        	itemimg.add(items.getImg());
		        	session.setAttribute("item_img", itemimg);
		        	
		        	List <String> itemname = (List<String>) session.getAttribute("item_name");
		        	itemname.add(items.getName());
		        	session.setAttribute("item_id", itemname);
		        	
		        	List <Integer> itemprice = (List<Integer>) session.getAttribute("item_price");
		        	itemprice.add(items.getPrice());
		        	session.setAttribute("item_id", itemprice);
		        }
	}

}
