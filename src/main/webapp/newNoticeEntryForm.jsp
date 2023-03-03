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
							<h5 class="card-title ">New Entry -</h5>
						</div>

						<div class="card-body">
							<form action="" method="POST" class="needs-validation" novalidate>

								<div class="row p-2">
									<div class="col-md-6">
										<div class="form-group text-left">
											<label class="fw-bold"> Notice Title </label>
											<div>
												<input type="text" class="form-control"
													placeholder="Enter Notice Title..">
											</div>
										</div>
									</div>
								</div>

								<div class="row p-2">
									<div class="col-md-6">
										<div class="form-group text-left" data-spy="scroll">
											<label class="fw-bold">Notice Message </label>
											<div>
												<textarea class="form-control"> </textarea>
											</div>

										</div>
									</div>


									<div class="col-md-6">
										<div class="form-group">
											<label class="fw-bold">Notice Date </label> <input
												type="date" class="form-control">
										</div>
										<div class="form-group">
											<label class="fw-bold">Upload Document File </label> <input
												type="file" id="" class="form-control" name="" required>
										</div>
									</div>

									<div class="row p-3">
										<div class="text-end">
											<a href="#" class="btn btn-primary"><i
												class="fa-regular fa-floppy-disk"></i> Save </a>
											<button type="reset" value="reset" class="btn btn-danger">
												<i class="fa-sharp fa-solid fa-arrow-rotate-right"></i>
												Reset
											</button>
											<br>
										</div>
									</div>

								</div>

							</form>
						</div>

					</div>
				</div>
				<div class="card">
					<div class="card-header">
						<h5 class="card-title ">Staff List -</h5>
					</div>

					<div class="card-body">
						<div class="row p-3">
							<div class="col-md-6">
								<div class="table-responsive">
									<table class="table table-bordered text-center">
										<thead>
											<tr>
												<th colspan="4">Admin Staff</th>
											</tr>
											<tr>
												<th class="col-1">No.</th>
												<th class="col-2">Name</th>
												<th class="col-2">Designation</th>
												<th class="col-1">All</th>
											</tr>
										</thead>
									</table>
								</div>
							</div>
							<div class="col-md-6">
								<div class="table-responsive">
									<table class="table table-bordered text-center">
										<thead>
											<tr>
												<th colspan="4">Teaching Staff</th>
											</tr>
											<tr>
												<th class="col-1">No.</th>
												<th class="col-2">Name</th>
												<th class="col-2">Designation</th>
												<th class="col-1">All</th>
											</tr>
										</thead>
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