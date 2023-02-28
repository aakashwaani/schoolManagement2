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
				<div class="card">
					<div class="card-header">
						<h5 class="card-title ">Basic Details -</h5>
					</div>
					<div class="row p-3">
						<div class="col-md-6">

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
											type="email" class="form-control" id="email"
											placeholder="Enter Exam Pattern Name" name="email">

									</div>
								</div>
								<div class="col-md-12">
									<div class="form-group text-left">
										<label class="fw-bold"> Enter Pattern Mark</label> <input
											type="email" class="form-control" id="email"
											placeholder="Enter Exam Pattern Mark" name="email">
									</div>
								</div>

								<div class="card-footer">
									<div class="container">
										<div class="col-md-12"></div>
									</div>
								</div>
							</div>
						</div>




						<div class="col-md-6">

							<div class="container p-3">

								<div class="form-group text-center">
									<div class="table-responsive">
										<table class="table table-bordered text-center">
											<thead>
												<tr>
													<th colspan="8">GRADE SYSTEM(In %)</th>
												</tr>
												<tr>
													<th>Marks</th>
													<td>91-100</td>
													<td>81-90</td>
													<td>71-80</td>
													<td>61-70</td>
													<td>51-60</td>
													<td>41-50</td>
													<td>33-40</td>
												</tr>
												<tr>
													<th>Grade</th>
													<td>A-1</td>
													<td>A-2</td>
													<td>B-1</td>
													<td>B-2</td>
													<td>C-1</td>
													<td>C-2</td>
													<td>D</td>
												</tr>

											</thead>
										</table>

									</div>

									<div class="table-responsive">
										<table class="table table-bordered text-center">
											<thead>
												<tr>
													<th class="col-1">Sr.No.</th>
													<th class="col-1">Subject</th>
													<th class="col-1">Grade</th>
													<th class="col-3"></th>

												</tr>

												<tr>
													<td>1</td>
													<td>MARATHI</td>
													<td>---</td>
													<td>---</td>
												</tr>

												<tr>
													<td>2</td>
													<td>HINDI</td>
													<td>---</td>
													<td>---</td>
												</tr>
												<tr>
													<td>3</td>
													<td>ENGLISH</td>
													<td>---</td>
													<td>---</td>
												</tr>
												<tr>
													<td>4</td>
													<td>MATHEMATICS</td>
													<td>---</td>
													<td>---</td>
												</tr>
												<tr>
													<td>5</td>
													<td>SCIENCE</td>
													<td>---</td>
													<td>---</td>
												</tr>
												<tr>
													<td>6</td>
													<td>SOCIAL SCIENCE</td>
													<td>---</td>
													<td>---</td>
												</tr>
											</thead>
										</table>
									</div>

									<div class="table-responsive">
										<table class="table table-bordered text-center">
											<thead>
												<tr>
													<th class="col-1">GRADE</th>
													<th class="col-4" colspan="2">---</th>

												</tr>
												<tr>
													<th>---</th>
													<th>---</th>
													<th>---</th>
												</tr>
												<tr>
													<td></td>
													<td>- HINDI</td>
													<td>- ENGLISH</td>
												</tr>

												<tr>
													<td></td>
													<td>- SOCIAL SCIENCE</td>
													<td>- MATHEMATICS</td>
												</tr>

												<tr>
													<td></td>
													<td>- MARATHI</td>
													<td>- SCIENCE</td>
												</tr>

												<tr>
													<td></td>
													<td>- ENGLISH</td>
													<td>- SOCIAL SCIENCE</td>
												</tr>

											</thead>
										</table>

									</div>

								</div>



							</div>


						</div>


						<div style="text-align: center">
							<a href="#" class="btn btn-primary btn-md"><i
								class="fa-regular fa-floppy-disk"></i> Print </a>
							<button type="reset" value="reset" class="btn btn-danger btn-md">
								<i class="fa-sharp fa-solid fa-arrow-rotate-right"></i> Cancel
							</button>
						</div>
						<br><br>
					</div>

				</div>
			</div>
		</div>
</div>

		<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>