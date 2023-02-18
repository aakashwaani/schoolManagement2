
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
	String s1 = request.getParameter("division");
	String s2 = request.getParameter("status");
	String id = request.getParameter("id");
	out.print(s1 + "\n");
	out.print(s2 + "\n");
	out.print(id + "\n");

	int i = 0;
	try {
		out.print(s1);
		Connection con = ConnectionProvider.getConnection();
		String query = "UPDATE division SET division = ?,status = ? WHERE divisionId = ?; ";
		PreparedStatement pstm = con.prepareStatement(query);
		pstm.setString(1, s1);
		pstm.setString(2, s2);
		pstm.setString(3, id);

		i = pstm.executeUpdate();
		out.print(" \n" + i);

	} catch (Exception e) {
		e.printStackTrace();
	}

	if (i == 1) {
	%>

	<script type="text/javascript">

	Swal.fire({
		
		icon: 'success',
		  title: 'Division Updated Successfully ' ,
		  confirmButtonText: 'Ok',
		}).then((result) => {
		  /* Read more about isConfirmed, isDenied below */
			window.location.href = "../addDivision.jsp";

		})
			</script>

	<%
	} else {
	%>
	<script type="text/javascript">
		
		Swal.fire({
			icon: 'error',
			  title: 'Division Cannot be Updated.  ' ,
			  confirmButtonText: 'Ok',
			}).then((result) => {
			  /* Read more	 about isConfirmed, isDenied below */
				window.location.href = "../addDivision.jsp";

			})
			
			</script>

	<%
	}
	%>

</body>