package main.webapp.web;

import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import main.webapp.DAO.CategoryDao;

/**
 * Servlet implementation class DeletionCategoryServlet
 */
public class DeletionCategoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeletionCategoryServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Logger log = Logger.getLogger(DeletionCategoryServlet.class.getName());
		CategoryDao categoryDao = new CategoryDao();
	    int result = 0;
		try {
			result = categoryDao.deleteCategory(Integer.parseInt(request.getParameter("idCategory")));
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			log.log(Level.FINE, e.toString());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			log.log(Level.FINE, e.toString());
		}
	    if(result==1)
	    {	    	
	    	response.sendRedirect("getCategoryServlet");
	    }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
