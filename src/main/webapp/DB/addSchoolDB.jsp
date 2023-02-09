<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.schoolmanagement.helper.ConnectionProvider"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>

<%@ page import="java.sql.*"%>
<script
	src="
https://cdn.jsdelivr.net/npm/sweetalert2@11.7.1/dist/sweetalert2.all.min.js
"></script>
<link
	href="
https://cdn.jsdelivr.net/npm/sweetalert2@11.7.1/dist/sweetalert2.min.css
"
	rel="stylesheet"></link>
<body>

	<%
	int done = 0;

	try {
		MultipartRequest m = new MultipartRequest(request,
		"C:/Users/prati/eclipse-workspace/schoolManagement2/src/main/webapp/img", 1048 * 1048 * 1048);

		Connection con = ConnectionProvider.getConnection();
		//schoolId, schoolRegistrationNo, societyName, schoolCode, UIDIASNo, principalName, mobileNo, schoolLogo, schoolBanner, Address, City, State, postalCode

		String schoolName = m.getParameter("schoolName");
		String schoolRegistrationNo = m.getParameter("schoolRegistrationNo");
		String societyName = m.getParameter("societyName");
		String schoolCode = m.getParameter("schoolCode");
		String UIDIASNo = m.getParameter("UIDIASNo");
		String principalName = m.getParameter("principalName");
		String schoolEmail = m.getParameter("schoolEmail");
		String mobileNo = m.getParameter("mobileNo");
		String schoolLogo = "/img/" + m.getFilesystemName("schoolLogo");
		String schoolBanner = "/img/" + m.getFilesystemName("schoolBanner");
		String Address = m.getParameter("Address");
		String City = m.getParameter("City");
		String State = m.getParameter("State");
		String postalCode = m.getParameter("postalCode");


		String addSchoolQuery = "insert into schools(schoolName, schoolRegistrationNo, societyName, schoolCode, UIDIASNo, principalName, schoolEmail, mobileNo, schoolLogo, schoolBanner, Address, City, State, postalCode) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement pstm = null;

		pstm = con.prepareStatement(addSchoolQuery);
		pstm.setString(1, schoolName);
		pstm.setString(2, schoolRegistrationNo);
		pstm.setString(3, societyName);

		pstm.setString(4, schoolCode);
		pstm.setString(5, UIDIASNo);
		pstm.setString(6, principalName);
		pstm.setString(7, schoolEmail);
		pstm.setString(8, mobileNo);
		pstm.setString(9, schoolLogo);
		pstm.setString(10, schoolBanner);

		pstm.setString(11, Address);
		pstm.setString(12, City);
		pstm.setString(13, State);
		pstm.setString(14, postalCode);

		done = pstm.executeUpdate();
		System.out.println(done);
	} catch (Exception e) {
		e.printStackTrace();
	}

	if (done > 0) {
	%>
	1

	<%
	} else {
	%>
	0

	<%
	}
	%>

</body>