<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="style.css" rel="stylesheet" type="text/css" rel="stylesheet" />
</head>
<body>
<h1>Register User</h1>
<div id="container">
       <div id="formDiv">
        <form  id="formObj" action="AddUser.jsp" method="post">
		
			<label for="fname" class="lableColor">First Name <span class="starColor">*</span>: </label> <br>
            
            <input type="text" id="fname" name="firstname" placeholder="Your First name.." class="inpformat inpValid"  autofocus>
            <div id="firstnameError" class="errorDiv">&nbsp;</div>   
			
				<label for="lname" class="lableColor">Last Name <span class="starColor">*</span> : </label> <br>
            
            <input type="text" id="lname" name="lastname" placeholder="Your last name.." class="inpformat inpValid" >
            <div id="lastnameError" class="errorDiv">&nbsp;</div>
             <label for="email" class="lableColor">Email-id <span class="starColor">*</span> : </label> <br>
             <input type="email" id="email" name="email" placeholder="g12@gmail.com" class="inpformat inpValid" >
            
			<label for="gender" class="lableColor">Gender <span class="starColor">*</span>: </label>
            <label class="lableColor"><input type="radio" name="gender" id="gender" value="male">Male</label>
            <label  class="lableColor"><input type="radio" name="gender" id="gender" value="female">Female</label>
			<label  class="lableColor"><input type="radio" name="gender" id="gender" value="Other">Other</label>
            <div id="errorSpan" ></div>
            <br>
			<div id="dobDiv" class="">
				<label for="dob" class="lableColor">Date Of Birth <span class="starColor">*</span>: </label> <br>
				
            <input type="text" id="dob" name="dob" placeholder="DD/MM/YYYY"  class="inpformat" >
            <div id="dobError" class="errorDiv">&nbsp;</div>
            </div>

             <div id="ageDiv" class="">
				<label for="age" class="lableColor">Age <span class="starColor">*</span>: </label> <br>
				
            <input type="number" name="age" id="age" class="inpformat">
            <div id="ageErrorDiv" class="errorDiv">&nbsp;</div>
             </div>
		
            
            
            <label for="mob" class="lableColor">Mobile no <span class="starColor">*</span>: </label> <br>
            
            <input type="tel" name="mob" id="mobile" minlength=0 maxlength=10 class="inpformat">
            <br>
			<label for="address" class="lableColor">Address <span class="starColor">*</span>: </label><br>
			<textarea name="addr" id="addressArea" cols="53" rows="" style="margin:10px;width:400px;"></textarea>
            <div id="errorSpan"class="errorDiv">&nbsp;</div>
			
			
			<div id="cityDiv" class="">
				<label for="city" class="lableColor">City <span class="starColor">*</span>: </label>
				<br>
				<select name="city" id="city">
                <option value="" >Select city</option>
                <option value="Pune">Pune</option>
                <option value="Mumbai">Mumbai</option>
                <option value="Nashik">Nashik</option>
				<option value="Jalgaon">Jalgaon</option>
				<option value="Surat">Surat</option>
			    <option value="Nagpur">Nagpur</option>

            </select>
				
			</div>
			      
           
           <br>
           

				<div id="btn-div" class=""> 
			        <input  type="submit" class="btn" id="submit" value="Submit">
		            <button onclick="" class="btn" id="resetBtn">  Reset</button>
		            <a href="ViewUser.jsp">View User</a>
		       </div>
  
        </form>
		
		
        
       </div>
       </div>


</body>
</html>