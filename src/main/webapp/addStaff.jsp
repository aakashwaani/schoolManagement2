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

				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-header">
								<h5 class="card-title">Add New Staff Entry -</h5>
							</div>
							<div class="card-body">
								<form id="addStaffForm" class="needs-validation" method="POST"
									role="form" enctype="multipart/form-data" novalidate>
									<div class="row">
										<div class="col-xl-6">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-lg-3 col-form-label">Staff Profile Pic</label>
												<div class="col-lg-9 ">
													<input type="file" id="validationCustom01"
														class="form-control" name="staffProfilePic" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Upload Staff
														Profile Pic.</div>
												</div>
											</div>
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-lg-3 col-form-label">Select Staff Role </label>
												<div class="col-lg-9">
													<select class="form-control form-select" name="staffRoleId"
														id="validationCustom01" required>
														<option value="" disabled selected hidden>Please
															Select</option>

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
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Staff
														Role</div>


												</div>
											</div>

											<div class="form-group row">
												<label for="validationCustom01"
													class="col-lg-3 col-form-label">First Name</label>
												<div class="col-lg-9">
													<input type="text" class="form-control" name="firstName"
														id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide
														FirstName.</div>
												</div>
											</div>

											<div class="form-group row">
												<label for="validationCustom01"
													class="col-lg-3 col-form-label">Middle Name</label>
												<div class="col-lg-9">
													<input type="text" class="form-control" name="middleName"
														id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide
														MiddleName.</div>
												</div>
											</div>

											<div class="form-group row">
												<label class="col-lg-3 col-form-label">Last Name </label>
												<div class="col-lg-9">
													<input type="text" class="form-control" name="lastName"
														required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide
														LastName.</div>
												</div>
											</div>

											<div class="form-group row">
												<label class="col-lg-3 col-form-label">Mobile No</label>
												<div class="col-lg-9">
													<input type="number" class="form-control" name="moblileNo"
														pattern="\d{10}" maxlength="10" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Mobile
														No.</div>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-3 col-form-label"><span
													class="px-1"><i
														class="fa-solid fa-person-half-dress"></i></span>Gender -</label>
												<div class="col-lg-9">
													<select class="form-control form-select" name=gender
														id="validationCustom01" required><option value=""
															disabled selected hidden>Please Select</option>
														<option>Male</option>
														<option>Female</option>
													</select>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Gender</div>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-3 col-form-label">Joining Date</label>
												<div class="col-lg-9">
													<input type="date" name="joiningDate" class="form-control"
														required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Joining
														Date</div>
												</div>
											</div>


										</div>
										<div class="col-xl-6">

											<div class="form-group row">
												<label class="col-lg-3 col-form-label">Employee Id</label>
												<div class="col-lg-9">
													<input type="number" name="employeeId" class="form-control"
														required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Employee
														Id</div>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-3 col-form-label">Date Of Birth</label>
												<div class="col-lg-9">
													<input type="date" name="dateofBirth" class="form-control"
														required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Date Of
														Birth</div>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-3 col-form-label">Email ID</label>
												<div class="col-lg-9">
													<input type="email" name="email" class="form-control"
														pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Email ID</div>
												</div>
											</div>
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-lg-3 col-form-label">Qualification</label>
												<div class="col-lg-9">
													<input type="text" name="qualification"
														class="form-control" id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide
														Qualification</div>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-3 col-form-label">Salary</label>
												<div class="col-lg-9">
													<input type="number" name="salary" class="form-control"
														required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Salary</div>
												</div>
											</div>

											<div class="form-group row">
												<label class="col-lg-3 col-form-label">Designation</label>
												<div class="col-lg-9">
													<select class="form-control form-select"
														name="designationId" id="validationCustom01" required>
														<option value="" disabled selected hidden>Please
															Select</option>

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
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide
														Designation</div>


												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-3 col-form-label">Caste Id</label>
												<div class="col-lg-9">
													<select class="form-control form-select" name="staffCastId"
														required>
														<option value="" disabled selected hidden>Please
															Select</option>

														<%
														try {
															Connection con = ConnectionProvider.getConnection();
															Statement stmt = con.createStatement();
															ResultSet rs = stmt.executeQuery("select * from castcategory");
															while (rs.next()) {
														%>



														<option value="<%=rs.getInt("castCategoryId")%>">
															<%=rs.getString("castCategoryName")%></option>
														<%
														}

														} catch (Exception e) {
														e.printStackTrace();
														}
														%>

													</select>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Caste ID</div>


												</div>
											</div>
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-lg-3 col-form-label">Caste Category</label>
												<div class="col-lg-9">
													<input type="text" name="casteCategory"
														class="form-control" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Caste
														Category</div>
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
														name="staffAddress" placeholder="" required></textarea>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Address</div>
												</div>
											</div>
										</div>
									</div>
									<div class="text-end">
										<button type="submit" class="btn btn-primary">Submit
											Form</button>
										<button type="reset" class="btn btn-danger">Reset
											</button>

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
			$("#addStaffForm").submit(function(event) {
				event.preventDefault();
				let f = new FormData($('#addStaffForm')[0])
				   if ($("#addStaffForm")[0].checkValidity() === false) {
				        event.stopPropagation();
				    } else {
						$.ajax({
							type : 'POST',
							enctype : "multipart/form-data",
							url : 'DB/addStaffDB.jsp',
							data :f,
							processData : false,
							contentType : false,
							cache : false,
							success : function(responce) {
								console.log(responce.trim())
								if (responce.trim() == "1") {
									$("#addStaffForm")[0].reset()
									Swal.fire({
										icon: 'success',
										  title: 'New Staff Added Successfully ' ,
										  confirmButtonText: 'Ok',
										}).then((result) => {
										  /* Read more about isConfirmed, isDenied below */
											 window.location.reload();

										})
								} else {
									Swal.fire({
									icon: 'error',
									title: 'Staff cannot be added ' ,
									confirmButtonText: 'Ok',
									}).then((result) => {
									/* Read more about isConfirmed, isDenied below */
									})												
								}
							}
						})
				    }
				    $('#addStaffForm').addClass('was-validated');
				});
			})
		
	</script>
</body>
</html>