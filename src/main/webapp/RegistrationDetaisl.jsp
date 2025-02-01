<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Manage Users</title>
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
            width: 80%;
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
        .action-btn {
            display: inline-block;
            padding: 5px 10px;
            margin: 0 5px;
            text-decoration: none;
            border-radius: 3px;
            transition: background-color 0.3s ease;
        }
        .delete-btn {
            background-color: #dc3545;
            color: white;
        }
        .delete-btn:hover {
            background-color: #c82333;
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
    <h2>Registration Details</h2>
    <div class="div2">
        <table>
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Email</th>
                    <th>Password</th>
                    <th>CPassword</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <%
                Connection cn = null;
                Statement st = null;
                ResultSet rs = null;
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/cakeshop", "root", "root");
                    st = cn.createStatement();
                    String sql = "select * from user";
                    rs = st.executeQuery(sql);

                    while (rs.next()) {
                        int userId = rs.getInt("id");
                %>
                <tr>
                    <td><%= userId %></td>
                    <td><%= rs.getString("email") %></td>
                    <td><%= rs.getString("password") %></td>
                    <td><%= rs.getString("cpassword") %></td>
                    <td>
                    		 <form method="post" action="deleteUser.jsp" style="display: inline;">
                <input type="hidden" name="id" value="<%= userId %>">
                <button type="submit" class="action-btn delete-btn">Delete</button>
            </form>
                    </td>
                </tr>
                <%
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                } finally {
                    try {
                        if (rs != null) rs.close();
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