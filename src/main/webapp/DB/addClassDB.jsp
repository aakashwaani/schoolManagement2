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
	String s1 = request.getParameter("sectionId");
	String s2 = request.getParameter("className");
	

	int i = 0;
	try {
		out.print(s1);
		Connection con = ConnectionProvider.getConnection();
		String query = "insert into studClass(className,sectionId) values(?,?)";
		PreparedStatement pstm = con.prepareStatement(query);
		pstm.setString(1, s2);
		pstm.setString(2, s1);
		i = pstm.executeUpdate();

	} catch (Exception e) {
		e.printStackTrace();
	}

	if (i == 1) {
	%>

	<script type="text/javascript">

	Swal.fire({
		
		icon: 'success',
		  title: 'Section Added Successfully ' ,
		  confirmButtonText: 'Ok',
		}).then((result) => {
		  /* Read more about isConfirmed, isDenied below */
			window.location.href = "../addClass.jsp";

		})
			</script>

	<%
	} else {
	%>
	<script type="text/javascript">
		
		Swal.fire({
			icon: 'error',
			  title: 'Section cannot be added ' ,
			  confirmButtonText: 'Ok',
			}).then((result) => {
			  /* Read more about isConfirmed, isDenied below */
				window.location.href = "../addClass.jsp";

			})
			
			</script>

	<%
	}
	%>

</body>