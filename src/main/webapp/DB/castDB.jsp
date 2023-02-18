
<%@page import="java.sql.*"%>
<%@page import="com.schoolmanagement.helper.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<%
System.out.println("Inside");
String castName = request.getParameter("castName");
String status = request.getParameter("status");


int done = 0;
try {

	Connection con = ConnectionProvider.getConnection();
	String query = "insert into casts(castName,status)values(?,?)";
	PreparedStatement pstm = con.prepareStatement(query);
	pstm.setString(1, castName);
	pstm.setString(2, status);
	done = pstm.executeUpdate();
	//out.print(" \n" + i);
	out.print(done);
	System.out.println(done);

} catch (Exception e) {
	e.printStackTrace();
}

%>