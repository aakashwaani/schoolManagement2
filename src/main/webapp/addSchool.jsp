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
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-header">
								<h5 class="card-title">School Registration Form</h5>
							</div>

							<div class="card-body">
								<h5 class="card-title">Genral Information</h5>
								<form action="#" class="needs-validation" novalidate>

									<div class="row">
										<div class="col-xl-12">
											<div class="form-group row">
												<label for="validationCustom01" class="form-label">School
													Registration Number</label>
												<div class="col-lg-12">
													<input type="text" class="form-control"
														id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide
														Registration Number.</div>

												</div>
											</div>
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-lg-3 col-form-label">School Name</label>
												<div class="col-lg-12">
													<input type="text" class="form-control"
														id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide School
														Name.</div>

												</div>
											</div>
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-lg-3 col-form-label">Society Name</label>
												<div class="col-lg-12">
													<input type="text" class="form-control"
														id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Society
														Name.</div>
												</div>
											</div>
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-lg-3 col-form-label">School Code.</label>
												<div class="col-lg-12">
													<input type="number" class="form-control"
														id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide School
														Code</div>
												</div>
											</div>
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-lg-3 col-form-label">UIDIAS No.</label>
												<div class="col-lg-12">
													<input type="number" class="form-control"
														id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide UIDIAS
														No</div>
												</div>
											</div>
										</div>
										<div class="col-xl-12">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-lg-3 col-form-label">School Name</label>
												<div class="col-lg-12">
													<input type="text" class="form-control"
														id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide School
														Name.</div>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-3 col-form-label">Email</label>
												<div class="col-lg-12">
													<input type="text" class="form-control">
												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-3 col-form-label">Mobile</label>
												<div class="col-lg-12">
													<input type="password" class="form-control">
												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-3 col-form-label">Logo</label>
												<div class="col-lg-12">
													<input type="file" class="form-control">
												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-3 col-form-label">Banner</label>
												<div class="col-lg-12">
													<input type="file" class="form-control">
												</div>
											</div>
										</div>
									</div>
									<h5 class="card-title">Address</h5>
									<div class="row">
										<div class="col-xl-6">
											<div class="form-group row">
												<label class="col-lg-3 col-form-label">Address </label>
												<div class="col-lg-9">
													<textarea rows="5" cols="5" class="form-control"
														placeholder=""></textarea>
												</div>
											</div>

											<div class="form-group row">
												<label class="col-lg-3 col-form-label">City</label>
												<div class="col-lg-9">
													<input type="text" class="form-control">
												</div>
											</div>
										</div>
										<div class="col-xl-6">
											<div class="form-group row">
												<label class="col-lg-3 col-form-label">State</label>
												<div class="col-lg-9">
													<input type="text" class="form-control">
												</div>
											</div>

											<div class="form-group row">
												<label class="col-lg-3 col-form-label">Postal Code</label>
												<div class="col-lg-9">
													<input type="text" class="form-control">
												</div>
											</div>
										</div>
									</div>
									<div class="text-end">
										<button class="btn btn-primary " type="submit">Submit
											Form</button>
											<button class="btn btn-danger" type="reset"> Reset</button>
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