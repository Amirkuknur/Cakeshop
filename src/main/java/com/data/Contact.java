package com.data;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

@WebServlet("/contact")
public class Contact extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String name = request.getParameter("name");
		    String email = request.getParameter("email");
		    String subject = request.getParameter("subject");
		    String message = request.getParameter("message");

		    String url = "jdbc:mysql://localhost:3306/cakeshop";
		    String user = "root";
		    String password = "root";

		    try {
		      Class.forName("com.mysql.cj.jdbc.Driver");

		      Connection conn = DriverManager.getConnection(url, user, password);

		      String sql = "INSERT INTO contact (name, email,subject, message) VALUES (?, ?, ?, ?)";

		      PreparedStatement pstmt = conn.prepareStatement(sql);
		      pstmt.setString(1, name);
		      pstmt.setString(2, email);
		      pstmt.setString(3, subject);
		      pstmt.setString(4, message);

		      pstmt.executeUpdate();

		      response.sendRedirect("TnkCon.jsp");

		    } catch (Exception e) {
		      e.printStackTrace();
		     
		    }
	}

}
