<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
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

								<form id="addSchoolForm" class="needs-validation" novalidate>

									<div class="row">
										<div class="col-xl-12">
											<div class="form-group row">
												<label for="validationCustom01" class="form-label">School
													Registration Number</label>
												<div class="col-lg-12">
													<input name="schoolRegistrationNo" type="text"
														class="form-control" id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide
														Registration Number.</div>

												</div>
											</div>
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-lg-3 col-form-label">School Name</label>
												<div class="col-lg-12">
													<input name="schoolName" type="text" class="form-control"
														id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide School
														Name.</div>

												</div>
											</div>
											<!--  schoolId, schoolRegistrationNo, societyName, schoolCode, UIDIASNo, principalName, mobileNo, schoolLogo, schoolBanner, Address, City, State, postalCode -->

											<div class="form-group row">
												<label for="validationCustom01"
													class="col-lg-3 col-form-label">Society Name</label>
												<div class="col-lg-12">
													<input name="societyName" type="text" class="form-control"
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
													<input name="schoolCode" type="number" class="form-control"
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
													<input name="UIDIASNo" type="number" class="form-control"
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
													class="col-lg-3 col-form-label">Principal Name</label>
												<div class="col-lg-12">
													<input name="principalName" type="text"
														class="form-control" id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide School
														Name.</div>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-3 col-form-label">Email</label>
												<div class="col-lg-12">
													<input name="schoolEmail" type="text" class="form-control">
												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-3 col-form-label">Mobile</label>
												<div class="col-lg-12">
													<input name="mobileNo" type="password" class="form-control">
												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-3 col-form-label">Logo</label>
												<div class="col-lg-12">
													<input name="schoolLogo" type="file" class="form-control"
														name="schoolLogo">
												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-3 col-form-label">Banner</label>
												<div class="col-lg-12">
													<input name="schoolBanner" type="file" class="form-control">
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
													<textarea name="Address" rows="5" cols="5"
														class="form-control" placeholder=""></textarea>
												</div>
											</div>

											<div class="form-group row">
												<label class="col-lg-3 col-form-label">City</label>
												<div class="col-lg-9">
													<input name="City" type="text" class="form-control">
												</div>
											</div>
										</div>
										<div class="col-xl-6">
											<div class="form-group row">
												<label class="col-lg-3 col-form-label">State</label>
												<div class="col-lg-9">
													<input name="State" type="text" class="form-control">
												</div>
											</div>

											<div class="form-group row">
												<label class="col-lg-3 col-form-label">Postal Code</label>
												<div class="col-lg-9">
													<input name="postalCode" type="text" class="form-control">
												</div>
											</div>
										</div>
									</div>
									<div class="text-end">
										<input class="btn btn-primary " type="submit"
											value="Submit Form">
										<button class="btn btn-danger" type="reset">Reset</button>
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

	<script type="text/javascript">
		$(document).ready(function() {
			console.log("Working")
			
			$('#addSchoolForm').on('submit',function(event){
				event.preventDefault();
				let f = new FormData(this)
				console.log(f);
				$.ajax({
					enctype : 'multipart/form-data',
					type : 'POST',
					data : f,
					url:'../DB/addSchoolDB.jsp',
					processData:false,
					contentType : false,
					success:function(response){
						console.log(response)
					},
					error:function(err){
						console.log(err)
					}
					
				})
			})

		})
	</script>

</body>
</html>