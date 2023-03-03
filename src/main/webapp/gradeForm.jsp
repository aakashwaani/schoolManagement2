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
				<div class="col-md-12">
					<div class="card">
						<div class="card-header">
							<h5 class="card-title ">Add New Grade Details-</h5>
						</div>
						<div class="card-body">
							<form action="" method="POST" class="needs-validation" novalidate>

								<div class="row p-3">
									<div class="col-md-2">
										<div class="form-group text-center">
											<label class="fw-bold"> Academic Year </label> <select
												class="form-control form-select">
												<option value="" disabled selected hidden>Please
													Select</option>
											</select>
										</div>
									</div>
									<div class="col-md-2">
										<div class="form-group text-center">
											<label class="fw-bold"> Select Exam Name</label> <select
												class="form-control form-select">
												<option value="" disabled selected hidden>Please
													Select</option>
											</select>
										</div>
									</div>
									<div class="col-md-2">
										<div class="form-group text-center">
											<label class="fw-bold"> Grade Name </label>
											<div>
												<input type="text" class="form-control"
													placeholder="Enter Grade Name..">
											</div>
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group text-center">
											<label class="fw-bold"> Grade Minimum Marks </label>
											<div>
												<input type="text" class="form-control"
													placeholder="Enter Grade Min. Marks..">
											</div>
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group text-center">
											<label class="fw-bold"> Grade Maximum Marks </label>
											<div>
												<input type="text" class="form-control"
													placeholder="Enter Grade Maxi. Marks..">
											</div>
										</div>
									</div>
							</div>
									<div class="row">
										<div style="text-align: right">
											<a href="#" class="btn btn-primary"><i
												class="fa-regular fa-floppy-disk"></i> Save </a>
											<button type="reset" value="reset"
												class="btn btn-danger">
												<i class="fa-sharp fa-solid fa-arrow-rotate-right"></i>
												Reset
											</button>
											<br> <br>
										</div>
									</div>
								
							</form>
						</div>
					</div>

					<div class="card">
						<div class="card-header">
							<h5 class="card-title ">Grade Details-</h5>
						</div>
						<div class="card-body">
							<form action="" method="POST" class="needs-validation" novalidate>

								<div class="row p-3">
									<div class="col-md-2">
										<div class="form-group text-center">
											<label class="fw-bold">Academic Year</label> <select
												class="form-control form-select">
												<option value="" disabled selected hidden>Please
													Select</option>
											</select>
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group text-center">
											<label class="fw-bold"> Select Exam Name</label> <select
												class="form-control form-select">
												<option value="" disabled selected hidden>Please
													Select</option>
											</select>
										</div>
									</div>
									<div class="col-md-2">
										<div class="form-group text-center">
											<label class="fw-bold"> Select Section</label> <select
												class="form-control form-select">
												<option value="" disabled selected hidden>Please
													Select</option>
											</select>
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group text-center">
											<label class="fw-bold"> Enter Grade Name</label> <input
												type="text" class="form-control"
												placeholder="Enter Grade Name..">
										</div>
									</div>
									<div class="col-md-2 text-center">
										<div class="search-student-btn py-4">
											<button class="btn button-large btn-primary">Search</button>
										</div>
									</div>

								</div>
							</form>
							
							<div class="row p-3">
								<div class="table-responsive">
									<table class="table table-bordered text-center">
										<thead>
											<tr>
												<th>Sr.No.</th>
												<th>Exam Name</th>
												<th>Section Name</th>
												<th>Grade Name</th>
												<th>Grade Range</th>
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



	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>