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
							<h5 class="card-title" style="text-align: center">New Mark
								Entry Details</h5>
						</div>
						<div class="row p-3">
							<div class="col-md-2">
								<label class="fw-bold"> Exam Name: </label>
								<label class="fw-bold"> Class Name: </label>
								<label class="fw-bold"> Div Name: </label>
								<label class="fw-bold"> Subject Name: </label>
							</div>
							<div class="col-md-2">
								<label class="fw-bold"> </label>
								<label class="fw-bold"> </label>
								<label class="fw-bold"> </label>
								<label class="fw-bold"> </label>
							</div>
							
							<div class="col-md-2"></div>
							
							<div class="col-md-2"></div>
							
							<div class="col-md-2">
								<label class="fw-bold"> Dist Name: </label>
								<label class="fw-bold"> Dist Mark: </label>
								<label class="fw-bold"> Today's Date: </label>
								<label class="fw-bold"> Current Time: </label>
								
							</div>
							<div class="col-md-2"></div>
						</div>
					</div>




					<div class="card">
						<div class="card-header">
							<h5 class="card-title" style="text-align: center">Class: V
								Class Division: A Student List</h5>
						</div>
						<div class="row p-3">
							<div class="col-md-6">
								<div class="form-group">
									<label class="fw-bold"> Roll No. - 1 </label> <select
										class="form-control form-select">
										<option value="" disabled selected hidden>.............</option>
									</select>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label class="fw-bold"> Roll No. - 2 </label> <select
										class="form-control form-select">
										<option value="" disabled selected hidden>.............</option>
									</select>
								</div>
							</div>
						</div>
						<div class="row p-3">
							<div class="col-md-6">
								<div class="form-group">
									<label class="fw-bold"> Roll No. - 3 </label> <select
										class="form-control form-select">
										<option value="" disabled selected hidden>.............</option>
									</select>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label class="fw-bold"> Roll No. - 4 </label> <select
										class="form-control form-select">
										<option value="" disabled selected hidden>.............</option>
									</select>
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