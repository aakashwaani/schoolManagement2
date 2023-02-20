
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.schoolmanagement.helper.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>

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
							<h3 class="page-title">Add New Class Form</h3>
							<ul class="breadcrumb">
								<li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
								<li class="breadcrumb-item active">Add Class</li>
							</ul>
						</div>
					</div>
				</div>


				<div class="row">

					<div class="col-md-8">
						<div class="card">
							<div class="card-header">
								<h5 class="card-title">Class Form -</h5>
							</div>
							<div class="card-body">
								<form  id="addClassForm" class="needs-validation" novalidate
									method="POST" role="form">
									<div class="form-group">
										<label for="validationCustom01"> Select Section</label> <select
											class="form-control form-select" name="sectionId" id="validationCustom01"
											required>

											<%
											try {
												Connection con = ConnectionProvider.getConnection();
												Statement stmt = con.createStatement();
												ResultSet rs = stmt.executeQuery("select * from section");
												while (rs.next()) {
											%>



											<option value="<%=rs.getInt("sectionId")%>">
												<%=rs.getString("sectionName")%></option>
											<%
											}

											} catch (Exception e) {
											e.printStackTrace();
											}
											%>
										</select>
									</div>

									<div class="form-group">
										<label for="validationCustom01"> Class Name</label> <input
											type="text" name="className" class="form-control"
											id="validationCustom01" required>
										<div class="valid-feedback">Looks good!</div>
										<div class="invalid-feedback">Please Provide Section
											Name.</div>
									</div>
									<div class="form-group">
										<label for="validationCustom01">Status</label> <select
											class="form-control" id="validationCustom01" required
											name="status">
											<option>Active</option>
											<option>In-Active</option>
										</select>
										<div class="valid-feedback">Looks good!</div>
										<div class="invalid-feedback">Please Provide Section
											Name.</div>
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
							<h5 class="card-title">Class Details -</h5>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table me-2 table-bordered">
									<thead class="">
										<tr class="text-center">
											<th>Serial No.</th>
											<th>Class Name</th>
											<th>Status</th>
											<th>Update</th>
										</tr>
									</thead>
									<tbody>
										<%
										try {
											int cnt = 1;
											Connection con = ConnectionProvider.getConnection();
											Statement stmt = con.createStatement();
											ResultSet rs = stmt.executeQuery("select * from studclass");
											while (rs.next()) {
										%>

										<tr class="text-center">
											<td><%=cnt%></td>
											<td><%=rs.getString("className")%></td>
											<td><%=rs.getString("status")%></td>
											<td class="text-center">
												<div class="actions">
													<a href="updateClass.jsp?id=<%=rs.getInt("classId")%>"
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
			src="https://cdn.jsdelivr.net/npm/sweetalert2@11.7.1/dist/sweetalert2.all.min.js"></script>
	</div>


	<script type="text/javascript">
		$(document).ready(function() {
			$("#addClassForm").submit(function(event) {
				event.preventDefault();
				//let f = new FormData($("#addAcademicYear")[0])
				   if ($("#addClassForm")[0].checkValidity() === false) {
				        event.stopPropagation();
				    } else {
						$.ajax({
							type : 'POST',
							url : 'DB/addClassDB.jsp',
							data:$("#addClassForm").serialize(),
							success : function(responce) {
								console.log(responce.trim())
								if (responce.trim() == "1") {
									$("#addClassForm")[0].reset()
									Swal.fire({
										icon: 'success',
										  title: 'Class Added Successfully ' ,
										  confirmButtonText: 'Ok',
										}).then((result) => {
										  /* Read more about isConfirmed, isDenied below */
											 window.location.reload();
										})
								} else {
									Swal.fire({
									icon: 'error',
									title: 'Class cannot be added ' ,
									confirmButtonText: 'Ok',
									}).then((result) => {
									/* Read more about isConfirmed, isDenied below */
									})												
								}
							}
						})
				    }
				    $("addClassForm").addClass('was-validated');
				});
			})
		
	</script>

</body>
</html>