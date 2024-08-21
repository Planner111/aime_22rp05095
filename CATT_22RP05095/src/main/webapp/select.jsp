<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border="2">
<tr>
<th>firstname</th>
<th>lastname</th>
<th>email</th>
<th>position</th>
<th colspan="2">options</th>
</tr>
<%
String conn = "jdbc:mysql://localhost:3306/emp_22rp05095";
String user="root";
String pass="";

Connection conne=null;
PreparedStatement select=null;
ResultSet result=null;
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	conne=DriverManager.getConnection(conn,user,pass);
	String selec_22rp05095 ="SELECT * from employe2";
	selec_22rp05095=conne.prepareStatement(selec_22rp05095);
	result=selec_22rp05095.executeQuery();
	while(result.next()){
		String fname=result.getString("fname");
		String lname=result.getString("lname");
		String  email=result.getString("email");
		string positions=result.getString("position");
		%>
		<tr>
		<td><%=fname %></td>
		<td><%=lname %></td>
		<td><%=email %></td>
		<td><%=position %></td>
		<td><a href="delete.jsp"?id=<%= id %>>delete</a></td>
		<td><a href="update.jsp"?id=<%= id %>></a></td>
		</tr>
		<%
	}
	}
		catch(Exception e){
			e.printStackTracer();
		}
finally{
	try{
		if(result !=null)  result.close();
		if(select != null) select.close();
		if(conne !=null) conne.close();
	}
	catch(SQLException ){
		e.printStackerTracer();
	}
		
	}

	
	


	

%>

</table>
</body>
</html>