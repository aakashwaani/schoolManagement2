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
											<div class="col-lg-4 col-md-4">
												<div class="profile-user-box">
													<div class="profile-user-img">
														<img src="assets/img/profiles/avatar-18.jpg" alt="Profile">
														<div
															class="form-group students-up-files profile-edit-icon mb-0">
															<div class="uplod d-flex">
																<label class="file-upload profile-upbtn mb-0"> <i
																	class="feather-edit-3"></i><input type="file">
																</label>
															</div>
														</div>
													</div>
													
												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-3 col-form-label">Select Staff
													Role </label>
												<div class="col-lg-9">
													<select class="form-control form-select" name="staffRole">
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
												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-3 col-form-label">First Name</label>
												<div class="col-lg-9">
													<input type="text" class="form-control" name="firstName">
												</div>
											</div>
											
											<div class="form-group row">
												<label class="col-lg-3 col-form-label">Middle Name</label>
												<div class="col-lg-9">
													<input type="text" class="form-control" name="middleName">
												</div>
											</div>
											
											<div class="form-group row">
												<label class="col-lg-3 col-form-label">LastName Name</label>
												<div class="col-lg-9">
													<input type="text" class="form-control" name="lastName">
												</div>
											</div>
											
											<div class="form-group row">
												<label class="col-lg-3 col-form-label">Mobile No</label>
												<div class="col-lg-9">
													<input type="number" class="form-control" name="mobNo">
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
													<input type="date" name="joiningDate" class="form-control">
												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-3 col-form-label">Designation</label>
												<div class="col-lg-9">
													<select class="form-control form-select"
														name="designationId" id="validationCustom01" required>

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
											<div class="form-group row">
												<label class="col-lg-3 col-form-label">Caste </label>
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
										<div class="col-xl-6">
											<div class="form-group row">
												<label class="col-lg-3 col-form-label">Employee Id</label>
												<div class="col-lg-9">
													<input type="number" name="employeeId" class="form-control">
												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-3 col-form-label">Date Of Birth</label>
												<div class="col-lg-9">
													<input type="date" name="DOB" class="form-control">
												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-3 col-form-label">Email ID</label>
												<div class="col-lg-9">
													<input type="email" name="email" class="form-control">
												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-3 col-form-label">Qualification</label>
												<div class="col-lg-9">
													<input type="text" name="qualification" class="form-control">
												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-3 col-form-label">Salary</label>
												<div class="col-lg-9">
													<input type="number" name="salary" class="form-control">
												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-3 col-form-label">Caste
													Category</label>
												<div class="col-lg-9">
													<input class="form-control" name="castId"
														id="validationCustom01" required>
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-xl-7">
											<div class="form-group row">
												<label class="col-lg-3 col-form-label">Address </label>
												<div class="col-lg-12">
													<textarea rows="6" cols="6" class="form-control" name="address"
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