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
							<h5 class="card-title">Classwise Attendance Presenty Report-</h5>
						</div>
						<div class="card-body">
							<form action="" method="POST" class="needs-validation" novalidate>

								<div class="row p-4">
									<div class="col-lg-4 col-md-3">
										<div class="page-header p-1">
											<h5 class="card-title">Select Academic Year :</h5>
										</div>
									</div>

									<div class="col-lg-6 col-md-5">
										<div class="form-group text-center">
											<select class="form-control form-select">
												<option value="" disabled selected hidden>Please
													Select</option>
											</select>
										</div>
									</div>


									<div class="col-lg-2 col-md-4">
										<a href="#" class="btn btn-warning btn-sm"><i
											class="fa-solid fa-magnifying-glass"></i> Search</a>
									</div>
								</div>
							</form>
						</div>
					</div>

				</div>

				<div class="card">


					<div class="row p-3">
						<div class="page-header p-1 text-center">
							<h5 class="card-title">Yearly Classswise Presenty Report</h5>
						</div>
						<div class="table-responsive">
							<table class="table table-bordered text-center">
								<thead>
									<tr>
										<th class="col-1" rowspan="2">Sr.No.</th>
										<th class="col-2" rowspan="2">Class Name</th>
										<th class="col-3" colspan="3">Boys</th>
										<th class="col-3" colspan="3">Girls</th>
										<th class="col-3" colspan="3">Total</th>
									</tr>

									<tr>
										<th>Total</th>
										<th>Presenty</th>
										<th>%</th>
										<th>Total</th>
										<th>Presenty</th>
										<th>%</th>
										<th>Total</th>
										<th>Presenty</th>
										<th>%</th>
									</tr>

									<tr>
										<th colspan="2">Total</th>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
								</thead>
							</table><br>
							<form action="" method="POST" class="needs-validation" novalidate>

								<div style="text-align: center">
									<a href="#" class="btn btn-primary btn-sm"><i
										class="fa-solid fa-print"></i> Print </a>
									<button type="reset" value="reset"
										class="btn btn-danger btn-sm">
										<i class="fa-solid fa-xmark"></i> Cancel
									</button>
									<br><br>
								</div>
							</form>
						</div>
					</div>

				</div>
			</div>
		</div>

	</div>



	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>