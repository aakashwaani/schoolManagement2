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
								<h5 class="card-title">Add Previous Exam Details-</h5>
							</div>

							<div class="card-body">
								<form action="" method="POST" class="needs-validation"
									novalidate>
									<div class="row">
										<div class="col-xl-3">
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
										</div>
										<div class="col-xl-3">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-lg-3 col-form-label "><span class="px-1"><i
														class="fas fa-user "></i></span>Student Full Name -</label>
												<div class="col-lg-12">
													<input type="text" class="form-control"
														id="validationCustom01" name="studentMiddleName" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Middle
														Name.</div>
												</div>
											</div>
										</div>
										<div class="col-xl-3">
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
										<div class="col-xl-3">
											<div class="form-group row">
												<label class="col-lg-3 col-form-label"><span
													class="px-1"><i class="fa-solid fa-graduation-cap"></i></span>Select
													Board - </label>
												<div class="col-lg-12">
													<select class="form-control form-select" name="selectClass"
														id="validationCustom01" required>
														<option value="" disabled selected hidden>Please
															Select</option>
													</select>
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-xl-3">
											<div class="form-group row">
												<label class="col-lg-3 col-form-label"><span
													class="px-1"><i class="fa-solid fa-graduation-cap"></i></span>Select
													Medium - </label>
												<div class="col-lg-12">
													<select class="form-control form-select"
														name="selectMedium" id="validationCustom01" required>
														<option value="" disabled selected hidden>Please
															Select</option>
													</select>
												</div>
											</div>
										</div>
										<div class="col-xl-3">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-lg-3 col-form-label "><span class="px-1"><i
														class="fas fa-user "></i></span>Maximum Marks-</label>
												<div class="col-lg-12">
													<input type="text" class="form-control"
														id="validationCustom01" name="maximunMarks" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Update Max
														Marks.</div>
												</div>
											</div>
										</div>
										<div class="col-xl-3">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-lg-3 col-form-label "><span class="px-1"><i
														class="fas fa-user "></i></span>Obtained Marks-</label>
												<div class="col-lg-12">
													<input type="text" class="form-control"
														id="validationCustom01" name="obtainedMarks" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Update Max
														Marks.</div>
												</div>
											</div>
										</div>
										<div class="col-xl-3">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-lg-3 col-form-label "><span class="px-1"><i
														class="fas fa-user "></i></span>Percentage(%)-</label>
												<div class="col-lg-12">
													<input type="text" class="form-control"
														id="validationCustom01" name="markPercentage" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Update Mark
														Percentage.</div>
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-xl-6">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-lg-3 col-form-label "><span class="px-1"><i
														class="fas fa-user "></i></span>Subjects-</label>
												<div class="col-lg-12">
													<textarea rows="5" cols="5" class="form-control"
														placeholder="Enter text here"></textarea>
												</div>
											</div>
										</div>
										<div class="col-xl-3">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-lg-3 col-form-label "><span class="px-1"><i
														class="fas fa-user "></i></span>Grade-</label>
												<div class="col-lg-12">
													<input type="text" class="form-control"
														id="validationCustom01" name="Grade" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Update Grade.</div>
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-sm-12">
											<div class="card card-table">
												<div class="card-body">

													<div class="page-header">
														<div class="row align-items-center">
															<div class="col">
																<h5>Previous Exam Details-</h5>
															</div>

														</div>
													</div>

													<div class="table-responsive">
														<table
															class="table table-center mb-0 table-bordered  border-primary">
															<thead>
																<tr class="text-center">

																	<th>Sr No</th>
																	<th>Class</th>
																	<th>Board</th>
																	<th>Medium</th>
																	<th>Max</th>
																	<th>Obtained</th>
																	<th>Percentage</th>
																	<th>Grade</th>
																	<th>Status</th>
																	<th>Update</th>
																</tr>
															</thead>
															<tbody>
															</tbody>
														</table>
													</div>
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