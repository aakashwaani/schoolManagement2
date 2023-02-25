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
						<div class="col card-header">
							<h4 class="page-title">Activate or Deactivate User -</h4>
						</div>
					</div>
				</div>
				<div class=" col-md-12">
					<div class="card">
						<div class="card-header">
							<h5 class="card-title">User Information -</h5>
						</div>
						<div class="row p-3">
							<div class="col-lg-3 col-md-4">
								<div class="form-group text-center">
									<label class="fw-bold"> Role Type - </label> <select
										class="form-control form-select">
										<option value="" disabled selected hidden>Please
											Select</option>
									</select>
								</div>
							</div>


							<div class="col-lg-3 col-md-4">
								<div class="form-group text-center">
									<label class="fw-bold">Username/Full Name/Mobile
										No/Status </label> <input type="text" name="" class="form-control"
										placeholder="Enter Search Keyword .." id="validationCustom01"
										required>
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
				<div class="row">
					<div class="col-sm-12">
						<div class="card card-table">

							<div class="card-body">
								<div class="page-header">
									<div class="row align-items-center">
										<div class="col-auto text-end float-end ms-auto download-grp">
											<a href="#" class="btn btn-success me-2"> Active All</a>
												<a href="#" class="btn btn-danger me-2"> Deactivate All</a>
										</div>
										
									</div>

								</div>
								<div class="table-responsive">
									<table class="table table-center mb-0 table-bordered">
										<thead>
											<tr class="text-center">

												<th>Sr No</th>
												<th>Full Name</th>
												<th>Mobile No</th>
												<th>Status</th>
												<th>Action</th>
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
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>