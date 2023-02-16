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
								<h5 class="card-title">Add New Student- </h5>
							</div>

							<div class="card-body">
								<h5 class="card-title">General Information</h5>
								<form action="DB/studentShortFormDB.jsp" method="POST"
									class="needs-validation" novalidate>


									<div class="row">
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-user"></i></span> Student First Name -</label>
												<div class="col-lg-12">
													<input type="text" name="studentFirstName"
														class="form-control" id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide First
														Name.</div>

												</div>
											</div>
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-lg-3 col-form-label"><span class="px-1"><i
														class="fa-solid fa-address-card"></i></span>Student PRN Number -</label>
												<div class="col-lg-12">
													<input type="number" class="form-control"
														name="studentPRNNumber" id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Middle
														Name.</div>

												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-3 col-form-label"><span
													class="px-1"><i
														class="fa-solid fa-person-half-dress"></i></span>Gender -</label>
												<div class="col-lg-12">
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
												<label class="col-lg-3 col-form-label"><span
													class="px-1"><i class="fa-solid fa-address-card"></i></span>Caste
													Category -</label>
												<div class="col-lg-12">
													<select class="form-control form-select"
														name="castCategory" id="validationCustom01" required>
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
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-lg-3 col-form-label"><span class="px-1"><i
														class="fa-solid fa-calendar-days"></i></span>Academic Year - </label>
												<div class="col-lg-12">
													<input type="date" class="form-control"
														id="validationCustom01" name="academicYear" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide valid
														Academic Year.</div>
												</div>
											</div>
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-lg-3 col-form-label"><span class="mx-1"><i
														class="fa-solid fa-wallet"></i></span>Select Fees Category -</label>
												<div class="col-lg-12">
													<select class="form-control form-select"
														name="admissionStatus" id="validationCustom01" required>
														<option value="" disabled selected hidden>Please
															Select</option>
														<option></option>
													</select>
												</div>
											</div>

										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-lg-3 col-form-label "><span class="px-1"><i
														class="fas fa-user "></i></span>Student Middle Name -</label>
												<div class="col-lg-12">
													<input type="text" class="form-control"
														id="validationCustom01" name="studentMiddleName" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Middle
														Name.</div>
												</div>
											</div>
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-lg-3 col-form-label"><span class="px-1"><i
														class="fa-solid fa-calendar-days"></i></span>Date Of Admission -</label>
												<div class="col-lg-12">
													<input type="date" class="form-control"
														id="validationCustom01" p name="dateOfAdmission" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide valid
														Date Of Admission</div>
												</div>
											</div>
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-lg-3 col-form-label"><span class="px-1"><i
														class="fa-solid fa-mobile"></i></span>Contact No -</label>
												<div class="col-lg-12">
													<input type="number" class="form-control"
														id="validationCustom01" name="contactNo" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Contact
														No.</div>

												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-3 col-form-label"><span
													class="px-1"><i class="fa-solid fa-address-card"></i></span>Religion
													- </label>
												<div class="col-lg-12">
													<select class="form-control form-select" name="rseligion"
														id="validationCustom01" required>
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
											<div class="form-group row">
												<label class="col-lg-3 col-form-label"><span
													class="px-1"><i class="fa-solid fa-user-plus"></i></span>Select
													Section - </label>
												<div class="col-lg-12">
													<select class="form-control form-select"
														name="selectSection" id="validationCustom01" required>
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
													class="col-lg-3 col-form-label"><span class="px-1"><i
														class="fas fa-user"></i></span>Student Last Name -</label>
												<div class="col-lg-12">
													<input type="text" class="form-control"
														id="validationCustom01" name="studentLastName" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Last
														Name.</div>
												</div>
											</div>
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-lg-3 col-form-label"><span class="px-1"><i
														class="fa-solid fa-calendar-days"></i></span>Date Of Birth - </label>
												<div class="col-lg-12">
													<input type="date" class="form-control"
														id="validationCustom01" name="studentDOB" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide valid
														Email-Id.</div>
												</div>
											</div>
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-lg-3 col-form-label"><span class="px-1"><i
														class="fa-solid fa-flag"></i></span>Nationality -</label>
												<div class="col-lg-12">
													<input type="text" class="form-control"
														id="validationCustom01" name="nationality" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide
														Religion.</div>

												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-3 col-form-label"><span
													class="px-1"><i class="fa-solid fa-toggle-off"></i></span>Status
												</label>
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
											<div class="form-group row">
												<label class="col-lg-3 col-form-label"><span
													class="px-1"><i class="fa-solid fa-graduation-cap"></i></span>Select
													Class - </label>
												<div class="col-lg-12">
													<select class="form-control form-select" name="selectClass"
														id="validationCustom01" required>
														<option value="" disabled selected hidden>Please
															Select</option>
														<%
														try {
															Connection con = ConnectionProvider.getConnection();
															Statement stmt = con.createStatement();
															ResultSet rs = stmt.executeQuery("select * from studClass");
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
										<button class="btn btn-primary " type="submit">Submit
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

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>