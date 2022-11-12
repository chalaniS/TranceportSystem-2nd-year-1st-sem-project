package com.delivery;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/deliveryInsert")
public class deliveryInsert extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String sAddress = request.getParameter("from");
    	String rName = request.getParameter("name");
    	String rAddress = request.getParameter("to");
    	String itemType = request.getParameter("item");
    	String vehicle = request.getParameter("vehicle");
    	String datetime = request.getParameter("datetime");
    	
    	boolean isTrue;
    	
    	isTrue = ScheduleDBUtil.insertdelivery( sAddress, rName, rAddress, itemType, vehicle, datetime);
    	
    	
    	
    	if(isTrue == true) {
    		
    		RequestDispatcher dis = request.getRequestDispatcher("summery.jsp");
    		dis.forward(request, response);
    		
    		List<Delivery> delDetails = ScheduleDBUtil.getHistory(rName);
			request.setAttribute("delDetails", delDetails);
			
    		
    	} else {
    		RequestDispatcher dis2 = request.getRequestDispatcher("dinsertUnsuccess.jsp");
    		dis2.forward(request, response);
    	}
    
	}

}
