<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="com.schoolmanagement.helper.ConnectionProvider"%>
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
	String staffRole = request.getParameter("staffRole");
	String staffRoleStatus = request.getParameter("staffRoleStatus");


	
	int i = 0;
	try {
		
		Connection con = ConnectionProvider.getConnection();
		String query = "insert into staffRole(staffRole,staffRoleStatus)values(?,?)";
		PreparedStatement pstm = con.prepareStatement(query);
		pstm.setString(1, staffRole);
		pstm.setString(2, staffRoleStatus);
		i = pstm.executeUpdate();
		out.print(" \n" + i);
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	
	if (i==1) {
	%>

	<script type="text/javascript">

	Swal.fire({
		
		icon: 'success',
		  title: 'Staff Role Added Successfully ' ,
		  confirmButtonText: 'Ok',
		}).then((result) => {
		  /* Read more about isConfirmed, isDenied below */
			window.location.href = "../addStaffRole.jsp";

		})
			</script>

		<%
	}else{
		
		%>
			<script type="text/javascript">
		
		Swal.fire({
			icon: 'error',
			  title: 'Staff Role cannot be added ' ,
			  confirmButtonText: 'Ok',
			}).then((result) => {
			  /* Read more about isConfirmed, isDenied below */
				window.location.href = "../addStaffRole.jsp";

			})
			
			</script>

		<%
	}
	%>	

	


</body>