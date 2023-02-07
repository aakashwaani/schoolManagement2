<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.schoolmanagement.helper.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
								<form action="#">
									<div class="row">

										<div class="col-xl-6">

											<div class="form-group row">
												<label class="col-lg-3 col-form-label">Select Staff
													Role </label>
												<div class="col-lg-9">
													<select class="form-control form-select">
														<option>Select</option>
														<option value="1">Admin</option>
														<option value="2">Principal</option>
														<option value="3">Vice Principal</option>
														<option value="4">Co-Ordinator</option>
														<option value="5">Teacher</option>
														<option value="6">Non-Teaching Staff</option>
														<option value="7">Operator</option>
														<option value="8">Peon</option>

													</select>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-3 col-form-label">Full Name</label>
												<div class="col-lg-9">
													<input type="text" class="form-control">
												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-3 col-form-label">Mobile No</label>
												<div class="col-lg-9">
													<input type="number" class="form-control">
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
													<input type="date" class="form-control">
												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-3 col-form-label">Designation</label>
												<div class="col-lg-9">
													<select class="form-control form-select" name="designationId"
														id="validationCustom01" required>

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
										</div>
										<div class="col-xl-6">
											<div class="form-group row">
												<label class="col-lg-3 col-form-label">Employee Id</label>
												<div class="col-lg-9">
													<input type="number" class="form-control">
												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-3 col-form-label">Date Of Birth</label>
												<div class="col-lg-9">
													<input type="date" class="form-control">
												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-3 col-form-label">Email ID</label>
												<div class="col-lg-9">
													<input type="email" class="form-control">
												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-3 col-form-label">Qualification</label>
												<div class="col-lg-9">
													<input type="text" class="form-control">
												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-3 col-form-label">Salary</label>
												<div class="col-lg-9">
													<input type="number" class="form-control">
												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-3 col-form-label">Caste
													Category</label>
												<div class="col-lg-9">
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
										<div class="col-xl-8">
											<div class="form-group row">
												<label class="col-lg-3 col-form-label">Address </label>
												<div class="col-lg-12">
													<textarea rows="6" cols="6" class="form-control"
														placeholder=""></textarea>
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

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>