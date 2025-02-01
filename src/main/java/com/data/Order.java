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
import java.sql.SQLException;

@WebServlet("/order")

public class Order extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private static final String URL = "jdbc:mysql://localhost:3306/cakeshop";
    private static final String USER = "root"; // replace with your MySQL username
    private static final String PASSWORD = "root"; // replace with your MySQL password

    // JDBC variables for opening, closing, and managing MySQL connection
    private static Connection conn;

    public void init() {
        try {
            // Initialize the JDBC connection
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(URL, USER, PASSWORD);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve form parameters
        String productName = request.getParameter("productName");
        String productPrice = request.getParameter("productPrice");
        String customerName = request.getParameter("customerName");
        String customerEmail = request.getParameter("customerEmail");
        String customerPhone = request.getParameter("customerPhone");
        String customerAddress = request.getParameter("customerAddress");
        String paymentType = request.getParameter("paymentType");
        String orderNotes = request.getParameter("orderNotes");

        // SQL Insert query
        String query = "INSERT INTO orders (productName, productPrice, name, email, phone, address, payment_Type, order_notes) "
                     + "VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

        try (PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setString(1, productName);
            stmt.setString(2, productPrice);
            stmt.setString(3, customerName);
            stmt.setString(4, customerEmail);
            stmt.setString(5, customerPhone);
            stmt.setString(6, customerAddress);
            stmt.setString(7, paymentType);
            stmt.setString(8, orderNotes);

            // Execute the query
            int result = stmt.executeUpdate();

            // Redirect to success page if the order was successfully placed
            if (result > 0) {
                response.sendRedirect("test.html");
            } else {
                response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Order not placed");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Database error occurred");
        }
    }

    public void destroy() {
        try {
            // Close the database connection when servlet is destroyed
            if (conn != null) {
                conn.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

}
