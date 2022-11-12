package com.delivery;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/deliveryHistoryServlet")
public class deliveryHistoryServlet extends HttpServlet {	
	
	private static final long serialVersionUID = 1L;
       
   	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
					
   		try {
   			String s = request.getParameter("usern");   			
   			
   			List<Delivery> delDetails = ScheduleDBUtil.getHistory(s);	
   			System.out.println(delDetails);
   			request.setAttribute("delDetails", delDetails);
   			
   			RequestDispatcher dis = request.getRequestDispatcher("deliveryhistory.jsp");
   			dis.forward(request, response);
   			
   		}catch(Exception e) {
   			
   			e.printStackTrace();
   		}  			
		
	}
}
