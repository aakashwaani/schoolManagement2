
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.schoolmanagement.helper.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="link.jsp"></jsp:include>
</head>
<body>
	<div class="main-wrapper">
		<jsp:include page="header.jsp"></jsp:include>
		<jsp:include page="sidebar.jsp"></jsp:include>
		<div class="page-wrapper">

			<div class="content container-fluid">

				<div class="page-header">
					<div class="row">
						<div class="col">
							<h3 class="page-title">Update Division SDetails</h3>
							<ul class="breadcrumb">
								<li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
								<li class="breadcrumb-item active">Division Details</li>
							</ul>
						</div>
					</div>
				</div>


				<div class="row">		

					<div class="col-md-8">
						<div class="card">
							<div class="card-header">
								<h5 class="card-title">Update Academic Year Details -</h5>
							</div>
							<div class="card-body">
								<%
								int id = Integer.parseInt(request.getParameter("id"));
								Connection con = ConnectionProvider.getConnection();
								Statement stmt = con.createStatement();
								ResultSet rs = stmt.executeQuery("select * from division where divisionId=" + id + ";");
								rs.next();
								%>
								<form method="post" id="updateDivision">
									<div class="form-group">
										<label> Division Name</label> <input
											type="text" name="
"
											value="<%=rs.getString("division")%>"
											class="form-control">
									</div>
									<div class="form-group">
										<label> Status</label> <select
											class="form-control" id="validationCustom01" 
											name="status" value="<%=rs.getString("status")%>">
											<option>Active</option>
											<option>In-Active</option>
										</select>	
									</div>
									<div class="text-end">
										<button type="submit" class="btn btn-primary">Save</button>
										<button type="reset" class="btn btn-danger">Reset</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<jsp:include page="footer.jsp"></jsp:include>
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
		<script
			src="https://cdn.jsdelivr.net/npm/sweetalert2@11.7.1/dist/sweetalert2.all.min.js
"></script>
	</div>

	<script type="text/javascript">
		$(document).ready(function() {
			$('#updateDivision').submit(function(event) {
				event.preventDefault();
				//let f = new FormData($("#addAcademicYear")[0])
				   if ($('#updateDivision')[0].checkValidity() === false) {
				        event.stopPropagation();
				    } else {
						$.ajax({
							type : 'POST',
							url : "DB/updateDivisionDB.jsp?id=<%=id%>",
							data:$('#updateDivision').serialize(),
							success : function(responce) {
								console.log(responce.trim())
								if (responce.trim() == "1") {
									$('#updateDivision')[0].reset()
									Swal.fire({
										icon: 'success',
										  title: 'Division Updated Successfully ' ,
										  confirmButtonText: 'Ok',
										}).then((result) => {
										  /* Read more about isConfirmed, isDenied below */
											 window.location.href="addDivision.jsp";
										})
								} else {
									Swal.fire({
									icon: 'error',
									title: 'Division cannot be added ' ,
									confirmButtonText: 'Ok',
									}).then((result) => {
									/* Read more about isConfirmed, isDenied below */
									})												
								}
							}
						})
				    }
				    $('#updateAcademicYear').addClass('was-validated');
				});
			})
		
	</script>


</body>
</html>