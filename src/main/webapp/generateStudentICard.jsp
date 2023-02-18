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
				<div class="page-header">
					<div class="row">
						<div class="col">
							<h3 class="page-title">Student Information -</h3>

						</div>
					</div>
				</div>
				<div class=" col-md-12">
					<div class="card">
						<div class="card-header">
							<h5 class="card-title ">Select Students For I-Card -</h5>
						</div>
						<div class="row p-3">
							<div class="col-lg-3 col-md-2">
								<div class="form-group text-center">
									<label class="fw-bold"> Academic Year </label> <select
										class="form-control form-select">
										<option value="" disabled selected hidden>Please
											Select</option>
									</select>
								</div>
							</div>
							<div class="col-lg-3 col-md-2">
								<div class="form-group text-center">
									<label class="fw-bold"> Select Section </label> <select
										class="form-control form-select">
										<option value="" disabled selected hidden>Please
											Select</option>
									</select>
								</div>
							</div>
							<div class="col-lg-3 col-md-2">
								<div class="form-group text-center">
									<label class="fw-bold"> Select Class </label> <select
										class="form-control form-select">
										<option value="" disabled selected hidden>Please
											Select</option>
									</select>
								</div>
							</div>
							<div class="col-lg-3 col-md-2">
								<div class="form-group text-center">
									<label class="fw-bold"> Division </label> <select
										class="form-control form-select">
										<option value="" disabled selected hidden>Please
											Select</option>
									</select>
								</div>
							</div>
							<div class="col-lg-3 col-md-2">
								<div class="form-group text-center">
									<label class="fw-bold"> Name/PRN/Mobile No </label> 
									<input type="text" class="form-control">
									
								</div>
							</div>
							<div class="col-lg-3 col-md-2 text-center">
								<div class="search-student-btn py-4">
									<button type="btn" class="btn btn-primary">Search</button>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-lg-12">
						<div class="card">
							<div class="card-header"></div>
							<div class="card-body">
								<div class="table-responsive">
									<table
										class="table table-center mb-0 table-bordered  border-primary">
										<thead>
											<tr class="text-center">
												<th>Serial No.</th>
												<th>Academic Year</th>
												<th>PRN No</th>
												<th>Roll No</th>
												<th>Full Name</th>
												<th> Class & Division</th>
												<th>Action(Y & N)</th>
											</tr>
										</thead>
										<tbody>
											<tr>

											</tr>
											<tr>

											</tr>
											<tr>
											</tr>
										</tbody>
									</table>
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
</html>