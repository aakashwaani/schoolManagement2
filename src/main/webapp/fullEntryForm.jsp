
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
								<h5 class="card-title">Add New Student (Full Entry Form) -</h5>
							</div>

							<div class="card-body">
								<h5 class="card-title">General Information</h5>
								<form action="" enctype="multipart/form-data" method="POST"
									class="needs-validation" novalidate>


									<div class="row">
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"> <span class="px-1">
														<i class="fas fa-user"></i>
												</span> Student First Name -
												</label>
												<div class="col-lg-12">
													<input type="text" name="schoolRegistrationNo"
														class="form-control" id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide First
														Name.</div>

												</div>
											</div>
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-lg-3 col-form-label"><span class="px-1"><i
														class="fa-solid fa-address-card"></i></span>Online Registered ID
													-</label>
												<div class="col-lg-12">
													<input type="number" class="form-control" name="schoolName"
														id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide ID.</div>

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
														class="fa-solid fa-calendar-days"></i></span>Date Of Admission -
												</label>
												<div class="col-lg-12">
													<input type="date" class="form-control"
														id="validationCustom01" name="dateofAdmission" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide valid
														Admission Date.</div>
												</div>
											</div>


											<div class="form-group row">
												<label class="col-lg-3 col-form-label"><span
													class="px-1"><i class="fa-solid fa-address-card"></i></span>Caste
													Category -</label>
												<div class="col-lg-12">
													<select class="form-control form-select" name="castId"
														id="validationCustom01" required>

														<%
														try {
															Connection con = ConnectionProvider.getConnection();
															Statement stmt = con.createStatement();
															ResultSet rs = stmt.executeQuery("select * from casts");
															while (rs.next()) {
														%>



														<option value="<%=rs.getInt("castId")%>">
															<%=rs.getString("castName")%></option>
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
													class="col-lg-3 col-form-label "><span class="px-1"><i
														class="fas fa-user "></i></span>Student Middle Name -</label>
												<div class="col-lg-12">
													<input type="text" class="form-control"
														id="validationCustom01" name="principalName" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Middle
														Name.</div>
												</div>
											</div>
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-lg-3 col-form-label"><span class="px-1"><i
														class="fa-solid fa-address-card"></i></span>Student PRN Number -</label>
												<div class="col-lg-12">
													<input type="number" class="form-control" name="schoolName"
														id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide PRN
														Number.</div>

												</div>
											</div>
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-lg-3 col-form-label"><span class="px-1"><i
														class="fas fa-map-marker-alt"></i></span>Birth Place -</label>
												<div class="col-lg-12">
													<input type="text" class="form-control"
														id="validationCustom01" name="birthPlace" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Birth
														Place.</div>
												</div>
											</div>
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-lg-3 col-form-label"><span class="px-1"><i
														class="fas fa-images"></i></span>Photograph -</label>
												<div class="col-lg-12">
													<input type="file" class="form-control"
														id="validationCustom01" name="studentPhoto" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Upload Student
														Photograph.</div>

												</div>
											</div>
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-lg-3 col-form-label"><span class="px-1"><i
														class="fas fa-address-card"></i></span>Cast Name -</label>
												<div class="col-lg-12">
													<input type="number" class="form-control"
														id="validationCustom01" name="mobileNo" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Cast
														Name.</div>

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
														id="validationCustom01" name="studentFirstName" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Last
														Name.</div>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-3 col-form-label"><span
													class="px-1"><i
														class="fa-solid fa-person-half-dress"></i></span>Gender -</label>
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

											<div class="form-group row">
												<label for="validationCustom01"
													class="col-lg-3 col-form-label"><span class="px-1"><i
														class="fa-solid fa-flag"></i></span>Nationality -</label>
												<div class="col-lg-12">
													<input type="text" class="form-control"
														id="validationCustom01" name="religion" required>
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
														<option>Please Select</option>
														<option>ADMITTED</option>
														<option>NOT-ADMITTED</option>
													</select>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-3 col-form-label"><span
													class="px-1"><i class="fa-solid fa-address-card"></i></span>Religion
													- </label>
												<div class="col-lg-12">
													<select class="form-control form-select" name="rseligionId"
														id="validationCustom01" required>

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
									</div>
									<div class="row">
										<div class="col-xl-10">
											<div class="form-group row">
												<label class="col-lg-3 col-form-label"><span
													class="px-1"><i class="fas fa-map-marked-alt"></i></span>Address
													- </label>
												<div class="col-lg-9">
													<textarea name="Address" rows="6" cols="6"
														class="form-control" placeholder=""></textarea>
												</div>
											</div>

										</div>
									</div>
									<h5 class="card-title">Other Details -</h5>

									<div class="col-xl-6">
										<div class="form-group row">
											<label for="validationCustom01"
												class="col-form-label col-lg-3"><span class="px-1"><i
													class="fas fa-school"></i></span>Name Of Previous School -</label>
											<div class="col-lg-12">
												<input type="text" name="studentPreviousSchool"
													class="form-control" id="validationCustom01" required>
												<div class="valid-feedback">Looks good!</div>
												<div class="invalid-feedback">Please Provide Previous
													School Name Name.</div>

											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-user"></i></span>Aadhar No -</label>
												<div class="col-lg-12">
													<input type="number" name="studentAdharNumber"
														class="form-control" id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Student
														aadhar Number.</div>

												</div>
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-envelope"></i></span>Email -</label>
												<div class="col-lg-12">
													<input type="email" name="studentEmail"
														class="form-control" id="validationCustom01"
														pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Student
														Email address.</div>
												</div>
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-mobile-android-alt"></i></span>Student Contact No -</label>
												<div class="col-lg-12">
													<input type="number" name="studentAdharNumber"
														class="form-control" id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Student
														Contact Number.</div>

												</div>
											</div>
										</div>
									</div>

									<div class="row">
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-user"></i></span>Student's Father Name -</label>
												<div class="col-lg-12">
													<input type="text" name="studentFatherName"
														class="form-control" id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Enter Student
														Father Name.</div>

												</div>
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-user"></i></span>Parents Email -</label>
												<div class="col-lg-12">
													<input type="email" name="parentEmail" class="form-control"
														id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Enter Parent
														Email.</div>

												</div>
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-mobile-android-alt"></i></span>Parent's Contact
													No(Father) -</label>
												<div class="col-lg-12">
													<input type="number" name="studentAdharNumber"
														class="form-control" id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Student
														Contact Number.</div>

												</div>
											</div>
										</div>
									</div>
									<div class="row">

										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-user"></i></span>Student's Mother Name -</label>
												<div class="col-lg-12">
													<input type="text" name="studentMotherName"
														class="form-control" id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Enter Student
														Mother Name.</div>

												</div>
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-mobile-android-alt"></i></span>Parent's Contact
													No(Mother) -</label>
												<div class="col-lg-12">
													<input type="number" name="studentAdharNumber"
														class="form-control" id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Student
														Contact Number.</div>

												</div>
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i class="fa-solid fa-blender-phone"></i></span>Landline -</label>
												<div class="col-lg-12">
													<input type="text" name="landlineNumber"
														class="form-control" id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Enter Landline Number.</div>

												</div>
											</div>
										</div>
									</div>

									<div class="row">
										<div class="col-xl-4">
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
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label class="col-lg-3 col-form-label"><span
													class="px-1"><i class="fa-solid fa-user-plus"></i></span>Select
													Section - </label>
												<div class="col-lg-12">
													<select class="form-control form-select" name="sectionId"
														id="validationCustom01" required>

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
												<label class="col-lg-3 col-form-label"><span
													class="px-1"><i class="fa-solid fa-graduation-cap"></i></span>Select
													Class - </label>
												<div class="col-lg-12">
													<select class="form-control form-select" name="classId"
														id="validationCustom01" required>

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
									<div class="row">
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="far fa-money-bill-alt"></i></span> Class Fees-</label>
												<div class="col-lg-12">
													<input type="number" class="form-control"
														id="validationCustom01" name="slabFees" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Enter Class
														Fees.</div>

												</div>
											</div>
										</div>
									</div>
									<h5 class="card-title">Academic & Transport Fee Details -</h5>
									<div class="row">
										<div class="col-xl-3">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="far fa-money-bill-alt"></i></span> Select Fee Category -</label>
												<div class="col-lg-12">
													<select class="form-control form-select"
														name="admissionStatus" id="validationCustom01" required>
														<option></option>
														<option></option>
														<option></option>
													</select>
												</div>
											</div>
										</div>
										<div class="col-xl-3">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-bus"></i></span> Select Transport Way -</label>
												<div class="col-lg-12">
													<select class="form-control form-select"
														name="admissionStatus" id="validationCustom01" required>
														<option></option>
														<option></option>
														<option></option>
													</select>
												</div>
											</div>
										</div>
										<div class="col-xl-3">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-user"></i></span> Select Slab -</label>
												<div class="col-lg-12">
													<select class="form-control form-select"
														name="admissionStatus" id="validationCustom01" required>
														<option></option>
														<option></option>
														<option></option>
													</select>
												</div>
											</div>
										</div>
										<div class="col-xl-3">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="far fa-money-bill-alt"></i></span> Slab Fees-</label>
												<div class="col-lg-12">
													<input type="number" class="form-control"
														id="validationCustom01" name="slabFees" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Enter Slab Fees.</div>

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