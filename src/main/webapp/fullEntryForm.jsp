
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
													<input type="text" name="studentMiddleName"
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
													<input type="text" name="studentLastName"
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
														class="fas fa-user"></i></span>Online Registration Id -</label>
												<div class="col-lg-12">
													<input type="text" name="registrationNumber"
														class="form-control" id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Student
														Registration Id.</div>

												</div>
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-user"></i></span>Student PRN No -</label>
												<div class="col-lg-12">
													<input type="email" name="studentPRN" class="form-control"
														id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Student
														PRN No.</div>
												</div>
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fa-solid fa-person-half-dress"></i></span>Gender -</label>
												<div class="col-lg-12">
													<select class="form-control form-select"
														name="admissionStatus" id="validationCustom01" required>
														<option value="" disabled selected hidden>Please
															Select</option>
														<option>Male</option>
														<option>Female</option>
													</select>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Select Gender.</div>
												</div>


											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fa-solid fa-calendar-days"></i></span>Date Of Birth -</label>
												<div class="col-lg-12">
													<input type="date" name="studentFirstName"
														class="form-control" id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Student
														Date Of Birth.</div>

												</div>
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fa-sharp fa-solid fa-location-dot"></i></span>BirthPlace -</label>
												<div class="col-lg-12">
													<input type="email" name="studentLastName"
														class="form-control" id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Student
														BirthPlace.</div>
												</div>
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fa-solid fa-flag"></i></span>Nationality -</label>
												<div class="col-lg-12">
													<input type="text" name="nationality" class="form-control"
														id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Student
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
														class="fas fa-calendar-days"></i></span>Date Of Admission-</label>
												<div class="col-lg-12">
													<input type="Date" name="dateOfAdmission"
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
														class="fa-solid fa-camera"></i></span>Student Photograph -</label>
												<div class="col-lg-12">
													<input type="file" name="studentPhoto" class="form-control"
														id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Upload Student
														Photo.</div>
												</div>
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fa-solid	fa-toggle-on"></i></span>Status -</label>
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
													class="col-form-label col-lg-3"><span class="px-1">
														<i class="fa-solid fa-address-card"></i>
												</span>Cast Category -</label>
												<div class="col-lg-12">
													<select class="form-control form-select"
														name="castCategory" id="validationCustom01" required>
														<option></option>
														<option></option>
														<option></option>
													</select>
													<div class="valid-feedback">Looks good!</div>
												<div class="invalid-feedback">Please Select Cast
													Category.</div>
												</div>
												
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1">
														<i class="fa-solid fa-address-card"></i>
												</span>Cast Name -</label>
												<div class="col-lg-12">
													<input type="text" name="castName" class="form-control"
														id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Student
														Middle Name.</div>
												</div>
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1">
														<i class="fa-solid fa-address-card"></i>
												</span>Religion -</label>
												<div class="col-lg-12">
													<select class="form-control form-select" name="religion"
														id="validationCustom01" required>
														<option></option>
														<option></option>
														<option></option>
													</select>
													<div class="valid-feedback">Looks good!</div>
												<div class="invalid-feedback">Please Select Cast
													Religion.</div>
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
														class="form-control" placeholder="Adress...	" required></textarea>
														<div class="valid-feedback">Looks good!</div>
												<div class="invalid-feedback">Please Enter Address.</div>
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
														class="fa-solid fa-id-card"></i></span>Aadhar No -</label>
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
														class="fas fa-envelope"></i></span>Parents Email -</label>
												<div class="col-lg-12">
													<input type="email" name="parentEmail" class="form-control"
														id="validationCustom01"
														pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Parent's
														Email address.</div>
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
													<div class="invalid-feedback">Please Provide Mother
														Contact Number.</div>

												</div>
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fa-solid fa-blender-phone"></i></span>Landline -</label>
												<div class="col-lg-12">
													<input type="text" name="landlineNumber"
														class="form-control" id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Enter Landline
														Number.</div>

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
													<select class="form-control form-select"
														name="admissionStatus" id="validationCustom01" required>
														<option></option>
														<option></option>
														<option></option>
													</select>
													<div class="valid-feedback">Looks good!</div>
												<div class="invalid-feedback">Please Select Section.</div>
												</div>
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label class="col-lg-3 col-form-label"><span
													class="px-1"><i class="fa-solid fa-graduation-cap"></i></span>Select
													Class - </label>
												<div class="col-lg-12">
													<select class="form-control form-select"
														name="admissionStatus" id="validationCustom01" required>
														<option></option>
														<option></option>
														<option></option>
													</select>
													<div class="valid-feedback">Looks good!</div>
												<div class="invalid-feedback">Please Select Class.</div>
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
													<div class="valid-feedback">Looks good!</div>
												<div class="invalid-feedback">Please Select Fee Category.</div>
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
													<div class="valid-feedback">Looks good!</div>
												<div class="invalid-feedback">Please Select Transport Way.</div>
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
													<div class="valid-feedback">Looks good!</div>
												<div class="invalid-feedback">Please Select Slab.</div>
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