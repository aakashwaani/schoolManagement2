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
			<div class="content container">
				<div class="row p-3">
					<div class="col-md-4">
						<div class="card">
							<div class="card-header">
								<h5 class="card-title ">Add New Pattern Details -</h5>
							</div>
							<form action="" method="POST" class="needs-validation"
									novalidate>
							<div class="container p-3">
								<div class="col-md-12">
									<div class="form-group">
										<label class="fw-bold"> Select Year </label> <select
											class="form-control form-select">
											<option value="" disabled selected hidden>Please
												Select</option>
										</select>
									</div>
								</div>
								<div class="col-md-12">
									<div class="form-group text-left">
										<label class="fw-bold"> Enter Pattern Name</label> <input
											type="exam pattern namel" class="form-control" id="exam pattern name"
											placeholder="Enter Exam Pattern Name" name="exam pattern name">

									</div>
								</div>
								<div class="col-md-12">
									<div class="form-group text-left">
										<label class="fw-bold"> Enter Pattern Mark</label> <input
											type="text" class="form-control" id="exam pattern namel"
											placeholder="Enter Exam Pattern Mark" name="exam pattern name">
									</div>
								</div>

								<div class="card-footer">
									<div class="container">
										<div class="col-md-12">
											<div style="text-align: right">
												<a href="#" class="btn btn-primary btn-md"><i
													class="fa-regular fa-floppy-disk"></i> Save </a>
												<button type="reset" value="reset"
													class="btn btn-danger btn-md">
													<i class="fa-sharp fa-solid fa-arrow-rotate-right"></i>
													Reset
												</button>
											</div>
										</div>
									</div>
								</div>
							</div>
							</form>
						</div>
					</div>
					<div class="col-md-8">
					<form action="" method="POST" class="needs-validation"
									novalidate>
						<div class="card">
							<div class="card-header">
								<h5 class="card-title ">Exam Pattern Details -</h5>
							</div>

							<div class="container p-3">
								<div class="row p-3">
									<div class="col-md-4">
										<div class="form-group">
											<label class="fw-bold"> Academic Year </label> <select
												class="form-control form-select">
												<option value="" disabled selected hidden>Please
													Select</option>
											</select>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group text-left">
											<label class="fw-bold"> Enter Exam Pattern Name</label> <input
												type="text" class="form-control" id="exam pattern name"
												placeholder="Enter Search Keyword" name="exam pattern name">
										</div>
									</div>
									<div class="col-md-2 mt-4">
										<div style="text-align: right">
											<a href="#" class="btn btn-warning btn-sm"><i
												class="fa-solid fa-magnifying-glass"></i> Search </a> <br>
											<br>
										</div>
									</div>
								</div>
							</div>
						</div>
						</form>
						<div class="col-md-12">
							<div class="card">
								<div class="card-header">
									<div class="row">
										<div class="col-xl-12">
											<div class="col-lg-12">
												<div class="card">
													<div class="card-body">
														<div class="table-responsive">
															<table class="table table-center mb-0 table-bordered">
																<thead>
																	<tr class="text-center">
																		<th>Sr.No.</th>
																		<th>Exam Pattern Name</th>
																		<th>Exam Pattern Mark</th>
																		<th>Status</th>
																		<th>Action</th>
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
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>



	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>