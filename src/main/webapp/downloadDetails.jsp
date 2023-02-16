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
							<h5 class="card-title ">Download Student Details -</h5>
						</div>
						<div class="row p-3">
							<div class="col-lg-3 col-md-2">
								<div class="form-group text-center">
									<label class="fw-bold"> Academic Year </label> <select
										class="form-control form-select">
										<option value="" disabled selected hidden>Please
											Select</option>
									</select>
								</div>
							</div>
							<div class="col-lg-3 col-md-2">
								<div class="form-group text-center">
									<label class="fw-bold"> Selection Section </label> <select
										class="form-control form-select">
										<option value="" disabled selected hidden>Please
											Select</option>
									</select>
								</div>
							</div>
							<div class="col-lg-3 col-md-2">
								<div class="form-group text-center">
									<label class="fw-bold"> Select Class </label> <select
										class="form-control form-select">
										<option value="" disabled selected hidden>Please
											Select</option>
									</select>
								</div>
							</div>
							<div class="col-lg-3 col-md-2">
								<div class="form-group text-center">
									<label class="fw-bold"> Gender </label> <select
										class="form-control form-select">
										<option value="" disabled selected hidden>Please
											Select</option>
									</select>
								</div>
							</div>
							<div class="col-lg-3 col-md-3">
								<div class="form-group text-center">
									<label class="fw-bold"> Download Type </label> <select
										class="form-control form-select">
										<option value="" disabled selected hidden>Please
											Select</option>
									</select>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="col-lg-12">
					<div class="card">
						<div class="card-header">
							<h5 class="card-title">Select Details -</h5>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered mb-0">

									<tbody>
										<tr>
											<td>John</td>
											<td>Doe</td>
											<td>
												<div class="checkbox">
													<label><input type="checkbox" name="checkbox">
														Student PRN </label>
												</div>
											</td>
											<td>sd</td>
										</tr>
										<tr>
											<td>Mary</td>
											<td>Moe</td>
											<td></td>
											<td></td>


										</tr>
										<tr>
											<td>July</td>
											<td>Dooley</td>
											<td></td>	   		 
											<td></td>
										</tr>
									</tbody>
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