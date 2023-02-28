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
							<h5 class="card-title ">Update Feedback Topic-</h5>
						</div>
						<div class="row p-3">
														
							<div class="col-lg-4 col-md-4">
								<div class="form-group">
									<label class="fw-bold"> Feedback Topic </label>
									<div>
										<input type="text" class="form-control"
											placeholder="About Management..">
									</div>
								</div>
							</div>
							<div class="col-lg-8 col-md-8">
								<div class="form-group">
									<label class="fw-bold"> Description </label>
									<div>
										<input type="text" class="form-control"
											placeholder="Enter Comment...">
									</div>
								</div>
							</div>
							

							<div class="text-end">
								<a href="#" class="btn btn-primary"><i
									class="fa-regular fa-floppy-disk"></i> Update </a>
								<button type="reset" value="reset" class="btn btn-danger">
									<i class="fa-sharp fa-solid fa-arrow-rotate-right"></i> Reset
								</button>
								<br> <br>
							</div>

						</div>
					</div>

					<div class="card">
						<div class="card-header">
							<h5 class="card-title ">Feedback Topic Details-</h5>
						</div>

						<div class="row p-4">
							<div class="col-md-4">
								<div class="form-group">
									<label class="fw-bold"> Enter Feedback Topic: </label> 
								</div>
							</div>
							<div class="col-md-5">
								<div class="form-group text-center">
									<div>
										<input type="text" class="form-control"
											placeholder="Enter Search Keyword..">
									</div>
								</div>
							</div>
							
							<div class="col-md-3">
									<div>
									<a href="#" class="btn btn-warning btn-md"><i
										class="fa-solid fa-magnifying-glass"></i> Search</a>
									</div>

								
							</div>
						</div>


						<div class="row p-3">
							<div class="table-responsive">
								<table class="table table-bordered text-center">
									<thead>
										<tr>
											<th class="col-1">Sr.No.</th>
											<th class="col-4">Feedback Topic Name</th>
											<th class="col-5">Description</th>
											<th class="col-2" colspan="2">Action</th>
										</tr>
										<tr>
											<td></td>
											<td></td>
											<td></td>
											<td><a href="#" class="btn btn-warning btn-sm"><i class="fa-sharp fa-regular fa-pen-to-square"></i></a></td>
											<td><a href="#" class="btn btn-danger btn-sm"><i class="fa-solid fa-xmark"></i></a></td>
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