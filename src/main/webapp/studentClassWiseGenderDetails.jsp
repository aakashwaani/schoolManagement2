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
							<h4 class="page-title">Yearly Gender wise Report -</h4>

						</div>
					</div>
				</div>


				<div class="row">
					<div class="col-md-7">
						<div class="card">
							<div class="card-header">
								<h5 class="card-title">Select Academic Year</h5>
							</div>
							<div class="card-body">
								<form action="#" class="d-flex">
									<select class="form-control form-select me-2">
										<option value="" disabled selected hidden>Select
											Academic Year -</option>
									</select>
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
											<h5>students Gender Report -</h5>
										</div>
										<div class="col">
											<h5>Academic Year -</h5>
										</div>

										<div class="col-auto text-end float-end ms-auto download-grp">
											<a href="#" class="btn btn-outline-primary me-2"><i
												class="fas fa-download"></i> Download</a> <a href="#"
												class="btn btn-danger me-2"><i class="fa-solid fa-print"></i>
												Print</a>
										</div>
									</div>
								</div>

								<div class="table-responsive">
									<table
										class="table table-center mb-0 table-bordered  border-primary">
										<thead>
											<tr class="text-center">

												<th>Sr No</th>
												<th>Class Name</th>
												<th>Boys</th>
												<th>Girls</th>
												<th>Total</th>

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