<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.schoolmanagement.helper.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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

				<div class="page-header">
					<div class="row">
						<div class="col">
							<h3 class="page-title">Birthday Report</h3>
							<ul class="breadcrumb">
								<li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
								<li class="breadcrumb-item active">BirthDay Report</li>
							</ul>
						</div>
					</div>
				</div>


				<div class="row">
					<div class="col-md-7">
						<div class="card">
							<div class="card-header">
								<h5 class="card-title">Select Date -</h5>
							</div>
							<div class="card-body">
								<form action="#" class="d-flex">
									<input type="date" class="form-control me-2">

									<button class="btn btn-outline-success" type="submit">Search</button>
								</form>
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
											<h5>List Of Students Whose Birthday Dated-</h5>
										</div>


										<div class="col-auto text-end float-end ms-auto download-grp">
											<a href="#" class="btn btn-outline-primary me-2"><i
												class="fas fa-download"></i> Download</a>
										</div>
									</div>
								</div>

								<div class="table-responsive">
									<table class="table table-center mb-0 table-bordered">
										<thead>
											<tr class="text-center">

												<th>Sr No</th>
												<th>Class Name</th>
												<th>Division</th>
												<th>Roll No</th>
												<th>Full Name</th>
												<th>Date Of Birth</th>
												<th>Age(Years)</th>
											</tr>
										</thead>
										<tbody>
											<%
										try {
											int cnt = 1;
											Connection con = ConnectionProvider.getConnection();
											Statement stmt = con.createStatement();
											ResultSet rs = stmt.executeQuery("select s.*, c.* from studentDetails as s inner join studclass as c on s.classId = c.classId");
											while (rs.next()) {
										%>

											<tr class="text-center">
												<td><%=cnt%></td>
												<td><%=rs.getString("className")%></td>
												<td><%=rs.getString("division")%></td>
												<td><%=rs.getString("rollNo")%></td>
												<td><%=rs.getString("studentFirstName")+" "+rs.getString("studentMiddleName")+" "+rs.getString("studentLastName")%></td>
												<td><%=rs.getString("dateOfBirth")%></td>
												<td><%=rs.getString("age")%></td>
												<td class="">
													<div class="actions ">
														<a
															href="updateAcademicYear.jsp?id=<%=rs.getInt("academicYearId")%>"
															class="btn btn-sm bg-danger-light"> <i
															class="feather-edit"></i>
														</a>
													</div>
												</td>
											</tr>


											<%
										cnt++;
										}

										} catch (Exception e) {
										e.printStackTrace();
										}
										%>
										</tbody>
									</table>
								</div>
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
									ass="col-a	<div class="col">
											<h5>List Of Staff Whose Birthday Dated-</h5>
										</div>
										<div cluto text-end float-end ms-auto download-grp">
											<a href="#" class="btn btn-outline-primary me-2"><i
												class="fas fa-download"></i> Download</a>
										</div>
									</div>
								</div>

								<div class="table-responsive">
									<table class="table table-center table-bordered">
										<thead>
											<tr class="text-center">

												<th>Sr No</th>
												<th>Staff Name</th>
												<th>Designation</th>
												<th>Date Of Birth</th>
												<th>Age(Years)</th>
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
			</div>
		</div>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>

</body>
</html>