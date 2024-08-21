<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="" method="get">
<label>username</label>
<input type="email" name="email"><br><br>
<label>password</label>
<input type="password" name="pass"><br><br>
<input type="submit" name="submit" value="login">

</form>
<%
if(request.getParameter("submit")!= null){
	String username = request.getParameter("email");
	String password = request.getParameter("pass");
	
	String con="jdbc:mysql://localhost:3306/emp_22rp05095";
	String user="root";
	String pass="";
	
	Connection conn=null;
	PreparedStatement  log=null;
	resultSet  results =null;
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn=DriverManager.getConnection(conn,user,pass);
		string login="Select * from eployee1 where email=? and password=?";
		log = conn.prepareStatement(login);
		log.setString(1,username);
		log.setString(2,email);
		results=log.executeQuery();
		if(log){
			httpSession session_22rp05095= request.getSession();
			session_22rp05095.setAttribute("email",username);
			out.println("login done");
			out.println("welcome"+username);
			response.sendRedirect("select.jsp");
			
			
		}
		else{
			out.println("invalid email");
		}
	}

	
	
	
	
}
%>

</body>
</html>