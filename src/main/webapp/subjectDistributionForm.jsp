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
					<form action="" method="POST" class="needs-validation"
									novalidate>
						<div class="card-header">
							<h5 class="card-title ">Add New Subject Distribution-</h5>
						</div>
						<div class="row p-3">
							<div class="col-md-4">
								<div class="form-group text-center">
									<label class="fw-bold"> Academic Year </label> <select
										class="form-control form-select">
										<option value="" disabled selected hidden>Please
											Select</option>
									</select>
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group text-center">
									<label class="fw-bold"> Select Exam Name </label> <select
										class="form-control form-select">
										<option value="" disabled selected hidden>Please
											Select</option>
									</select>
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group text-center">
									<label class="fw-bold"> Select Main Dist </label> <select
										class="form-control form-select">
										<option value="" disabled selected hidden>Please
											Select</option>
									</select>
								</div>
							</div>
							<div class="col-md-2">
								<div class="form-group text-center">
									<label class="fw-bold"> Select Class </label> <select
										class="form-control form-select">
										<option value="" disabled selected hidden>Please
											Select</option>
									</select>
								</div>
							</div>

							<div class="col-md-4">
								<div class="form-group text-center" data-spy="scroll">
									<label class="fw-bold"> Select Subject </label>
									<div>
										<textarea class="form-control"></textarea>
									</div>
								</div>
							</div>

							<div class="col-md-3">
								<div class="form-group text-center">
									<label class="fw-bold"> Subject Distribution Name </label>
									<div>
										<input type="text" class="form-control"
											placeholder="Enter Subject Distribution Name..">
									</div>
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group text-center">
									<label class="fw-bold"> Subject Distribution Mark </label>
									<div>
										<input type="text" class="form-control"
											placeholder="Enter Subject Distribution Marks..">
									</div>
								</div>
							</div>


							<div style="text-align: end">
								<a href="#" class="btn btn-primary"><i
									class="fa-regular fa-floppy-disk"></i> Save </a>
								<button type="reset" value="reset" class="btn btn-danger">
									<i class="fa-sharp fa-solid fa-arrow-rotate-right"></i> Reset
								</button>
								<br> <br>
							</div>


						</div>
						</form>
					</div>

					<div class="card">
					<form action="" method="POST" class="needs-validation"
									novalidate>
						<div class="card-header">
							<h5 class="card-title ">Subject Distribution Details-</h5>
						</div>

						<div class="row p-3">
							<div class="col-lg-2 col-md-2 col-sm-2">
								<div class="form-group text-center">
									<label class="fw-bold"> Academic Year </label> <select
										class="form-control form-select">
										<option value="" disabled selected hidden>Please
											Select</option>
									</select>
								</div>
							</div>
							<div class="col-lg-3 col-md-3 col-sm-3">
								<div class="form-group text-center">
									<label class="fw-bold"> Select Class </label> <select
										class="form-control form-select">
										<option value="" disabled selected hidden>Please
											Select</option>
									</select>
								</div>
							</div>
							<div class="col-lg-2 col-md-2 col-sm-3">
								<div class="form-group text-center">
									<label class="fw-bold"> Select Subject </label> <select
										class="form-control form-select">
										<option value="" disabled selected hidden>Please
											Select</option>
									</select>
								</div>
							</div>
							<div class="col-lg-3 col-md-3 col-sm-3">
								<div class="form-group text-center">
									<label class="fw-bold"> Enter Distribution Name </label>
									<div>
									<input type="text"  class="form-control" placeholder="Enter Distribution Name">
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-md-2 text-center">
								<div class="search-student-btn py-4">
									<button type="search" class="btn button-large btn-primary">Search</button>
								</div>
							</div>
						</div>


						<div class="row p-3">
							<div class="table-responsive">
								<table class="table table-bordered text-center">
									<thead>
										<tr>
											<th>Sr.No.</th>
											<th>Exam Name</th>
											<th>Class Name</th>
											<th>Subject Name</th>
											<th>Distribution Name</th>
											<th>Distribution Mark</th>
											<th>Status</th>
											<th>Action</th>
										</tr>
									</thead>
								</table>
							</div>
						</div>
					</form>
					</div>


				</div>
			</div>
		</div>
	</div>



	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>