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
								<h5 class="card-title">Add New Exam Details -</h5>
							</div>

							<div class="card-body">
								<form action="DB/studentShortFormDB.jsp" method="POST"
									role="form" id="studentShortForm" class="needs-validation"
									novalidate>

									<div class="row">
										<div class="col-xl-6">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-user"></i></span>Select Exam -</label>
												<div class="col-lg-12">
													<select class="form-control form-select" name=""
														id="validationCustom01" required>
														<option></option>
														<option></option>
														<option></option>
														<option></option>
													</select>
												</div>
											</div>
										</div>


										<div class="col-xl-6">
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

										<div class="col-xl-6">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-user"></i></span>Exam Start Date -</label>
												<div class="col-lg-12">
													<input type="date" name="examStartDate"
														class="form-control" id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Exam
														Start Date</div>
												</div>
											</div>
										</div>

										<div class="col-xl-6">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-user"></i></span>Exam end Date -</label>
												<div class="col-lg-12">
													<input type="date" name="examEndDate" class="form-control"
														id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Exam End
														Date</div>
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

				<div class="card">
					<div class="card-header">
						<h5 class="card-title ">Exam Details-</h5>
					</div>

					<div class="row p-3">
						<div class="col-lg-3 col-md-10">
							<div class="form-group text-center">
								<label class="fw-bold"> Enter Exam Name - </label> <input
									type="text" class="form-control"
									placeholder="Enter Exam Name..">
							</div>
						</div>
						<div class="col-lg-3 col-md-2 text-center">
							<div class="search-student-btn py-4">
								<button type="search" class="btn button-large btn-primary">Search</button>
							</div>
						</div>

						<div class="row p-3">
							<div class="table-responsive">
								<table class="table table-bordered text-center">
									<thead>
										<tr>
											<th>Sr.No.</th>
											<th>Exam Name</th>
											<th>Section Name</th>
											<th>Start Date</th>
											<th>End Date</th>
											<th>Status</th>
											<th>Action</th>
										</tr>
									</thead>
								</table>
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
</body>
</html>