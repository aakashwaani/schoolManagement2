<%@page import="java.sql.*"%>
<%@page import="com.schoolmanagement.helper.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
	String designationName = request.getParameter("designationName");
	String status = request.getParameter("status");


	
	int i = 0;
	try {
		
		Connection con = ConnectionProvider.getConnection();
		String query = "insert into designation(designationName,status)values(?,?)";
		PreparedStatement pstm = con.prepareStatement(query);
		pstm.setString(1, designationName);
		pstm.setString(2, status);
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
		  title: 'Designation Added Successfully ' ,
		  confirmButtonText: 'Ok',
		}).then((result) => {
		  /* Read more about isConfirmed, isDenied below */
			window.location.href = "../addDesignation.jsp";

		})
			</script>

		<%
	}else{
		
		%>
			<script type="text/javascript">
		
		Swal.fire({
			icon: 'error',
			  title: 'Designation cannot be added ' ,
			  confirmButtonText: 'Ok',
			}).then((result) => {
			  /* Read more about isConfirmed, isDenied below */
				window.location.href = "../addDesignation.jsp";

			})
			
			</script>

		<%
	}
	%>	

	


</body>