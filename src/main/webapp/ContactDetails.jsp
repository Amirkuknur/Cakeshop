<%@page import="java.sql.Statement" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.PreparedStatement" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact Management</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f9f9f9;
    }
    h2 {
        text-align: center;
        color: #333;
        margin-top: 20px;
    }
    .div2 {
        margin: 20px auto;
        width: 90%;
        border: 1px solid #ccc;
        border-radius: 10px;
        padding: 20px;
        background-color: #fff;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }
    table {
        width: 100%;
        border-collapse: collapse;
        margin: 20px 0;
    }
    table th, table td {
        border: 1px solid #ddd;
        padding: 8px;
        text-align: center;
    }
    table th {
        background-color: #f2f2f2;
        color: #333;
        font-weight: bold;
    }
    table tr:hover {
        background-color: #f1f1f1;
    }
    .back-btn {
        display: block;
        margin: 20px auto;
        width: 100px;
        padding: 10px;
        text-align: center;
        background-color: #007bff;
        color: white;
        text-decoration: none;
        border-radius: 5px;
        transition: background-color 0.3s ease;
    }
    .back-btn:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
    <h2>Contact Details</h2>
    <div class="div2">
        <table>
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Subject</th>
                    <th>Message</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <%
                Connection cn = null;
                Statement st = null;
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/cakeshop", "root", "root");
                    st = cn.createStatement();
                    String sql = "select * from contact";
                    ResultSet rs = st.executeQuery(sql);

                    while (rs.next()) {
                %>
                <tr>
                    <td><%= rs.getInt("id") %></td>
                    <td><%= rs.getString("name") %></td>
                    <td><%= rs.getString("email") %></td>
                    <td><%= rs.getString("subject") %></td>
                    <td><%= rs.getString("message") %></td>
                    <td>
                     <form method="post" action="deletcon.jsp" style="display: inline;">
                <input type="hidden" name="id" value="<%= rs.getInt("id")%>">
                <button type="submit" class="action-btn delete-btn">Delete</button>
            </form></td>
                    
                </tr>
                <%
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                } finally {
                    try {
                        if (st != null) st.close();
                        if (cn != null) cn.close();
                    } catch (Exception ex) {
                        ex.printStackTrace();
                    }
                }
                %>
            </tbody>
        </table>
    </div>
    <a href="adminDash.jsp" class="back-btn">Back</a>
</body>
</html>
