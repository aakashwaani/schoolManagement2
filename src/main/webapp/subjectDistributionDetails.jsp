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
				<div class=" col-md-12">
					<div class="card">
						<div class="card-header">
							<h5 class="card-title">Select Students for Marks View-</h5>
						</div>

						<div class="row p-4">
							<div class="col-lg-4 col-md-3">
								<div class="card-header">
									<h5 class="card-title">Enter Distribution Name:</h5>
								</div>
							</div>

							<div class="col-lg-6 col-md-5">
								<div class="form-group text-center">

									<input type="text" class="form-control"
										placeholder="Enter Search Keyword...">

								</div>
							</div>


							<div class="col-lg-2 col-md-4">
								<a href="#" class="btn btn-warning btn-sm"><i
									class="fa-solid fa-magnifying-glass"></i> Search</a>
							</div>
						</div>


						<div class="row p-3">
							<div class="table-responsive">
								<table class="table table-bordered text-center">
									<thead>
										<tr>
											<th>Sr.No.</th>
											<th>Distribution Name</th>
											<th>Distribution Mark</th>
											<th>Action</th>
										</tr>

										<tr>
											<td>1</td>
											<td></td>
											<td>10</td>

											<td class="text-center"><a href="#"
												class="btn btn-primary btn-sm"> <i
													class="fa-regular fa-floppy-disk"></i></a> <a href="#"
												class="btn btn-success btn-sm"> <i
													class="fa-solid fa-pen-to-square"></i>
											</a> <a href="#" class="btn btn-warning btn-sm"><i
													class="fa-regular fa-eye"></i></a></td>
										</tr>

										<tr>
											<td>2</td>
											<td></td>
											<td>10</td>

											<td class="text-center"><a href="#"
												class="btn btn-primary btn-sm"> <i
													class="fa-regular fa-floppy-disk"></i></a> <a href="#"
												class="btn btn-success btn-sm"> <i
													class="fa-solid fa-pen-to-square"></i>
											</a> <a href="#" class="btn btn-warning btn-sm"><i
													class="fa-regular fa-eye"></i></a></td>
										</tr>

										<tr>
											<td>3</td>
											<td></td>
											<td>10</td>

											<td class="text-center"><a href="#"
												class="btn btn-primary btn-sm"> <i
													class="fa-regular fa-floppy-disk"></i></a> <a href="#"
												class="btn btn-success btn-sm"> <i
													class="fa-solid fa-pen-to-square"></i>
											</a> <a href="#" class="btn btn-warning btn-sm"><i
													class="fa-regular fa-eye"></i></a></td>
										</tr>

										<tr>
											<td>4</td>
											<td></td>
											<td>10</td>

											<td class="text-center"><a href="#"
												class="btn btn-primary btn-sm"> <i
													class="fa-regular fa-floppy-disk"></i></a> <a href="#"
												class="btn btn-success btn-sm"> <i
													class="fa-solid fa-pen-to-square"></i>
											</a> <a href="#" class="btn btn-warning btn-sm"><i
													class="fa-regular fa-eye"></i></a></td>
										</tr>

										<tr>
											<td>5</td>
											<td></td>
											<td>10</td>

											<td class="text-center"><a href="#"
												class="btn btn-primary btn-sm"> <i
													class="fa-regular fa-floppy-disk"></i></a> <a href="#"
												class="btn btn-success btn-sm"> <i
													class="fa-solid fa-pen-to-square"></i>
											</a> <a href="#" class="btn btn-warning btn-sm"><i
													class="fa-regular fa-eye"></i></a></td>
										</tr>

										<tr>
											<td>6</td>
											<td></td>
											<td>10</td>

											<td class="text-center"><a href="#"
												class="btn btn-primary btn-sm"> <i
													class="fa-regular fa-floppy-disk"></i></a> <a href="#"
												class="btn btn-success btn-sm"> <i
													class="fa-solid fa-pen-to-square"></i>
											</a> <a href="#" class="btn btn-warning btn-sm"><i
													class="fa-regular fa-eye"></i></a></td>
										</tr>

										<tr>
											<td>7</td>
											<td></td>
											<td>10</td>

											<td class="text-center"><a href="#"
												class="btn btn-primary btn-sm"> <i
													class="fa-regular fa-floppy-disk"></i></a> <a href="#"
												class="btn btn-success btn-sm"> <i
													class="fa-solid fa-pen-to-square"></i>
											</a> <a href="#" class="btn btn-warning btn-sm"><i
													class="fa-regular fa-eye"></i></a></td>
										</tr>

										<tr>
											<td>8</td>
											<td></td>
											<td>10</td>

											<td class="text-center"><a href="#"
												class="btn btn-primary btn-sm"> <i
													class="fa-regular fa-floppy-disk"></i></a> <a href="#"
												class="btn btn-success btn-sm"> <i
													class="fa-solid fa-pen-to-square"></i>
											</a> <a href="#" class="btn btn-warning btn-sm"><i
													class="fa-regular fa-eye"></i></a></td>
										</tr>

										<tr>
											<td>9</td>
											<td></td>
											<td>10</td>

											<td class="text-center"><a href="#"
												class="btn btn-primary btn-sm"> <i
													class="fa-regular fa-floppy-disk"></i></a> <a href="#"
												class="btn btn-success btn-sm"> <i
													class="fa-solid fa-pen-to-square"></i>
											</a> <a href="#" class="btn btn-warning btn-sm"><i
													class="fa-regular fa-eye"></i></a></td>
										</tr>

										<tr>
											<td>10</td>
											<td></td>
											<td>10</td>

											<td class="text-center"><a href="#"
												class="btn btn-primary btn-sm"> <i
													class="fa-regular fa-floppy-disk"></i></a> <a href="#"
												class="btn btn-success btn-sm"> <i
													class="fa-solid fa-pen-to-square"></i>
											</a> <a href="#" class="btn btn-warning btn-sm"><i
													class="fa-regular fa-eye"></i></a></td>
										</tr>

										<tr>
											<td>11</td>
											<td></td>
											<td>50</td>

											<td class="text-center"><a href="#"
												class="btn btn-primary btn-sm"> <i
													class="fa-regular fa-floppy-disk"></i></a> <a href="#"
												class="btn btn-success btn-sm"> <i
													class="fa-solid fa-pen-to-square"></i>
											</a> <a href="#" class="btn btn-warning btn-sm"><i
													class="fa-regular fa-eye"></i></a></td>
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



	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>