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
<h1>Edit page</h1>
<%String id=request.getParameter("id");
out.print(id);
UserBean u=UserController.getUserById(Integer.parseInt(id));

 %>
 <%!
 	public String gen(String gender,String selected){
	 //System.out.println(selected);
	 if(gender.equals(selected)){
			return "checked";
		}
		else{
			return "";
		}
	}
 
 public String citySelect(String city,String selected){
	 //System.out.println(selected);
	 if(city.equals(selected)){
			return "selected";
		}
		else{
			return "";
		}
	}
%>
 
 <div id="container">
       <div id="formDiv">
        <form  id="formObj" action="UpdateUser.jsp" method="post">
		
			<label for="fname" class="lableColor">First Name <span class="starColor">*</span>: </label> <br>
            
            <input type="text" id="fname" name="firstname" placeholder="Your First name.." class="inpformat inpValid"  autofocus value="<%=u.getFirstname()%>">
            <div id="firstnameError" class="errorDiv">&nbsp;</div>   
			
				<label for="lname" class="lableColor">Last Name <span class="starColor">*</span> : </label> <br>
            
            <input type="text" id="lname" name="lastname" placeholder="Your last name.." class="inpformat inpValid" value="<%=u.getLastname()%>">
            <div id="lastnameError" class="errorDiv">&nbsp;</div>
             <label for="email" class="lableColor">Email-id <span class="starColor">*</span> : </label> <br>
             <input type="email" id="email" name="email" placeholder="g12@gmail.com" class="inpformat inpValid" value="<%=u.getEmail()%>">
            
			<label for="gender" class="lableColor" >Gender <span class="starColor">*</span>: </label>
            <label class="lableColor"><input type="radio" name="gender" id="gender" value="male" <%=gen("male",u.getGender())%>>Male</label>
            <label  class="lableColor"><input type="radio" name="gender" id="gender" value="female" <%=gen("female",u.getGender())%>>Female</label>
			<label  class="lableColor"><input type="radio" name="gender" id="gender" value="Other" <%=gen("Other",u.getGender())%>>Other</label>
            <div id="errorSpan" ></div>
            <br>
			<div id="dobDiv" class="">
				<label for="dob" class="lableColor">Date Of Birth <span class="starColor">*</span>: </label> <br>
				
            <input type="text" id="dob" name="dob" placeholder="DD/MM/YYYY"  class="inpformat" value=<%=u.getDate() %>>
            <div id="dobError" class="errorDiv">&nbsp;</div>
            </div>

             <div id="ageDiv" class="">
				<label for="age" class="lableColor">Age <span class="starColor">*</span>: </label> <br>
				
            <input type="number" name="age" id="age" class="inpformat" value=<%=u.getAge() %>>
            <div id="ageErrorDiv" class="errorDiv">&nbsp;</div>
             </div>
		
            
            
            <label for="mob" class="lableColor">Mobile no <span class="starColor">*</span>: </label> <br>
            
            <input type="tel" name="mob" id="mobile" minlength=0 maxlength=10 class="inpformat" value=<%=u.getMobileNo() %>>
            <br>
			<label for="address" class="lableColor">Address <span class="starColor">*</span>: </label><br>
			<textarea name="addr" id="addressArea" cols="53" rows="" style="margin:10px;width:400px;" value=<%=u.getAddress()%>></textarea>
            <div id="errorSpan"class="errorDiv">&nbsp;</div>
			
			
			<div id="cityDiv" class="">
				<label for="city" class="lableColor">City <span class="starColor">*</span>: </label>
				<br>
				<select name="city" id="city" >
                <option value="" >Select city</option>
                <option value="Pune" <%=citySelect("Pune",u.getCity())%>>Pune</option>
                <option value="Mumbai" <%=citySelect("Mumbai",u.getCity())%> >Mumbai</option>
                <option value="Nashik"<%=citySelect("Nashik",u.getCity())%> >Nashik</option>
				<option value="Jalgaon"<%=citySelect("Jalgaon",u.getCity())%> >Jalgaon</option>
				<option value="Surat" <%=citySelect("Surat",u.getCity())%> >Surat</option>
			    <option value="Nagpur" <%=citySelect("Nagpur",u.getCity())%> >Nagpur</option>

            </select>
				
			</div>
			      
           
           <br>
           <div id="btn-div" class=""> 
			        <input  type="submit" class="btn" id="submit" value="Update Info">
		            <button onclick="" class="btn" id="resetBtn">  Reset</button>
		            
		       </div>
           

				
  
        </form>
		
		
        
       </div>
       </div>
 
</body>
</html>