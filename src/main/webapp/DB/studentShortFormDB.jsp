<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.schoolmanagement.helper.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	try {
		int done = 0;
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
		String admissionStatus = request.getParameter("admissionStatus");
		String selectClass = request.getParameter("selectClass");

		out.println("studentFirstName ->" + studentFirstName + "\n");
		out.println("studentPRNNumber ->" + studentPRNNumber + "\n");
		out.println("gender ->" + gender + "\n");
		out.println("castCategory ->" + castCategory + "\n");
		out.println("academicYear ->" + academicYear + "\n");
		out.println("selectFeesCategory ->" + selectFeesCategory + "\n");
		out.println("studentMiddleName ->" + studentMiddleName + "\n");
		out.println("dateOfAdmission ->" + dateOfAdmission + "\n");
		out.println("contactNo ->" + contactNo + "\n");
		out.println("rseligion ->" + rseligion + "\n");
		out.println("selectSection ->" + selectSection + "\n");
		out.println("studentLastName ->" + studentLastName + "\n");
		out.println("studentDOB ->" + studentDOB + "\n");
		out.println("nationality ->" + nationality + "\n");
		out.println("admissionStatus ->" + admissionStatus + "\n");
		out.println("selectClass ->" + selectClass + "\n");

		String query = "insert into studentdetails (studentFirstName, studentPRNNumber, gender, castId, academicYearId, selectFeeCategory, StudentMiddleName, dateOfAdmission,studentContactNo, religionId,sectionId, studentLastName,dateOfBirth,nationality,status,classId) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

		PreparedStatement pstmt = null;
		pstmt = con.prepareStatement(query);
		pstmt.setString(1, studentFirstName);
		pstmt.setString(2, studentPRNNumber);
		pstmt.setString(3, gender);
		pstmt.setString(4, castCategory);
		pstmt.setString(5, academicYear);
		pstmt.setString(6,selectFeesCategory);
		pstmt.setString(7, studentMiddleName);
		pstmt.setString(8, dateOfAdmission);
		pstmt.setString(9, contactNo);
		pstmt.setString(10, rseligion);
		pstmt.setString(11, selectSection);
		pstmt.setString(12, studentLastName);
		pstmt.setString(13, studentDOB);
		pstmt.setString(14, nationality);
		pstmt.setString(15, admissionStatus);
		pstmt.setString(16, selectClass);
		done = pstmt.executeUpdate();
		System.out.println(done);

	} catch (Exception e) {
		e.printStackTrace();
	}
	%>

</body>
</html>