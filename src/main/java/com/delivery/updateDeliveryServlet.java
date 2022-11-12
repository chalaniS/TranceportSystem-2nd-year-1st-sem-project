package com.delivery;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/*@WebServlet("/updateDeliveryServlet")*/
public class updateDeliveryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sAddress = request.getParameter("from");
		String rName = request.getParameter("name");
		String rAddress = request.getParameter("to");
		String itemType = request.getParameter("item");
		String vehicle = request.getParameter("vehicle");
		String datetime = request.getParameter("datetime");
		String username = request.getParameter("username");
		
		boolean isTrue;
		
		isTrue = ScheduleDBUtil.updatedelivery(sAddress, rName, rAddress, itemType, vehicle, datetime, username) ;
		
		if(isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("success.jsp");
			dispatcher.forward(request, response);
		}
		else {		
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("dinsertUnsuccess.jsp");
			dispatcher.forward(request, response);
		}
	}

}
