package com.data;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/register")
public class UserRegiser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private static final Connection DriverManager = null;
    
	   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		String confirm=request.getParameter("confirm");
		RequestDispatcher dispatcher=null;
		Connection con = null;
		
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=((java.sql.DriverManager) DriverManager).getConnection("jdbc:mysql://localhost:3306/cakeshop","root","root");
			PreparedStatement pst= con.prepareStatement("insert into user (email,password,cpassword)values(?,?,?)");
			pst.setString(1, email);
			pst.setString(2, password);
			pst.setString(3, confirm);
			
			int rowCount= pst.executeUpdate();
			dispatcher=request.getRequestDispatcher("login.html");
			if(rowCount > 0) {
				
				 request.setAttribute("status", "Success");
				 
			}else {
				
				 request.setAttribute("status", "Failed!");
			}
			dispatcher.forward(request, response); 
		}
		catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
		}
	}

}