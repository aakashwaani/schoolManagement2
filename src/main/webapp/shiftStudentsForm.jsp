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
							<h5 class="card-title ">SHIFT FROM</h5>
						</div>

						<div class="row p-3">
							<h5 class="card-title text-center">Shift From Previous Year
								& Class -</h5>
							<div class="col-lg-1 col-md-1"></div>

							<div class="col-lg-4 col-md-3">
								<div class="form-group text-center">
									<label class="fw-bold"> Previous Year </label> <select
										class="form-control form-select">
										<option value="" disabled selected hidden>Please
											Select</option>
									</select>
								</div>
							</div>
							<div class="col-lg-4 col-md-3">
								<div class="form-group text-center">
									<label class="fw-bold"> Class of Next Year </label> <select
										class="form-control form-select">
										<option value="" disabled selected hidden>Please
											Select</option>
									</select>
								</div>
							</div>
							<div class="col-lg-3 col-md-2 text-center">
								<div class="search-student-btn py-4">
									<button type="btn" class="btn button-large btn-warning">Search</button>
								</div>
							</div>	
						</div>
					</div>
					<div class="card">
						<div class="card-header">
							<h5 class="card-title ">SHIFT TO</h5>
						</div>

						<div class="row p-3">
							<h5 class="card-title text-center">Shift in to Next Year and
								Class</h5>

							<div class="col-lg-1 col-md-1"></div>
							<div class="col-lg-4 col-md-3">
								<div class="form-group text-center">
									<label class="fw-bold"> Next Year </label> <select
										class="form-control form-select">
										<option value="" disabled selected hidden>Please
											Select</option>
									</select>
								</div>
							</div>
							<div class="col-lg-4 col-md-3">
								<div class="form-group text-center">
									<label class="fw-bold"> Class of Next Year </label> <select
										class="form-control form-select">
										<option value="" disabled selected hidden>Please
											Select</option>
									</select>
								</div>
							</div>
							<div class="col-lg-3 col-md-2 text-center">
								<div class="search-student-btn py-4">
									<button type="button" class="btn btn-large btn-primary">Shift</button>
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