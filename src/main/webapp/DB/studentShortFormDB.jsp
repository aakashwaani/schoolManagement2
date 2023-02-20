<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.schoolmanagement.helper.ConnectionProvider"%>
<%@ page language="java" contentType="text; charset=UTF-8"
	pageEncoding="UTF-8"%>


	<%
	int done = 0;
	try {
		Connection con = ConnectionProvider.getConnection();

		String studentFirstName = request.getParameter("studentFirstName");
		String studentPRNNumber = request.getParameter("studentPRNNumber");
		String gender = request.getParameter("gender");
		String castCategory = request.getParameter("castCategory");
		String academicYear = request.getParameter("academicYear");
		String selectFeesCategory = request.getParameter("selectFeesCategory");
		String studentMiddleName = request.getParameter("studentMiddleName");
		String dateOfAdmission = request.getParameter("dateOfAdmission");
		String contactNo = request.getParameter("contactNo");
		String rseligion = request.getParameter("rseligion");
		String selectSection = request.getParameter("selectSection");
		String studentLastName = request.getParameter("studentLastName");
		String studentDOB = request.getParameter("studentDOB");
		String nationality = request.getParameter("nationality");
		String Status = request.getParameter("Status");
		String selectClass = request.getParameter("selectClass");

		String query = "insert into studentdetails (studentFirstName, studentPRNNumber, gender, castId, academicYearId, selectFeeCategory, StudentMiddleName, dateOfAdmission,studentContactNo, religionId,sectionId, studentLastName,dateOfBirth,nationality,status,classId) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

		PreparedStatement pstmt = null;
		pstmt = con.prepareStatement(query);
		pstmt.setString(1, studentFirstName);
		pstmt.setString(2, studentPRNNumber);
		pstmt.setString(3, gender);
		pstmt.setString(4, castCategory);
		pstmt.setString(5, academicYear);
		pstmt.setString(6, selectFeesCategory);
		pstmt.setString(7, studentMiddleName);
		pstmt.setString(8, dateOfAdmission);
		pstmt.setString(9, contactNo);
		pstmt.setString(10, rseligion);
		pstmt.setString(11, selectSection);
		pstmt.setString(12, studentLastName);
		pstmt.setString(13, studentDOB);
		pstmt.setString(14, nationality);
		pstmt.setString(15, Status);
		pstmt.setString(16, selectClass);
		done = pstmt.executeUpdate();
		System.out.println(academicYear);

	} catch (Exception e) {
		e.printStackTrace();
	}
	out.print(done);
	%>
