<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String con="jdbc:mysql://localhost:3306/emp_22rp05095";
String user= "root";
String pass="";
Connection conn=null;
PreparedStatement st=null;
Strin notice="";
String id=request.getparameter("id");
if(id != null){
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn=DriverManager.getConnection(con,user,pass);
		String delete="DELETE FROM employe2 where id=?";
		st=conn.preparestatement(delete);
		st.setString(1,id);
		int row=st.executeUpdate();
		if (row>0){
			notce="row deleted";
			
		}
		else{
			notice="row not deleted";
		}
		
	}
	catch(exception e){
		notice=" worried!" +e.getmessage();
}
	

%>

</body>
</html>