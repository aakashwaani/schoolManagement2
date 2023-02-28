
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

						<div class="row p-3">
							<div class="col-lg-3 col-md-8">
								<div class="form-group text-center">
									<label class="fw-bold"> Select Academic Year </label> <select
										class="form-control form-select">
										<option value="" disabled selected hidden>Please
											Select</option>
									</select>
								</div>
							</div>
							<div class="col-lg-3 col-md-2 text-center">
								<div class="search-student-btn py-4">
									<button type="search" class="btn button-large btn-primary">Search</button>
								</div>
							</div>
						</div>
					</div>

				</div>

				<div class="card">

					<div class="row p-3">
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
							</table>

							<div style="text-align: center">
								<a href="#" class="btn btn-primary"><i
									class="fa-solid fa-print"></i> Print </a>
								<button type="reset" value="reset" class="btn btn-danger ">
									Cancel</button>
								<br>
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