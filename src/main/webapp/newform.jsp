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
				<div class="col-xl-12">
					<div class="card">
						<div class="card-body">
							<h4 class="header-title mb-4"></h4>
							<ul class="nav nav-pills navtab-bg nav-justified">
								<li class="nav-item"><a href="#home1" data-bs-toggle="tab"
									aria-expanded="false" class="nav-link"> Short Entry Form </a></li>
								<li class="nav-item"><a href="#profile1"
									data-bs-toggle="tab" aria-expanded="true"
									class="nav-link active"> Long Entry Form </a></li>
								<li class="nav-item"><a href="#messages1"
									data-bs-toggle="tab" aria-expanded="false" class="nav-link">
										Other Details Form </a></li>
							</ul>
							<div class="tab-content">
								<div class="tab-pane" id="home1">
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
													<input type="email" name="studentLastName"
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
													<input type="number" name="prnNumber"
														class="form-control" id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Student
														PRN Number.</div>

												</div>
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-envelope"></i></span>Student PRN No -</label>
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
									</div>
									<div class="row">
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-user"></i></span>Online Registration No -</label>
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
														class="fas fa-envelope"></i></span>Student PRN No -</label>
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
									</div>
									<div class="row">
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-user"></i></span>Online Registration No -</label>
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
														class="fas fa-envelope"></i></span>Student PRN No -</label>
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
									</div>
									<div class="row">
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-user"></i></span>Online Registration No -</label>
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
														class="fas fa-envelope"></i></span>Student PRN No -</label>
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
				</div></div>
								<div class="tab-pane show active" id="profile1"><div class="row">
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
													<input type="email" name="studentLastName"
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
													<input type="number" name="prnNumber"
														class="form-control" id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Student
														PRN Number.</div>

												</div>
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-envelope"></i></span>Student PRN No -</label>
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
									</div>
									<div class="row">
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-user"></i></span>Online Registration No -</label>
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
														class="fas fa-envelope"></i></span>Student PRN No -</label>
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
									</div>
									<div class="row">
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-user"></i></span>Online Registration No -</label>
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
														class="fas fa-envelope"></i></span>Student PRN No -</label>
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
									</div>
									<div class="row">
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-user"></i></span>Online Registration No -</label>
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
														class="fas fa-envelope"></i></span>Student PRN No -</label>
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
				</div></div>
								<div class="tab-pane" id="messages1"><div class="row">
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
													<input type="email" name="studentLastName"
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
													<input type="number" name="prnNumber"
														class="form-control" id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Student
														PRN Number.</div>

												</div>
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-envelope"></i></span>Student PRN No -</label>
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
									</div>
									<div class="row">
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-user"></i></span>Online Registration No -</label>
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
														class="fas fa-envelope"></i></span>Student PRN No -</label>
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
									</div>
									<div class="row">
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-user"></i></span>Online Registration No -</label>
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
														class="fas fa-envelope"></i></span>Student PRN No -</label>
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
									</div>
									<div class="row">
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-user"></i></span>Online Registration No -</label>
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
														class="fas fa-envelope"></i></span>Student PRN No -</label>
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
				</div></div>
							</div>
						</div>
					</div>
				</div>
				<div class="accordion" id="accordionPanelsStayOpenExample">
					<div class="accordion-item">
						<h2 class="accordion-header" id="panelsStayOpen-headingOne">
							<button class="accordion-button" type="button"
								data-bs-toggle="collapse"
								data-bs-target="#panelsStayOpen-collapseOne"
								aria-expanded="true" aria-controls="panelsStayOpen-collapseOne"> Short ENtry Form
							</button>
						</h2>
						<div id="panelsStayOpen-collapseOne"
							class="accordion-collapse collapse show"
							aria-labelledby="panelsStayOpen-headingOne">
							<div class="accordion-body">
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
													<input type="email" name="studentLastName"
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
													<input type="number" name="prnNumber"
														class="form-control" id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Student
														PRN Number.</div>

												</div>
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-envelope"></i></span>Student PRN No -</label>
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
									</div>
									<div class="row">
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-user"></i></span>Online Registration No -</label>
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
														class="fas fa-envelope"></i></span>Student PRN No -</label>
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
									</div>
									<div class="row">
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-user"></i></span>Online Registration No -</label>
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
														class="fas fa-envelope"></i></span>Student PRN No -</label>
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
									</div>
									<div class="row">
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-user"></i></span>Online Registration No -</label>
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
														class="fas fa-envelope"></i></span>Student PRN No -</label>
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
				</div></div>
						</div>
					</div>
					<div class="accordion-item">
						<h2 class="accordion-header" id="panelsStayOpen-headingTwo">
							<button class="accordion-button collapsed" type="button"
								data-bs-toggle="collapse"
								data-bs-target="#panelsStayOpen-collapseTwo"
								aria-expanded="false" aria-controls="panelsStayOpen-collapseTwo">
								Long Enrty FOrm
							</button>
						</h2>
						<div id="panelsStayOpen-collapseTwo"
							class="accordion-collapse collapse"
							aria-labelledby="panelsStayOpen-headingTwo">
							<div class="accordion-body"><div class="row">
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
													<input type="email" name="studentLastName"
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
													<input type="number" name="prnNumber"
														class="form-control" id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Student
														PRN Number.</div>

												</div>
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-envelope"></i></span>Student PRN No -</label>
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
									</div>
									<div class="row">
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-user"></i></span>Online Registration No -</label>
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
														class="fas fa-envelope"></i></span>Student PRN No -</label>
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
									</div>
									<div class="row">
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-user"></i></span>Online Registration No -</label>
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
														class="fas fa-envelope"></i></span>Student PRN No -</label>
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
									</div>
									<div class="row">
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-user"></i></span>Online Registration No -</label>
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
														class="fas fa-envelope"></i></span>Student PRN No -</label>
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
				</div></div>
						</div>
					</div>
					<div class="accordion-item">
						<h2 class="accordion-header" id="panelsStayOpen-headingThree">
							<button class="accordion-button collapsed" type="button"
								data-bs-toggle="collapse"
								data-bs-target="#panelsStayOpen-collapseThree"
								aria-expanded="false"
								aria-controls="panelsStayOpen-collapseThree">Other Details Form</button>
						</h2>
						<div id="panelsStayOpen-collapseThree"
							class="accordion-collapse collapse"
							aria-labelledby="panelsStayOpen-headingThree">
							<div class="accordion-body"><div class="row">
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
													<input type="email" name="studentLastName"
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
													<input type="number" name="prnNumber"
														class="form-control" id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Student
														PRN Number.</div>

												</div>
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-envelope"></i></span>Student PRN No -</label>
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
									</div>
									<div class="row">
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-user"></i></span>Online Registration No -</label>
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
														class="fas fa-envelope"></i></span>Student PRN No -</label>
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
									</div>
									<div class="row">
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-user"></i></span>Online Registration No -</label>
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
														class="fas fa-envelope"></i></span>Student PRN No -</label>
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
									</div>
									<div class="row">
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-user"></i></span>Online Registration No -</label>
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
														class="fas fa-envelope"></i></span>Student PRN No -</label>
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
				</div></div>
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