package main.webapp.web;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import main.webapp.DAO.BookingDao;
import main.webapp.DAO.CategoryDao;
import main.webapp.model.Booking;
import main.webapp.model.Category;

/**
 * Servlet implementation class GetCategoryServlet
 */
public class GetCategoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetCategoryServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		CategoryDao categoryDao = new CategoryDao();
    	HttpSession session = request.getSession();
    	int idStoreUser = ((Integer) session.getAttribute("idStore")).intValue();
		ArrayList<Category> categoryList = null;
		ArrayList<Category> AllCategoryList = null;

		try {
			categoryList = categoryDao.getCategory(idStoreUser);
			AllCategoryList = categoryDao.getAllCategory(idStoreUser);

			request.setAttribute("categoryList", categoryList);
			request.setAttribute("AllCategoryList", AllCategoryList);
	    	request.getRequestDispatcher("/category.jsp").forward(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	
	}

}