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
							<h5 class="">Daywise Attendence Report-</h5>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-8">
						<div class="card">
							<div class="card-header">
								<h5 class="card-title">Select Date -</h5>
							</div>
							<div class="card-body">
								<div class="form-group">
									<label class="fw-bold"> Select From Date - Select To
										Date</label>
									<form action="#" class="d-flex">
										<input type="date" class="form-control  me-2"> <input
											type="date" class="form-control form-select me-2">

										<button class="btn btn-outline-success" type="submit">Search</button>
									</form>
								</div>

							</div>
						</div>

					</div>

				</div>
				<div class="row">
					<div class="col-sm-12">
						<div class="card card-table">
							<div class="row p-3">
								<div class="col-lg-10 col-md-10">
									<div class="form-group text-center">
										<label class="fw-bold"> Enter Class Name </label>
										<div>
											<input type="text" class="form-control" placeholder="Enter Search Keyword..">
										</div>
									</div>
								</div>
								<div class="col-lg-3 col-md-2 text-center">
									<div class="search-student-btn py-4">
										<button type="search" class="btn button-large btn-primary">Search</button>
									</div>
								</div>
							</div>
							<div class="card-body">
								<div class="table-responsive">
									<table class="table table-center mb-0 table-bordered">
										<thead>
											<tr class="text-center">

												<th>Sr No</th>
												<th>Section Name</th>
												<th>Class Name</th>
												<th>Division</th>
												<th>Strength</th>
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
