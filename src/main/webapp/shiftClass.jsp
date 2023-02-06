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
					<div class="row align-items-center">
						<div class="col">
							<h3 class="page-title">Student Promotion</h3>
							<ul class="breadcrumb">
								<li class="breadcrumb-item"><a href="subjects.html">Subject</a></li>
								<li class="breadcrumb-item active">Student Promotion</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-12">
						<div class="card">
							<div class="card-body">
								<form>
									<div class="row">
										<div class="col-12">
											<h5 class="form-title">
												<span> Promote Students</span>
											</h5>
										</div>
										<div class="col-12 col-sm-4">
											<div class="form-group local-forms">
												<label> Current Session <span class="login-danger">*</span></label>
												<select class="form-control" id="validationCustom01"
													required name="status">
													<option>Please Select</option>
													<option>2019-2020</option>
													<option>2020-2021</option>
												</select>

											</div>
										</div>
										<div class="col-12 col-sm-4">
											<div class="form-group local-forms">
												<label>Promote Session <span class="login-danger">*</span></label>
												<select class="form-control" id="validationCustom01"
													required name="status">
													<option>Please Select</option>
													<option>2019-2020</option>
													<option>2020-2021</option>
												</select>

											</div>
										</div>
										<div class="col-12 col-sm-4">
											<div class="form-group local-forms">
												<label>Promotion From Class <span
													class="login-danger">*</span></label> <select class="form-control"
													id="validationCustom01" required name="">
													<option>Please Select</option>
													<option>Nursery</option>
													<option>One</option>
													<option>Two</option>

												</select>
											</div>
										</div>
										<div class="col-12 col-sm-4">
											<div class="form-group local-forms">
												<label>Promotion To Class <span class="login-danger">*</span></label>
												<select class="form-control" id="validationCustom01"
													required name="">
													<option>Please Select</option>
													<option>Nursery</option>
													<option>One</option>
													<option>Two</option>

												</select>
											</div>
										</div>
										<div class="col-12 text-end">
											<button type="submit" class="btn btn-primary">Submit</button>
											<button type="submit" class="btn btn-danger">Reset</button>
										</div>
									</div>
								</form>
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