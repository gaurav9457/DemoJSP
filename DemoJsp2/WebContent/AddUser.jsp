<%@page import="javaPackage.UserController"%>
<%@page import="entity.UserBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
  String firstname=request.getParameter("firstname");
  String lastname=request.getParameter("lastname");
  String email=request.getParameter("email");
  String gender=request.getParameter("gender");
  String date=request.getParameter("dob");
  int age=Integer.parseInt(request.getParameter("age"));
  long mobileNo=Long.parseLong(request.getParameter("mob"));
  String address=request.getParameter("addr");
  String city=request.getParameter("city");
  
  UserBean uc=new UserBean(firstname,lastname,gender,date,age,mobileNo,address,city,email);
  UserController.addUser(uc);
%>
<a href="ViewUser.jsp">View Users</a>
</body>
</html>