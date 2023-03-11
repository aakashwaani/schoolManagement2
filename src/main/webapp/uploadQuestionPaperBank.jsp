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
					<form action="" method="POST" class="needs-validation" novalidate>
						<div class="card">
							<div class="card-header">
								<h5 class="card-title ">Upload Question Paper Bank -</h5>
							</div>
							<div class="row p-3">
								<div class="col-md-3">
									<div class="form-group">
										<label class="fw-bold"> Select Selection </label> <select
											class="form-control form-select">
											<option value="" disabled selected hidden>Please
												Select</option>
										</select>
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<label class="fw-bold"> Select Class Name </label> <select
											class="form-control form-select">
											<option value="" disabled selected hidden>Please
												Select</option>
										</select>
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<label class="fw-bold"> Select Subject </label> <select
											class="form-control form-select">
											<option value="" disabled selected hidden>Please
												Select</option>
										</select>
									</div>
								</div>
								<div class="col-md-3">
									<form action="/action_page.php">
										<label class="fw-bold"> Select File </label> <br> <input
											type="file" id="validationCustom01" class="form-control"
											name="staffProfilePic" required> <br>
									</form>
								</div>

								<div class="card-footer">
									<div class="container">
										<div class="row p-1">
											<div class="col-md-12">
												<div style="text-align: right">
													<a href="#" class="btn btn-primary btn-md"><i
														class="fa-regular fa-floppy-disk"></i> Upload </a>
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
							</div>
						</div>



						<div class="card">
							<div class="card-header">
								<h5 class="card-title ">Subjectwise Question Paper Details
									-</h5>
							</div>
							<div class="row p-3">
								<div class="col-md-3">
									<div class="form-group">
										<label class="fw-bold"> Select Selection </label> <select
											class="form-control form-select">
											<option value="" disabled selected hidden>Please
												Select</option>
										</select>
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<label class="fw-bold"> Select Class Name </label> <select
											class="form-control form-select">
											<option value="" disabled selected hidden>Please
												Select</option>
										</select>
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<label class="fw-bold"> Select Subject </label> <select
											class="form-control form-select">
											<option value="" disabled selected hidden>Please
												Select</option>
										</select>
									</div>
								</div>
								<div class="col-md-1">
									<div class="form-group">
										<div style="text-align: right">
											<a href="#" class="btn btn-warning button-large btn-md"><i
												class="fa-solid fa-magnifying-glass"></i> Search </a>
										</div>
									</div>
								</div>
								<div class="col-md-2">
									<div class="form-group">
										<div style="text-align: right">
											<button type="reset" value="reset"
												class="btn btn-success button-sm">
												<i class="fa-sharp fa-solid fa-arrow-rotate-right"></i> Show
												Deleted File
											</button>
										</div>
									</div>
								</div>
							</div>
						</div>
						</form>
				</div>

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
																<th>Class Name</th>
																<th>Subject Name</th>
																<th>File Name</th>
																<th>Uploaded By</th>
																<th>Date &Time</th>
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

				</form>
			</div>
		</div>
	</div>
	</div>
	</div>



	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>