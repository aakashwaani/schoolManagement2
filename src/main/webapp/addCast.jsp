<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.schoolmanagement.helper.ConnectionProvider"%>
<%@page import="java.sql.*"%>

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
							<h3 class="page-title">Cast Form</h3>
							<ul class="breadcrumb">
								<li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
								<li class="breadcrumb-item active">Add Cast</li>
							</ul>
						</div>
					</div>
				</div>


				<div class="row">

					<div class="col-md-8">
						<div class="card">
							<div class="card-header">
								<h5 class="card-title">Cast Form</h5>
							</div>
							<div class="card-body">
								<form id="addCastForm" class="needs-validation" novalidate
									method="POST" role="form">
									<div class="form-group">
										<label for="validationCustom01"> Cast Name</label> <input
											type="text" class="form-control" name="castName"
											id="validationCustom01" required>
										<div class="valid-feedback">Looks good!</div>
										<div class="invalid-feedback">Please Provide
											Designation.</div>
									</div>
									<div class="form-group row">
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
										<button type="reset" class="btn btn-danger">Reset</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-12">
					<div class="card">
						<div class="card-header">

							<h5 class="card-title">Cast Details -</h5>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class=" mb-0 table table-bordered ">
									<thead class="bg-primary">


										<tr class="text-center">
											<th>Serial No.</th>
											<th>Cast Name</th>
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
											ResultSet rs = stmt.executeQuery("select * from castcategory");
											while (rs.next()) {
										%>

										<tr class="text-center">
											<td><%=cnt%></td>
											<td><%=rs.getString("castCategoryName")%></td>
											<td><%=rs.getString("castCategoryStatus")%></td>
											<td class="">
												<div class="actions ">
													<a href="" class="btn btn-sm bg-danger-light"> <i
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
			$("#addCastForm").submit(function(event) {
				event.preventDefault();
				//let f = new FormData($("#addAcademicYear")[0])
				   if ($("#addCastForm")[0].checkValidity() === false) {
				        event.stopPropagation();
				    } else {
						$.ajax({
							type : 'POST',
							url : './DB/castDB.jsp',
							data:$("#addCastForm").serialize(),
							success : function(responce) {
								console.log(responce.trim())
								if (responce.trim() == "1") {
									$("#addCastForm")[0].reset()
									Swal.fire({
										icon: 'success',
										  title: 'Cast Added Successfully ' ,
										  confirmButtonText: 'Ok',
										}).then((result) => {
										  /* Read more about isConfirmed, isDenied below */
											 window.location.reload();
										})
								} else {
									Swal.fire({
									icon: 'error',
									title: 'Cast cannot be added ' ,
									confirmButtonText: 'Ok',
									}).then((result) => {
									/* Read more about isConfirmed, isDenied below */
									})												
								}
							}
						})
				    }
				    $("addCastForm").addClass('was-validated');
				});
			})
		
	</script>

</body>
</html>