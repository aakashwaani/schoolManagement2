
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
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-header">
								<h5 class="">Other Details -</h5>
							</div>

							<div class="card-body">
								<h6 class="card-title">Student Information -</h6>
								<form action="" enctype="multipart/form-data" method="POST"
									class="needs-validation" novalidate>
									<div class="row">
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-lg-3 col-form-label"><span class="px-1"><i
														class="fa-solid fa-address-card"></i></span>Student PRN Number -</label>
												<div class="col-lg-12">
													<input type="number" class="form-control" name="schoolName"
														id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide PRN
														Number.</div>

												</div>
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"> <span class="px-1">
														<i class="fas fa-user"></i>
												</span> Student Full Name -
												</label>
												<div class="col-lg-12">
													<input type="text" name="schoolRegistrationNo"
														class="form-control" id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Student
														Full Name.</div>

												</div>
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"> <span class="px-1">
														<i class="fa-solid fa-language"></i>
												</span> Mother Tongue -
												</label>
												<div class="col-lg-12">
													<input type="text" name="schoolRegistrationNo"
														class="form-control" id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide First
														Name.</div>

												</div>
											</div>
										</div>
									</div>
									<h6 class="card-title">Guardian Details -</h6>
									<div class="row">
										<div class="col-xl-3">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"> <span class="px-1">
														<i class="fas fa-user"></i>
												</span> Full Name -
												</label>
												<div class="col-lg-12">
													<input type="text" name="guardianName" class="form-control"
														id="validationCustom01" placeholder="Guardian Full Name.."
														required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Guardian
														Full Name.</div>

												</div>
											</div>
										</div>
										<div class="col-xl-3">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"> <span class="px-1">
														<i class="fa-solid fa-user-tie"></i>
												</span> Occupation -
												</label>
												<div class="col-lg-12">
													<input type="text" name="guardianOccupation"
														class="form-control" id="validationCustom01"
														placeholder="Guardian Occupation.." required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Guardian
														Occupation.</div>

												</div>
											</div>
										</div>
										<div class="col-xl-3">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"> <span class="px-1">
														<i class="fa-solid fa-mobile"></i>
												</span> Mobile Number -
												</label>
												<div class="col-lg-12">
													<input type="text" name="guardianMobNo"
														class="form-control" id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Guardian
														Mob No.</div>

												</div>
											</div>
										</div>
										<div class="col-xl-3">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"> <span class="px-1">
														<i class="fa-solid fa-user-tie"></i>
												</span> Relation -
												</label>
												<div class="col-lg-12">
													<input type="text" name="guardianRelation"
														class="form-control" id="validationCustom01"
														placeholder="Relation with Student.." required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Guardian
														Relation.</div>

												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-xl-3">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"> <span class="px-1">
														<i class="fas fa-user"></i>
												</span> Qualification -
												</label>
												<div class="col-lg-12">
													<input type="text" name="guardianName" class="form-control"
														id="validationCustom01"
														placeholder="Educational Qualification.." required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Guardian
														Full Name.</div>

												</div>
											</div>
										</div>
										<div class="col-xl-3">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-lg-3 col-form-label"><span class="px-1"><i
														class="fas fa-images"></i></span>Photograph -</label>
												<div class="col-lg-12">
													<input type="file" class="form-control"
														id="validationCustom01" name="guardianPhoto" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Upload Guardian
														Photograph.</div>

												</div>
											</div>
										</div>
									</div>
									<h6 class="card-title">Father Details -</h6>
									<div class="row">
										<div class="col-xl-3">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"> <span class="px-1">
														<i class="fa-solid fa-user-tie"></i>
												</span> Occupation -
												</label>
												<div class="col-lg-12">
													<input type="text" name="fatherOccupation"
														class="form-control" id="validationCustom01"
														placeholder="Father's Occupation.." required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Guardian
														Occupation.</div>

												</div>
											</div>
										</div>
										<div class="col-xl-3">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"> <span class="px-1">
														<i class="fas fa-user"></i>
												</span> Qualification -
												</label>
												<div class="col-lg-12">
													<input type="text" name="fatherEduaction"
														class="form-control" id="validationCustom01"
														placeholder="Educational Qualification.." required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Father's
														Qualification.</div>

												</div>
											</div>
										</div>
										<div class="col-xl-3">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"> <span class="px-1">
														<i class="fa-solid fa-money-bill"></i>
												</span> Yearly Income -
												</label>
												<div class="col-lg-12">
													<input type="text" name="fatherYearlyIncome"
														class="form-control" id="validationCustom01"
														placeholder="Father's Yearly Income.." required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Yearly
														Income.</div>

												</div>
											</div>
										</div>
										<div class="col-xl-3">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-lg-3 col-form-label"><span class="px-1"><i
														class="fas fa-images"></i></span>Photograph -</label>
												<div class="col-lg-12">
													<input type="file" class="form-control"
														id="validationCustom01" name="FatherPhoto" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Upload Father's
														Photograph.</div>

												</div>
											</div>
										</div>
									</div>
									<h6 class="card-title">Mother Details -</h6>
									<div class="row">
										<div class="col-xl-3">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"> <span class="px-1">
														<i class="fa-solid fa-user-tie"></i>
												</span> Occupation -
												</label>
												<div class="col-lg-12">
													<input type="text" name="motherOccupation"
														class="form-control" id="validationCustom01"
														placeholder="Mother Occupation.." required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Guardian
														Occupation.</div>

												</div>
											</div>
										</div>
										<div class="col-xl-3">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"> <span class="px-1">
														<i class="fas fa-user"></i>
												</span> Qualification -
												</label>
												<div class="col-lg-12">
													<input type="text" name="motherEduaction"
														class="form-control" id="validationCustom01"
														placeholder="Educational Qualification.." required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Father's
														Qualification.</div>

												</div>
											</div>
										</div>
										<div class="col-xl-3">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"> <span class="px-1">
														<i class="fa-solid fa-money-bill"></i>
												</span> Yearly Income -
												</label>
												<div class="col-lg-12">
													<input type="text" name="motherYearlyIncome"
														class="form-control" id="validationCustom01"
														placeholder="Mother's Yearly Income.." required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Yearly
														Income.</div>

												</div>
											</div>
										</div>
										<div class="col-xl-3">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-lg-3 col-form-label"><span class="px-1"><i
														class="fas fa-images"></i></span>Photograph -</label>
												<div class="col-lg-12">
													<input type="file" class="form-control"
														id="validationCustom01" name="motherPhoto" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Upload Father's
														Photograph.</div>

												</div>
											</div>
										</div>
									</div>
									<h6 class="card-title">Bank Details -</h6>
									<div class="row">
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"> <span class="px-1">
														<i class="fa-sharp fa-solid fa-building-columns"></i>
												</span> Account Number -
												</label>
												<div class="col-lg-12">
													<input type="text" name="accountNumber"
														class="form-control" id="validationCustom01"
														placeholder="Account Number.." required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Account
														Number.</div>

												</div>
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"> <span class="px-1">
														<i class="fa-sharp fa-solid fa-building-columns"></i>
												</span> Bank Name -
												</label>
												<div class="col-lg-12">
													<input type="text" name="motherEduaction"
														class="form-control" id="validationCustom01"
														placeholder="Bank Name..." required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Bank
														Name.</div>

												</div>
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"> <span class="px-1">
														<i class="fa-sharp fa-solid fa-building-columns"></i>
												</span> Branch Name -
												</label>
												<div class="col-lg-12">
													<input type="text" name="BankbranchName"
														class="form-control" id="validationCustom01"
														placeholder="Bank Branch Name.." required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Bank
														Branch Name.</div>

												</div>
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"> <span class="px-1">
														<i class="fa-solid fa-volleyball"></i>
												</span> Hobbies -
												</label>
												<div class="col-lg-12">
													<input type="text" name="BankbranchName"
														class="form-control" id="validationCustom01"
														placeholder="Hobbies.." required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Bank
														Branch Name.</div>

												</div>
											</div>
										</div>
										<h5 class="card-title">Address</h5>
										<div class="row">
											<div class="form-group row">
												<label id="validationCustom01"
													class="col-lg-3 col-form-label"><span class="mx-2"><i
														class="fa-sharp fa-solid fa-location-dot"></i></span>Address -</label>
												<div class="col-lg-8">
													<textarea rows="5" cols="5" class="form-control"
														placeholder="" id="validationCustom01" name="Address"></textarea>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Address.</div>
												</div>
											</div>
											<div class="col-xl-6">
												<div class="form-group row">
													<label id="validationCustom01"
														class="col-lg-3 col-form-label"><span class="mx-2"><i
															class="fa-sharp fa-solid fa-city"></i></span>Street/Location -</label>
													<div class="col-lg-9">
														<input type="text" class="form-control"
															id="validationCustom01" name="City">
														<div class="valid-feedback">Looks good!</div>
														<div class="invalid-feedback">Please Provide City
															Name.</div>
													</div>
												</div>
												<div class="form-group row">
													<label id="validationCustom01"
														class="col-lg-3 col-form-label"><span class="mx-2"><i
															class="fa-sharp fa-solid fa-city"></i></span>City/Village -</label>
													<div class="col-lg-9">
														<input type="text" class="form-control"
															id="validationCustom01" name="City">
														<div class="valid-feedback">Looks good!</div>
														<div class="invalid-feedback">Please Provide City
															Name.</div>
													</div>
												</div>
												<div class="form-group row">
													<label id="validationCustom01"
														class="col-lg-3 col-form-label"><span class="mx-2"><i
															class="fa-sharp fa-solid fa-city"></i></span>Taluka -</label>
													<div class="col-lg-9">
														<input type="text" class="form-control"
															id="validationCustom01" name="talukaName">
														<div class="valid-feedback">Looks good!</div>
														<div class="invalid-feedback">Please Provide Taluka.</div>
													</div>
												</div>
											</div>
											<div class="col-xl-6">
												<div class="form-group row">
													<label class="col-lg-3 col-form-label"
														id="validationCustom01"><span class="mx-2"><i
															class="fa-solid fa-tree-city"></i></span>District -</label>
													<div class="col-lg-9">
														<input type="text" class="form-control"
															id="validationCustom01" name="District">
														<div class="valid-feedback">Looks good!</div>
														<div class="invalid-feedback">Please Provide State
															Name.</div>
													</div>
												</div>
												<div class="form-group row">
													<label class="col-lg-3 col-form-label"
														id="validationCustom01"><span class="mx-2"><i
															class="fa-solid fa-tree-city"></i></span>State -</label>
													<div class="col-lg-9">
														<input type="text" class="form-control"
															id="validationCustom01" name="State">
														<div class="valid-feedback">Looks good!</div>
														<div class="invalid-feedback">Please Provide State
															Name.</div>
													</div>
												</div>

												<div class="form-group row">
													<label class="col-lg-3 col-form-label"
														id="validationCustom01"><span class="mx-2"><i
															class="fa-sharp fa-solid fa-location-dot"></i></span>Postal Code
														-</label>
													<div class="col-lg-9">
														<input type="text" class="form-control"
															id="validationCustom01" name="postalCode">
														<div class="valid-feedback">Looks good!</div>
														<div class="invalid-feedback">Please Provide Postal
															Code.</div>
													</div>
												</div>
											</div>
										</div>
									</div>

									<div class="text-end">
										<button class="btn btn-primary " type="submit">Submit
											Form</button>
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
</body>
</html>