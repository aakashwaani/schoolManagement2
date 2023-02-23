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
				<div class=" col-md-12">
					<div class="card">
						<div class="card-header">
							<h5 class="card-title ">Select Yearwise Class Division to
								Shift -</h5>
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
							<div class="col-lg-4 col-md-3">
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
							<div class="col-lg-2 col-md-1">
								<label></label>

								<div>
									<a href="#" class="btn btn-warning btn-sm"><i
										class="fa-solid fa-magnifying-glass"></i> Search</a>
								</div>

							</div>
						</div>

					


						<div class="row p-3">
							<div class="table-responsive">
								<table class="table table-bordered text-center">
									<thead>
										<tr>
											<th>Sr.No.</th>
											<th>Academic Year</th>
											<th>Section Name</th>
											<th>Class Name</th>
											<th>Division</th>
											<th>Medium</th>
											<th>Strength</th>
											<th>Status</th>
											<th>Shift(Y/N) <input type="checkbox">
											</th>
										</tr>
									</thead>
								</table>
							</div>
						</div>

						<div style="text-align: center">
							<a href="#" class="btn btn-primary btn-sm"><i
								class="fa-sharp fa-solid fa-arrow-up"></i> Shift</a>
							<button type="reset" value="reset" class="btn btn-danger btn-sm">
								<i class="fa-solid fa-xmark"></i> Reset
							</button>
							<br> <br>
						</div>


					</div>
				</div>
			</div>
		</div>
	</div>



	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>