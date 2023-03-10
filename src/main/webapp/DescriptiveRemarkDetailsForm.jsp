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
								<h5 class="card-title">Add Descriptive Remark -</h5>
							</div>

							<div class="card-body">
								<form action="" method="POST" role="form" id="studentShortForm"
									class="needs-validation" novalidate>

									<div class="row">
										<div class="col-xl-6">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-user"></i></span>Descriptive Remark Head -</label>
												<div class="col-lg-12">
													<select class="form-control form-select"
														name="academicYear" id="validationCustom01" required>
														<option value="" disabled selected hidden>Please
															Select</option>
														<%
														try {
															Connection con = ConnectionProvider.getConnection();
															Statement stmt = con.createStatement();
															ResultSet rs = stmt.executeQuery("select * from academicyear");
															while (rs.next()) {
														%>
														<option value=<%=rs.getInt("academicYearId")%>>
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


										<div class="col-xl-6">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-user"></i></span>Descriptive Remark -</label>
												<div class="col-lg-12">
													<input type="text" name="descriptiveRemark"
														class="form-control" id="validationCustom01"
														placeholder="Enter Remark..." required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide
														Descriptive Remark</div>
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

				<div class="col-md-12">
					<div class="card">
						<div class="card-header">
							<div class="row">
								<div class="col-xl-12">
									<h3 class="page-title">Enter Remark / Remark Head -</h3>
									<div class="col-lg-12">
										<div class="card">
											<div class="card-body">
												<div class="table-responsive">
													<table class="table table-center mb-0 table-bordered">
														<thead>
															<tr class="text-center">
																<th>Serial No.</th>
																<th>Remark Head</th>
																<th>Remark</th>
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
					</div>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="footer.jsp"></jsp:include>
</body>
<script
	src="https://cdn.jsdelivr.net/npm/sweetalert2@11.7.1/dist/sweetalert2.all.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
</html>