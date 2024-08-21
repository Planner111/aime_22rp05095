<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EMS</title>

<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body><center>
	

   <form method="POST">
   	<br>
   	<label>firstname</label>
	<input type="text" name="fnames" ><br><br>
	<label>lastname</label>
	<input type="text" name="lnames" ><br><br>
	<label>email</label>
	<input type="email" name="mails" ><br><br>
	<label>password</label>
	<input type="password" name="pass" ><br><br>
   	<button  name="submit">SignUp</button>
   </form>
   </center>
 
    <%
            if (request.getParameter("submit") != null) {
                String first_22rp05095 = request.getParameter("fnames");
                String last_22rp05095= request.getParameter("lnames");
                String mails_22rp05095 =request.getParameter("email");
                String pass_22rp05095 = request.getParameter("pass");
                 
                String connect="jdbc:mysql://localhost:3306/emp_22rp05095";
                String users="root";
                String password="";
                Connection conne=null;
                PreparedStatement cat_22rp05095=null;
                try{
                	Class.forName("com.mysql.cj.jdbc.driver");
                	conne=DriverManager.getConnection(connect,users,password);
                	String insert="INSERT INTO employee1(fname,lname,email,password) values(?,?,?)";
                	cat_22rp05095= conne.prepareStatement(insert);
                	cat_22rp05095.setString(1,first_22rp05095);
                	cat_22rp05095.setString(2,last_22rp05095);
                	cat_22rp05095.setString(3,mails_22rp05095);
                	cat_22rp05095.setString(4,password);
                	cat_22rp05095.executeUpdate();
                	out.println("successfull");
                	response.sendRedirect("Login.jsp");
                	
                	
                	
                }
                catch(Exception e){
                	out.println("<p> error" +e.getMessage()+"</p>");
                	
                	
                }
                
                }
        %>
    
</body>
</html>



	
