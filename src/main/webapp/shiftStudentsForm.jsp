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
							<h5 class="card-title "> SHIFT FROM </h5>
						</div>
						
						<div class="row p-3">
							<h5 class="card-title text-center"> Shift From Previous Year and Class </h5>
							
							<div class="col-lg-1 col-md-1">
								
							</div>
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
									<label class="fw-bold"> Class of Previous Year </label> <select
										class="form-control form-select">
										<option value="" disabled selected hidden>Please
											Select</option>
									</select>
								</div>
							</div>
							<div class="col-lg-2 col-md-1">
							<label></label>
						
							<div>
								<a href="#" class="btn btn-warning btn-sm"><i class="fa-solid fa-magnifying-glass"></i> Search</a>
							</div>
						
							</div>
							
							<div class="col-lg-1 col-md-1">
								
							</div>
							
						
						</div>
						
					</div>
					
					<div class="card">
						<div class="card-header">
							<h5 class="card-title "> SHIFT TO </h5>
						</div>
						
						<div class="row p-3">
							<h5 class="card-title text-center"> Shift in to Next Year and Class </h5>
							
							<div class="col-lg-1 col-md-1">
								
							</div> 
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
							<div class="col-lg-2 col-md-1">
								<label></label>
								<div>
									<a href="#" class="btn btn-primary btn-sm"><i class="fa-sharp fa-solid fa-arrow-up"></i> Shift</a>
								</div>
							</div>
						<div class="col-lg-1 col-md-1">
								
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