<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.schoolmanagement.helper.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%

String studentFirstName = request.getParameter("studentFirstName");
String studentPRNNumber = request.getParameter("studentPRNNumber");
String gender = request.getParameter("gender");
String castCategory = request.getParameter("castCategory");
String academicYear = request.getParameter("academicYear");
String selectFeesCategory = request.getParameter("selectFeesCategory");
String studentMiddleName = request.getParameter("studentMiddleName");
String dateOfAdmission = request.getParameter("dateOfAdmission");
String contactNo = request.getParameter("contactNo");
String rseligion = request.getParameter("religion");
String selectSection = request.getParameter("selectSection");
String studentLastName = request.getParameter("studentLastName");
String studentDOB = request.getParameter("studentDOB");
String nationality = request.getParameter("nationality");
String admissionStatus = request.getParameter("admissionStatus");
String selectClass = request.getParameter("selectClass");

int done = 0;
try {
	Connection con = ConnectionProvider.getConnection();
	String query = "insert into studentdetails (studentFirstName, studentPRNNumber, gender, castId, academicYearId, selectFeeCategory, StudentMiddleName, dateOfAdmission,studentContactNo, religionId,sectionId, studentLastName,dateOfBirth,nationality,status,classId) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	PreparedStatement pstm = con.prepareStatement(query);
	//pstmt = con.prepareStatement(query);
	pstm.setString(1, studentFirstName);
	pstm.setString(2, studentPRNNumber);
	pstm.setString(3, gender);
	pstm.setString(4, castCategory);
	pstm.setString(5, academicYear);
	pstm.setString(6, selectFeesCategory);
	pstm.setString(7, studentMiddleName);
	pstm.setString(8, dateOfAdmission);
	pstm.setString(9, contactNo);
	pstm.setString(10, rseligion);
	pstm.setString(11, selectSection);
	pstm.setString(12, studentLastName);
	pstm.setString(13, studentDOB);
	pstm.setString(14, nationality);
	pstm.setString(15, admissionStatus);
	pstm.setString(16, selectClass);
	done = pstm.executeUpdate();
	//System.out.println(done);
	out.print(done);

} catch (Exception e) {
	e.printStackTrace();
}
%>
