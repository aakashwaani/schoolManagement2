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
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-header">
								<h5 class="card-title">Add New Student-</h5>
							</div>

							<div class="card-body">
								<h5 class="card-title">General Information</h5>
								<form action="DB/studentShortFormDB.jsp" method="POST"
									role="form" id="studentShortForm" class="needs-validation"
									novalidate>
									<div class="row">
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-user"></i></span>Student First Name -</label>
												<div class="col-lg-12">
													<input type="text" name="studentFirstName"
														class="form-control" id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Student
														Name.</div>

												</div>
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-user"></i></span>Student Middle Name -</label>
												<div class="col-lg-12">
													<input type="email" name="studentMiddleName"
														class="form-control" id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Student
														Middle Name.</div>
												</div>
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-user"></i></span>Student Last Name -</label>
												<div class="col-lg-12">
													<input type="email" name="studentLastName"
														class="form-control" id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Student
														Last Name.</div>
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-user"></i></span> Student PRN No -</label>
												<div class="col-lg-12">
													<input type="number" name="studentPRNNumber" class="form-control"
														id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Student
														PRN Number.</div>
												</div>
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-lg-3 col-form-label"><span class="px-1"><i
														class="fa-solid fa-address-card"></i></span>Gender -
												</label>
												<div class="col-lg-12">

													<input type="number" class="form-control" name="studentGender"
														id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Gender
														Name.</div>

												</div>
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fa-solid fa-calendar-days"></i></span>Date of Admission -</label>
												<div class="col-lg-12">
													<input type="date" name="admissionDate"
														class="form-control" id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Student
														Admission Date.</div>
												</div>
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-mobile-android-alt"></i></span>Date Of Birth -</label>
												<div class="col-lg-12">
													<input type="date" name="studentDOB" class="form-control"
														id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Student
														Birth Date.</div>
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-mobile-android-alt"></i></span>Gender -</label>
												<div class="col-lg-12">
													<select class="form-control form-select"
														name="admissionStatus" id="validationCustom01" required>
														<option value="" disabled selected hidden>Please
															Select</option>
														<option>Male</option>
														<option>Female</option>
													</select>
												</div>
											</div>

										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-envelope"></i></span>Student Contact No -</label>
												<div class="col-lg-12">
													<input type="email" name="studentContact"
														class="form-control" id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Student
														Contact No.</div>
												</div>
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-mobile-android-alt"></i></span>Nationality -</label>
												<div class="col-lg-12">
													<input type="text" name="nationality" class="form-control"
														id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide
														Nationality.</div>
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-user"></i></span>Caste Category -</label>
												<div class="col-lg-12">
													<select class="form-control form-select" name="sectionId"
														id="validationCustom01" required>
														<option value="" disabled selected hidden>Please
															Select</option>
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
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-user"></i></span>Religion -</label>
												<div class="col-lg-12">
													<select class="form-control form-select"
														name="studentReligion" id="validationCustom01" required>
														<option value="" disabled selected hidden>Please
															Select</option>
														<%
														try {
															Connection con = ConnectionProvider.getConnection();
															Statement stmt = con.createStatement();
															ResultSet rs = stmt.executeQuery("select * from religion");
															while (rs.next()) {
														%>
														<option value="<%=rs.getInt("religionId")%>">
															<%=rs.getString("religionName")%></option>
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
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-mobile-android-alt"></i></span>Status -</label>
												<div class="col-lg-12">
													<select class="form-control form-select"
														name="admissionStatus" id="validationCustom01" required>
														<option value="" disabled selected hidden>Please
															Select</option>
														<option>ADMITTED</option>
														<option>NOT-ADMITTED</option>
													</select>
												</div>

											</div>
										</div>
									</div>

									<div class="row">
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-user"></i></span>Academic Year -</label>
												<div class="col-lg-12">
													<select class="form-control form-select" name="sectionId"
														id="validationCustom01" required>
														<option value="" disabled selected hidden>Please
															Select</option>
														<%
														try {
															Connection con = ConnectionProvider.getConnection();
															Statement stmt = con.createStatement();
															ResultSet rs = stmt.executeQuery("select * from academicyear");
															while (rs.next()) {
														%>



														<option value="<%=rs.getInt("academicYearId")%>">
															<%=rs.getString("academicYear")%></option>
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
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-user"></i></span>Select Section -</label>
												<div class="col-lg-12">

													<select class="form-control form-select"
														name="studentReligion" id="validationCustom01" required>
														<option value="" disabled selected hidden>Please
															Select</option>
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
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-mobile-android-alt"></i></span>Select Class -</label>
												<div class="col-lg-12">

													<select class="form-control form-select"
														name="studentReligion" id="validationCustom01" required>
														<option value="" disabled selected hidden>Please
															Select</option>
														<%
														try {
															Connection con = ConnectionProvider.getConnection();
															Statement stmt = con.createStatement();
															ResultSet rs = stmt.executeQuery("select * from studclass");
															while (rs.next()) {
														%>



														<option value="<%=rs.getInt("classId")%>">
															<%=rs.getString("className")%></option>
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
									<div class="text-end">
										<button class="btn btn-primary" type="submit">Submit
											Form</button>
										<button class="btn btn-danger" type="reset">Reset</button>
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
		src="https://cdn.jsdelivr.net/npm/sweetalert2@11.7.1/dist/sweetalert2.all.min.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	<jsp:include page="footer.jsp"></jsp:include>

	<script type="text/javascript">
		$(document).ready(function() {
			$('#studentShortForm').submit(function(event) {
				event.preventDefault();
				//let f = new FormData($("#addAcademicYear")[0])
				   if ($('#studentShortForm')[0].checkValidity() === false) {
				        event.stopPropagation();
				    } else {
						$.ajax({
							type : 'POST',
							url : 'DB/studentShortFormDB.jsp',
							data:$('#studentShortForm').serialize(),
							success : function(responce) {
								console.log(responce.trim())
								if (responce.trim() == "1") {
									$('#studentShortForm')[0].reset()
									Swal.fire({
										icon: 'success',
										  title: 'Studenet Entry Successfull' ,
										  confirmButtonText: 'Ok',
										}).then((result) => {
										  /* Read more about isConfirmed, isDenied below */
											 window.location.reload();
										})
								} else {
									Swal.fire({
									icon: 'error',
									title: 'Something Went Wrong..' ,
									confirmButtonText: 'Ok',
									}).then((result) => {
									/* Read more about isConfirmed, isDenied below */
									})												
								}
							}
						})
				    }
				    $("#studentShortForm").addClass('was-validated');
				});
			})
		
	</script>
	<br>
</body>
</html>