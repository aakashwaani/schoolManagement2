<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="com.schoolmanagement.helper.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html >
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
							<h3 class="page-title">New Staff Entry</h3>
							<ul class="breadcrumb">
								<li class="breadcrumb-item"><a href="index.jsp">Dashboard</a></li>
								<li class="breadcrumb-item active">Add New Staff</li>
							</ul>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-header">
								<h5 class="card-title">Add New Staff Entry -</h5>
							</div>
							<div class="card-body">
								<form id="addStaffForm" action="DB/addStaffDB.jsp" method="POST"
									enctype="multipart/form-data">
									<div class="row">
										<!--  <div class="profile-pic-wrapper">
											<div class="pic-holder">
												<img id="profilePic" class="pic"
													src="https://source.unsplash.com/random/150x150?person">

												<Input class="uploadProfileInput" type="file"
													name="staffProfilePic"
													id="newProfilePhoto" accept="image/*" style="opacity: 0;" />
												<label for="newProfilePhoto" class="upload-file-block">

													<div class="text-center">
														<div class="mb-2">
															<i class="fa fa-camera fa-2x"></i>
														</div>
														<div class="text-uppercase">
															Update <br /> Profile Photo
														</div>
													</div>
												</label>
											</div>
										</div>
										-->
										<div class="col-xl-6">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-lg-3 col-form-label">Staff Profile Pic</label>
												<div class="col-lg-9 ">
													<input type="file" id="validationCustom01"
														class="form-control" name="staffProfilePic">
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Upload Banner.</div>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-3 col-form-label">Select Staff
													Role </label>
												<div class="col-lg-9">
													<select class="form-control form-select" name="staffRoleId">
														<%
														try {
															Connection con = ConnectionProvider.getConnection();
															Statement stmt = con.createStatement();
															ResultSet rs = stmt.executeQuery("select * from staffrole");
															while (rs.next()) {
														%>



														<option value="<%=rs.getInt("staffRoleId")%>">
															<%=rs.getString("staffRole")%></option>
														<%
														}

														} catch (Exception e) {
														e.printStackTrace();
														}
														%>

													</select>
												</div>
											</div>

											<div class="form-group row">
												<label class="col-lg-3 col-form-label">First Name</label>
												<div class="col-lg-9">
													<input type="text" class="form-control" name="firstName">
												</div>
											</div>

											<div class="form-group row">
												<label class="col-lg-3 col-form-label">Middle Name</label>
												<div class="col-lg-9">
													<input type="text" class="form-control" name="middleName">
												</div>
											</div>

											<div class="form-group row">
												<label class="col-lg-3 col-form-label">LastName Name</label>
												<div class="col-lg-9">
													<input type="text" class="form-control" name="lastName">
												</div>
											</div>

											<div class="form-group row">
												<label class="col-lg-3 col-form-label">Mobile No</label>
												<div class="col-lg-9">
													<input type="number" class="form-control" name="moblileNo">
												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-3 col-form-label">Gender</label>
												<div class="col-lg-9">
													<div class="form-check form-check-inline">
														<input class="form-check-input" type="radio" name="gender"
															id="gender_male" value="option1" checked> <label
															class="form-check-label" for="gender_male"> Male
														</label>
													</div>
													<div class="form-check form-check-inline">
														<input class="form-check-input" type="radio" name="gender"
															id="gender_female" value="option2"> <label
															class="form-check-label" for="gender_female">
															Female </label>
													</div>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-3 col-form-label">Joining Date</label>
												<div class="col-lg-9">
													<input type="date" name="joiningDate" class="form-control">
												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-3 col-form-label">Designation</label>
												<div class="col-lg-9">
													<select class="form-control form-select"
														name="designationId" id="validationCustom01" required>

														<%
														try {
															Connection con = ConnectionProvider.getConnection();
															Statement stmt = con.createStatement();
															ResultSet rs = stmt.executeQuery("select * from designation");
															while (rs.next()) {
														%>



														<option value="<%=rs.getInt("designationId")%>">
															<%=rs.getString("designationName")%></option>
														<%
														}

														} catch (Exception e) {
														e.printStackTrace();
														}
														%>
													</select>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-3 col-form-label">Caste
													Category</label>
												<div class="col-lg-9">
													<input type="text" name="casteCategory"
														class="form-control" required>
												</div>
											</div>
										</div>
										<div class="col-xl-6">

											<div class="form-group row">
												<label class="col-lg-3 col-form-label">Employee Id</label>
												<div class="col-lg-9">
													<input type="number" name="employeeId" class="form-control">
												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-3 col-form-label">Date Of Birth</label>
												<div class="col-lg-9">
													<input type="date" name="dateofBirth" class="form-control">
												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-3 col-form-label">Email ID</label>
												<div class="col-lg-9">
													<input type="email" name="email" class="form-control">
												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-3 col-form-label">Qualification</label>
												<div class="col-lg-9">
													<input type="text" name="qualification"
														class="form-control">
												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-3 col-form-label">Salary</label>
												<div class="col-lg-9">
													<input type="number" name="salary" class="form-control">
												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-3 col-form-label">Caste Id</label>
												<div class="col-lg-9">
													<select class="form-control form-select" name="staffCastId">
														<%
														try {
															Connection con = ConnectionProvider.getConnection();
															Statement stmt = con.createStatement();
															ResultSet rs = stmt.executeQuery("select * from casts");
															while (rs.next()) {
														%>



														<option value="<%=rs.getInt("castId")%>">
															<%=rs.getString("castName")%></option>
														<%
														}

														} catch (Exception e) {
														e.printStackTrace();
														}
														%>

													</select>
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-xl-7">
											<div class="form-group row">
												<label class="col-lg-3 col-form-label">Address </label>
												<div class="col-lg-12">
													<textarea rows="6" cols="6" class="form-control"
														name="staffAddress" placeholder=""></textarea>
												</div>
											</div>
										</div>
									</div>
									<div class="text-end">
										<button type="submit" class="btn btn-primary">Submit
											Form</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<script
	src="
https://cdn.jsdelivr.net/npm/sweetalert2@11.7.1/dist/sweetalert2.all.min.js
"></script>
	<jsp:include page="footer.jsp"></jsp:include>

	<script type="text/javascript">
	
	$(document).ready(function() {
		$("#addStaffForm").on('submit', function(event) {
			event.preventDefault();
			//var f = $(this).serialize();
			let f = new FormData($(this)[0])
			console.log(f)

			$.ajax({
				type : 'POST',
				enctype : 'multipart/form-data',
				url : 'DB/addStaffDB.jsp',
				data : f,
				processData : false,
				contentType : false,
				cache : false,
				success : function(responce) {
					console.log(responce.trim())
					if (responce.trim() == "1") {
						 $("#addStaffForm")[0].reset()
						Swal.fire({
							icon: 'success',
							  title: 'School Added Successfully ' ,
							  confirmButtonText: 'Ok',
							}).then((result) => {
							  /* Read more about isConfirmed, isDenied below */
							})
					} else {
						Swal.fire({
							icon: 'error',
							  title: 'School cannot be added Something went Wrong' ,
							  confirmButtonText: 'Ok',
							}).then((result) => {
							  /* Read more about isConfirmed, isDenied below */
							})
					}
				}
			})
		})
	})
	
	</script>
</body>
</html>