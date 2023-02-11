<%@page import="com.schoolmanagement.helper.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/sweetalert2@11.7.1/dist/sweetalert2.min.css"
	rel="stylesheet"></link>
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
								<h5 class="card-title">General Information</h5>
								<form id="addSchoolForm" class="needs-validation" novalidate>


									<div class="row">
										<div class="col-xl-6">
											<div class="form-group row">
												<<<<<<< HEAD <label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="mx-2"><i
														class="fas fa-university"></i></span>School Registration Number -</label>
												======= <label for="validationCustom01"
													class="col-form-label col-lg-3">School Registration
													Number</label> >>>>>>> 0934d05b59ed063057c6de367c99f149fa165307
												<div class="col-lg-12">
													<input type="text" name="schoolRegistrationNo"
														class="form-control" id="validationCustom01">
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide
														Registration Number.</div>

												</div>
											</div>
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-lg-3 col-form-label"><span class="mx-2"><i
														class="fas fa-school"></i></span>School Name -</label>
												<div class="col-lg-12">
													<input type="text" class="form-control" name="schoolName"
														id="validationCustom01">
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide School
														Name.</div>

												</div>
											</div>
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-lg-3 col-form-label"><span class="mx-2"><i
														class="fas fa-users"></i></span>Society Name -</label>
												<div class="col-lg-12">
													<input type="text" class="form-control"
														id="validationCustom01" name="societyName">
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Society
														Name.</div>
												</div>
											</div>
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-lg-3 col-form-label"><span class="mx-2"><i
														class="fas fa-school"></i></span>School Code -</label>
												<div class="col-lg-12">
													<input type="number" class="form-control" name="schoolCode"
														id="validationCustom01">
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide School
														Code.</div>
												</div>
											</div>
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-lg-3 col-form-label"><span class="mx-2"><i
														class="fas fa-address-card"></i></span>UIDIAS No -</label>
												<div class="col-lg-12">
													<input type="number" class="form-control"
														id="validationCustom01" name="UIDIASNo">
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide UIDIAS
														No.</div>
												</div>
											</div>
										</div>
										<div class="col-xl-6">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-lg-3 col-form-label"><span class="mx-2"><i
														class="fa-solid fa-user-tie"></i></span>Principal Name -</label>
												<div class="col-lg-12">
													<input type="text" class="form-control"
														id="validationCustom01" name="principalName">
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide School
														Name.</div>
												</div>
											</div>
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-lg-3 col-form-label"><span class="mx-2"><i
														class="fa-solid fa-envelope"></i></span>Email -</label>
												<div class="col-lg-12">
													<input type="email" class="form-control"
														id="validationCustom01"
														pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$"
														name="schoolEmail">
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide valid
														Email-Id.</div>
												</div>
											</div>
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-lg-3 col-form-label"><span class="mx-2"><i
														class="fa-solid fa-mobile"></i></span>Mobile -</label>
												<div class="col-lg-12">
													<input type="number" class="form-control"
														id="validationCustom01" name="mobileNo">
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Mobile
														No.</div>

												</div>
											</div>
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-lg-3 col-form-label"><span class="mx-2"><i
														class="fa-solid fa-school-circle-check"></i></span>Logo -</label>
												<div class="col-lg-12">
													<input type="file" id="validationCustom01"
														class="form-control" name="schoolLogo">
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Upload Logo.</div>
												</div>
											</div>
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-lg-3 col-form-label"><span class="mx-2"><i
														class="fa-solid fa-school-circle-check"></i></span>Banner -</label>
												<div class="col-lg-12">
													<input type="file" id="validationCustom01"
														class="form-control" name="schoolBanner">
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Upload Banner.</div>
												</div>
											</div>
										</div>
									</div>
									<h5 class="card-title">Address</h5>
									<div class="row">
										<div class="col-xl-6">
											<div class="form-group row">
												<label id="validationCustom01"
													class="col-lg-3 col-form-label"><span class="mx-2"><i
														class="fa-sharp fa-solid fa-location-dot"></i></span>Address -</label>
												<div class="col-lg-9">
													<textarea rows="5" cols="5" class="form-control"
														placeholder="" id="validationCustom01" name="Address"></textarea>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Address.</div>
												</div>

											</div>

											<div class="form-group row">
												<label id="validationCustom01"
													class="col-lg-3 col-form-label"><span class="mx-2"><i
														class="fa-sharp fa-solid fa-city"></i></span>City -</label>
												<div class="col-lg-9">
													<input type="text" class="form-control"
														id="validationCustom01" name="City">
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide City
														Name.</div>
												</div>
											</div>
										</div>
										<div class="col-xl-6">
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
														class="fa-sharp fa-solid fa-mailbox-flag-up"></i></span>Postal
													Code -</label> <label class="col-lg-3 col-form-label"
													id="validationCustom01">Postal Code</label>
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

				<div class="col-lg-12">
					<div class="card">
						<div class="card-header">

							<h5 class="card-title">Section Details -</h5>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class=" mb-0 table table-striped ">
									<thead class="bg-primary">
										<!--  schoolId, schoolName, schoolRegistrationNo, societyName, schoolCode,
 UIDIASNo, principalName, schoolEmail, mobileNo, schoolLogo, schoolBanner, Address,
 City, State, postalCode -->
										<tr>
											<th>Serial No.</th>
											<th>schoolCode</th>
											<th>UIDIASNo</th>
											<th>School Name</th>
											<th>Postal Code</th>
											<th>school Registration No</th>
											<th>society Name</th>
											<th>Principal Name</th>
											<th>School Email</th>
											<th>Mobile No.</th>
											<th>schoolLogo</th>
											<th>schoolBanner</th>
											<th>Update</th>
										</tr>
									</thead>
									<tbody>
										<%
										try {
											int cnt = 1;
											Connection con = ConnectionProvider.getConnection();
											Statement stmt = con.createStatement();
											ResultSet rs = stmt.executeQuery("select * from schools");
											while (rs.next()) {
										%>

										<tr>
											<td><%=cnt%></td>
											<td><%=rs.getString("schoolCode")%></td>
											<td><%=rs.getString("UIDIASNo")%></td>
											<td><%=rs.getString("schoolName")%></td>
											<td><%=rs.getString("postalCode")%></td>
											<td><%=rs.getString("schoolRegistrationNo")%></td>
											<td><%=rs.getString("societyName")%></td>
											<td><%=rs.getString("principalName")%></td>
											<td><%=rs.getString("schoolEmail")%></td>
											<td><%=rs.getString("mobileNo")%></td>
											<td>
												<h2 class="table-avatar">
													<a class="avatar avatar-sm me-2"><img
														class="avatar-img rounded-circle"
														src="../<%=rs.getString("schoolLogo")%>" alt="User Image"></a>
												</h2>
											</td>
											<td>
												<h2 class="table-avatar">
													<a class="avatar avatar-sm me-2"><img
														class="avatar-img rounded-circle"
														src="../<%=rs.getString("schoolBanner")%>"
														alt="User Image"></a>
												</h2>
											</td>

											<td class="">
												<div class="actions ">
													<a href="updateSection.jsp?id=<%=rs.getInt("schoolId")%>"
														class="btn btn-sm bg-danger-light"> <i
														class="feather-edit"></i>
													</a>
												</div>
											</td>
										</tr>


										<%
										cnt++;
										}

										} catch (Exception e) {
										e.printStackTrace();
										}
										%>

									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>


			</div>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/sweetalert2@11.7.1/dist/sweetalert2.all.min.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

	<script type="text/javascript">
		$(document).ready(function() {
			$("#addSchoolForm").on('submit', function(event) {
				event.preventDefault();
				//var f = $(this).serialize();
				let f = new FormData($(this)[0])
				console.log(f)

				$.ajax({
					type : 'POST',
					enctype : 'multipart/form-data',
					url : '../DB/addSchoolDB.jsp',
					data : f,
					processData : false,
					contentType : false,
					cache : false,
					success : function(responce) {
						if (responce.trim() == '1') {
							 $("#addSchoolForm")[0].reset()
							Swal.fire({
								icon: 'success',
								  title: 'School Added Successfully ' ,
								  confirmButtonText: 'Ok',
								}).then((result) => {
								  /* Read more about isConfirmed, isDenied below */
								})
						} else {
							Swal.fire({
								icon: 'error',
								  title: 'School cannot be added Something went Wrong' ,
								  confirmButtonText: 'Ok',
								}).then((result) => {
								  /* Read more about isConfirmed, isDenied below */
								})
						}
					}
				})
			})
		})
	</script>
	<br>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>