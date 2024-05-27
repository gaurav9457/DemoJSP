<%@page import="javaPackage.UserController"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
#container{


}
table {
  border-collapse: collapse;
  border-spacing: 0;
  width: 80%;
  border: 1px solid #fff9f9;
 
}

th, td {
  text-align: center;
  padding: 12px;
  border: 1px solid #ddd;
   
}
th{
background-color:#b8daff;
}

tr:nth-child(even) {
  background-color: #d6dadd;
}
.btn {
  border: 2px solid black;
  background-color: white;
  color: black;
  padding: 10px 16px;
  font-size: 10px;
  cursor: pointer;
}


.success {
  border-color: #ff9800;
  color: #ff9800;
}

.success:hover {
   background: #ff9800;
  color: white;
}
.danger {
  border-color: #f44336;
  
   background: #f44336;
}

.danger:hover {
background: white;
  color: red;
}
a{
text-decoration: none;
color:black;
padding: 0px;
}
</style>
</head>
<body>
<div id="container">
<h1>View All User</h1>
<%UserController uc=new UserController();
  String name=request.getParameter("firstname");
 
%>

<table border='1' cellpadding='4' width='80%' align="center">
<tr>
<th>FirstName</th>
<th>LastName</th>
<th>Age</th>
<th>gender</th>
<th>date</th>
<th>address</th>
<th>Mobile no</th>
<th>City</th>
<th>Skillls</th>
<th>Edit</th>
<th>Delete</th>
</tr>
<tr>
<td><%=request.getParameter("firstname")%></td>
<td><%=request.getParameter("lastname") %></td>
<td><%=request.getParameter("gender") %></td>
<td><%=request.getParameter("age") %></td>
<td><%=request.getParameter("dob") %></td>
<td><%=request.getParameter("addr") %></td>
<td><%=request.getParameter("mob") %></td>
<td><%=request.getParameter("city") %></td>
<td><%=request.getParameter("Skills") %></td>
<td><a href="EditUser.jsp"><button class="btn success"> Edit</button></a> </td>
<td><a href="Test.html"><button class="btn danger"> Delete</button></a></td>
</tr>

</table>
<a href="EditUser.jsp?lastname=Patil">edit</a>
</div>

</body>
</html>