<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete User</title>
</head>
<body>
    <%
    Connection cn = null;
    PreparedStatement ps = null;
    String message = "";
    try {
        Class.forName("com.mysql.jdbc.Driver");
        cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/cakeshop", "root", "root");

        int id = Integer.parseInt(request.getParameter("id"));
        String sql = "DELETE FROM user WHERE id = ?";
        ps = cn.prepareStatement(sql);
        ps.setInt(1, id);

        int result = ps.executeUpdate();
        if (result > 0) {
            message = "User deleted successfully!";
        } else {
            message = "Failed to delete user.";
        }
    } catch (Exception e) {
        e.printStackTrace();
        message = "Error: " + e.getMessage();
    } finally {
        try {
            if (ps != null) ps.close();
            if (cn != null) cn.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
    %>
    <h2><%= message %></h2>
    <a href="RegistrationDetaisl.jsp">Back to Manage Users</a>
</body>
</html>
