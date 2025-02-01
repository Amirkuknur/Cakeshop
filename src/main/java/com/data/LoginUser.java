package com.data;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.DriverManager;

@WebServlet("/login")
public class LoginUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private static final DriverManager DriverManager = null;
    
	  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uemail=request.getParameter("email");
		String upswd=request.getParameter("password");
		HttpSession session=request.getSession();
		RequestDispatcher dispatcher=null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			 Connection con=((java.sql.DriverManager) DriverManager).getConnection("jdbc:mysql://localhost:3306/cakeshop","root","root");
			 PreparedStatement pst= con.prepareStatement("select * from user where email = ? and password = ?");
			 pst.setString(1, uemail);
			pst.setString(2, upswd);
			 
			 ResultSet rs=pst.executeQuery();
			 if(rs.next()) {
				 session.setAttribute("email", rs.getString("email"));
				 dispatcher=request.getRequestDispatcher("index1.jsp");
			 }else {
				 request.setAttribute("status", "failed");
				 dispatcher=request.getRequestDispatcher("login.html");
			 }
			 dispatcher.forward(request, response);
			 
		}catch(Exception e){
			e.printStackTrace();
		}
	}

}
