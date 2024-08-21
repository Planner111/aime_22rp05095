<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>employes</title>


</head>
<body>
	

   <form method="POST">
   <center>
   	<h2>employe registration</h2>
		  
	<label>firstname</label>
	<input type="text" name="fname"><br><br>
	<label>lastname</label>
	<input type="text" name="lname"><br><br>
	
	<label>email</label>
	<input type="email" name="emails"><br><br>
	<label>position</label>
	<input type="text" name="position"><br><br>
	
   	<button  name="submit">SignUp</button>
   </form>
   </center>
    <%
            if (request.getParameter("submit") != null) {
                String fname_22rp05095 = request.getParameter("fname");
                String lname_22rp05095 = request.getParameter("lname");
                String email_22rp05095 = request.getParameter("emails");
                String position_22rp05095=request.getParameter("position");

                
                
                String url = "jdbc:mysql://localhost:3306/emp_22rp05095";
                String user = "root"; 
                String pass = "";

                Connection conn = null;
                PreparedStatement pstmt = null;

                try {
                    
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    
                    conn = DriverManager.getConnection(url, user, pass);
                    
                   
                    String sql = "INSERT INTO empploye2(fname,lname,email,position) VALUES (?,?, ?, ?)";
                    pstmt = conn.prepareStatement(sql);
                    pstmt.setString(1, fname_22rp05095);
                    pstmt.setString(2, lname_22rp05095);
                    pstmt.setString(3, email_22rp05095);
                    pstmt.setString(3, position_22rp05095);
                    pstmt.executeUpdate();

                    out.println("<h3>Signup Successful!</h3>");
                    response.sendRedirect("employe.jsp");
                } catch (Exception e) {
                    out.println("<h3>Error: " + e.getMessage() + "</h3>");
                } finally {
                    if (pstmt != null) try { pstmt.close(); } catch (SQLException e) {}
                    if (conn != null) try { conn.close(); } catch (SQLException e) {}
                }
            }
        %>
</body>
</html>