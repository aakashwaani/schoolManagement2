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
							<h3 class="page-title">Add Exam Form</h3>
							<ul class="breadcrumb">
								<li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-8">
						<div class="card">
							<div class="card-header">
								<h5 class="card-title">Add Exam Details -</h5>
							</div>
							<div class="card-body">
								<form id="addexamForm" class="needs-validation" novalidate
									method="POST" role="form">
									<div class="form-group">
										<label for="validationCustom01"> Exam Name</label> <input
											type="text" name="examName" class="form-control"
											id="validationCustom01"
											placeholder="Enter Examination Name..." required>
										<div class="valid-feedback">Looks good!</div>
										<div class="invalid-feedback">Please Provide Section
											Name.</div>
									</div>
									<div class="text-end">
										<button type="submit" class="btn btn-primary">Save</button>
										<button type="submit" class="btn btn-danger">Reset</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-md-7">
						<div class="card">
							<div class="card-header">
								<h5 class="card-title">Enter Exam Name -</h5>
							</div>
							<div class="card-body">
								<form action="#" class="d-flex">
									<input type="text" class="form-control me-2 "
										placeholder="Enter Search Keyword...">
									<button class="btn btn-outline-success" type="submit">Search</button>
								</form>
							</div>
						</div>
					</div>
				</div>

				<div class="col-lg-12">
					<div class="card">
						<div class="card-header">
							<h5 class="card-title">Exam Details -</h5>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table me-2 table-bordered">
									<thead class="">
										<tr class="text-center">
											<th>Serial No.</th>
											<th>Exam Name</th>
											<th>Status</th>
											<th>Update</th>
										</tr>
									</thead>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<jsp:include page="footer.jsp"></jsp:include>
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
		<script
			src="https://cdn.jsdelivr.net/npm/sweetalert2@11.7.1/dist/sweetalert2.all.min.js"></script>
	</div>
</body>
</html>