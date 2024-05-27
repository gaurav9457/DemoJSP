<%@page import="java.io.IOException"%>
<%@page import="entity.UserBean"%>
<%@page import="javaPackage.UserController"%>
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
    try {
        
        int id = request.getParameter("id") != null ? Integer.parseInt(request.getParameter("id")) : 0;
        String firstName = request.getParameter("firstname") != null ? request.getParameter("firstname") : "";
        String lastName = request.getParameter("lastname") != null ? request.getParameter("lastname") : "";
        String email = request.getParameter("email") != null ? request.getParameter("email") : "";
        String gender = request.getParameter("gender") != null ? request.getParameter("gender") : "";
        String dob = request.getParameter("dob") != null ? request.getParameter("dob") : "";
        int age = request.getParameter("age") != null ? Integer.parseInt(request.getParameter("age")) : 0;
        long mobile = request.getParameter("mob") != null ? Long.parseLong(request.getParameter("mob")) : 0;
        String address = request.getParameter("addr") != null ? request.getParameter("addr") : "";
        String city = request.getParameter("city") != null ? request.getParameter("city") : "";

       
        UserBean updatedUser = new UserBean();
        updatedUser.setId(id);
        updatedUser.setFirstname(firstName);
        updatedUser.setLastname(lastName);
        updatedUser.setEmail(email);
        updatedUser.setGender(gender);
        updatedUser.setDate(dob);
        updatedUser.setAge(age);
        updatedUser.setMobileNo(mobile);
        updatedUser.setAddress(address);
        updatedUser.setCity(city);

        
        UserController.updateUser(updatedUser,request.getParameter("id"));
        out.println("<script>alert('Record updated successfully!');</script>");
       
        response.sendRedirect("ViewUser.jsp");
    } catch (NumberFormatException e) {
        out.println("<script>alert('Error: Invalid number format!');</script>");
        e.printStackTrace();
    } catch (IOException e) {
        out.println("<script>alert('Error occurred while redirecting!');</script>");
        e.printStackTrace();
    }
%>
</body>
</html>