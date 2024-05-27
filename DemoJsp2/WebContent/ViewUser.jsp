<%@page import="java.sql.*"%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
<%@page import="javaPackage.UserController"%>
<%@page import="entity.UserBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
    <%
//List<UserBean> list=UserController.getAllRecords();

Connection conn=UserController.getConnection();
String query;
query="select * from Student2";
PreparedStatement statement=conn.prepareStatement(query);

ResultSet user= statement.executeQuery();


%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
<h1>View User Page</h1>

<table border='1' cellpadding='4' width='80%' align="center">
  <tr>
    <th>ID</th>
    <th>First Name</th>
    <th>Last Name</th>
    <th>Gender</th>
    <th>Date</th>
    <th>Age</th>
    <th>Mobile No</th>
    <th>Address</th>
    <th>City</th>
    <th>Email</th>
    <th>Edit</th>
    <th>Delete</th>
  </tr>
  <% while(user.next()){ %>
  <tr>
    <td><%= user.getInt(1) %></td>
    <td><%= user.getString(2) %></td>
    <td><%= user.getString(3) %></td>
    <td><%= user.getString(4) %></td>
    <td><%= user.getString(5) %></td>
    <td><%= user.getInt(6) %></td>
    <td><%= user.getLong(7) %></td>
    <td><%= user.getString(8) %></td>
    <td><%= user.getString(9) %></td>
    <td><%= user.getString(10) %></td>
    <td><a href="EditUser.jsp?id=<%= user.getInt(1) %>"><button class="btn success"> Edit</button></a> </td>
    <td><a href="Test.html"><button class="btn danger"> Delete</button></a></td>
  </tr>
  <% } %>
</table>

</body>
</html>