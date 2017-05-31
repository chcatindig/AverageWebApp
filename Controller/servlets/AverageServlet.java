package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AverageServlet
 */

public class AverageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AverageServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String forward = "/index.jsp";
		RequestDispatcher view = request.getRequestDispatcher(forward);
        view.forward(request, response);
        System.out.println("GET");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("POST");
		double noOfSubject = 4, average = 0; 
		
		//Get input from page
		String input1 = request.getParameter("english");
		String input2 = request.getParameter("math");
		String input3 = request.getParameter("filipino");
		String input4 = request.getParameter("science");
		
		//Convert string to double
		double english = Double.parseDouble(input1);
		double math = Double.parseDouble(input2);
		double filipino = Double.parseDouble(input3);
		double science = Double.parseDouble(input4);

		//Compute average
		average = (english+math+filipino+science)/noOfSubject;
		
		//Send average to webpage
		
		if(english < 0 || english > 100 || math < 0 || math > 100 || filipino < 0 || filipino > 100 || science < 0 || science > 100) {
            throw new IllegalArgumentException("Grades must be between 0 and 100, inclusive");
        }else{
        	request.setAttribute("average", average);
    		RequestDispatcher view = request.getRequestDispatcher("/index.jsp");
            view.forward(request, response);
        }
	
	}

}
