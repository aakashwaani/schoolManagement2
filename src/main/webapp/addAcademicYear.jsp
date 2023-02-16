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
<link
	href="
https://cdn.jsdelivr.net/npm/sweetalert2@11.7.1/dist/sweetalert2.min.css
"
	rel="stylesheet"></link>
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
							<h3 class="page-title">Academic Year Details</h3>
							<ul class="breadcrumb">
								<li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
								<li class="breadcrumb-item active">Academic Year</li>
							</ul>
						</div>
					</div>
				</div>


				<div class="row">
					<div class="col-md-8">
						<div class="card">
							<div class="card-header">
								<h5 class="card-title">Academic Year Details -</h5>
							</div>
							<div class="card-body">
								<form id="addAcademicYear"
									class="needs-validation" novalidate method="POST" role="form">
									<div class="form-group">
										<label for="validationCustom01"> Starting Academic
											Year (Ex. 2020)</label> <input type="text" name="academicYear"
											class="form-control" id="validationCustom01" required>
										<div class="valid-feedback">Looks good!</div>
										<div class="invalid-feedback">Please Provide Academic
											Year.</div>
									</div>
									<div class="form-group">
										<label for="validationCustom01"> Academic Year Start
											Month Number </label> <input type="text" name="startmonthNumber"
											class="form-control" id="validationCustom01" required>
										<div class="valid-feedback">Looks good!</div>
										<div class="invalid-feedback">Please Provide Academic
											Year Start Month Number.</div>

									</div>

									<div class="form-group">
										<label for="validationCustom01"> Next Academic Year
											Date</label> <input type="date" name="nextAcademicYearDate"
											class="form-control" id="validationCustom01" required>
									</div>
									<div class="text-end">
										<button type="submit" class="btn btn-primary">Save</button>
										<button type="submit" class="btn btn-danger">Reset</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>

				<div class="col-lg-12">
					<div class="card">
						<div class="card-header">

							<h5 class="card-title">Section Details -</h5>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class=" mb-0 table table-striped ">
									<thead class="bg-primary">

										<tr>
											<th>Serial No.</th>
											<th>Academic Year</th>
											<th>Start Month Year</th>
											<th>Next Academic Year Date</th>
											<th>Update</th>
										</tr>
									</thead>
									<tbody>
										<%
										try {
											int cnt = 1;
											Connection con = ConnectionProvider.getConnection();
											Statement stmt = con.createStatement();
											ResultSet rs = stmt.executeQuery("select * from academicyear");
											while (rs.next()) {
										%>

										<tr>
											<td><%=cnt%></td>
											<td><%=rs.getString("academicYearId")%></td>
											<td><%=rs.getString("startmonthNumber")%></td>
											<td><%=rs.getString("nextAcademicYearDate")%></td>
											<td class="">
												<div class="actions ">
													<a
														href="updateAcademicYear.jsp?id=<%=rs.getInt("academicYearId")%>"
														class="btn btn-sm bg-danger-light"> <i
														class="feather-edit"></i>
													</a>
												</div>
											</td>
										</tr>


										<%
										cnt++;
										}

										} catch (Exception e) {
										e.printStackTrace();
										}
										%>

									</tbody>
								</table>
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
	src="
https://cdn.jsdelivr.net/npm/sweetalert2@11.7.1/dist/sweetalert2.all.min.js
"></script>
	</div>
	

	<script type="text/javascript">
		$(document).ready(function() {
			$("#addAcademicYear").submit(function(event) {
				event.preventDefault();
				//let f = new FormData($("#addAcademicYear")[0])
				   if ($("#addAcademicYear")[0].checkValidity() === false) {
				        event.stopPropagation();
				    } else {
						$.ajax({
							type : 'POST',
							url : 'DB/academicYearDB.jsp',
							data:$("#addAcademicYear").serialize(),
							success : function(responce) {
								console.log(responce.trim())
								if (responce.trim() == "1") {
									$("#addAcademicYear")[0].reset()
									Swal.fire({
										icon: 'success',
										  title: 'AcademicYear Added Successfully ' ,
										  confirmButtonText: 'Ok',
										}).then((result) => {
										  /* Read more about isConfirmed, isDenied below */
										})
								} else {
									Swal.fire({
									icon: 'error',
									title: 'AcademicYear cannot be added ' ,
									confirmButtonText: 'Ok',
									}).then((result) => {
									/* Read more about isConfirmed, isDenied below */
									})												
								}
							}
						})
				    }
				    $("addAcademicYear").addClass('was-validated');
				});
			})
		
	</script>

</body>
</html>