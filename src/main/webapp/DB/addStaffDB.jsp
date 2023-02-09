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

	//try {
		MultipartRequest m = new MultipartRequest(request,
		"C:/Users/prati/eclipse-workspace/schoolManagement2/src/main/webapp/img", 1048 * 1048 * 1048);

		Connection con = ConnectionProvider.getConnection();
//staffId, firstName, middleName, lastName, email, moblileNo, gender, joiningDate, dateofBirth, staffAddress, qualification, 
//salary, casteCategory, staffRoleId, designationId, staffCastId, staffProfilePic, employeeId        
		
		
        String firstName = m.getParameter("firstName");
        String middleName = m.getParameter("middleName");
        String lastName = m.getParameter("lastName");
		String email = m.getParameter("email");
		String moblileNo = m.getParameter("moblileNo");
		String gender = m.getParameter("gender");
		String joiningDate = m.getParameter("joiningDate");
		String dateofBirth = m.getParameter("dateofBirth");
		String staffAddress = m.getParameter("staffAddress");
		String qualification = m.getParameter("qualification");
		String salary = m.getParameter("salary");
		String casteCategory = m.getParameter("casteCategory");
		String castId = m.getParameter("casteCategory");
		String staffRoleId = m.getParameter("staffRoleId");
		String designationId = m.getParameter("designationId");
		String staffCastId = m.getParameter("staffCastId");
		String employeeId = m.getParameter("employeeId");
        String staffProfilePic = "/img/" + m.getFilesystemName("staffProfilePic");
		
        
		out.print( "firstName - >" + firstName + "\n");
        out.print( "middleName - >" +middleName + "\n");
		out.print( "lastName - >" +lastName + "\n");
		out.print( "email - >" +email + "\n");
		out.print( "mob - >" +moblileNo + "\n");
		out.print( "gender - >" +gender + "\n");
		out.print( "jD - >" +joiningDate + "\n");
		out.print( "DOB - >" +dateofBirth + "\n");
		out.print( "s_address - >" +staffAddress + "\n");
		out.print( "qulification - >" +qualification + "\n");
		out.print( "sal - >" +salary + "\n");
        out.print( "staffPor - >" +staffProfilePic + "\n");
		out.print( "catCat - >" +casteCategory + "\n");
		out.print( "staffRoleId - >" +staffRoleId + "\n");
		out.print( "deg - >" +designationId + "\n");
        out.print( "stffCasId - >" +staffCastId + "\n");
        out.print( "empId - >" +employeeId + "\n");


/*
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

	} catch (Exception e) {
		e.printStackTrace();
	}
*/
	if (done == 1) {
	%>
	<script type="text/javascript">

	Swal.fire({
		
		icon: 'success',
		  title: 'Class Added Successfully ' ,
		  confirmButtonText: 'Ok',
		}).then((result) => {
		  /* Read more about isConfirmed, isDenied below */
			window.location.href = "../superAdmin/addSchool.jsp";

		})
			</script>
	<%
	} else {
	%>
	<script type="text/javascript">
	
	Swal.fire({
		icon: 'error',
		  title: 'Class cannot be added ' ,
		  confirmButtonText: 'Ok',
		}).then((result) => {
		  /* Read more about isConfirmed, isDenied below */
			window.location.href = "../superAdmin/addSchool.jsp";

		})
		
		</script>

	<%
	}
	%>
	
	</body>