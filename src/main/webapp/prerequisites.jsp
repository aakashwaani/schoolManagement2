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
							<h5 class="card-title ">Task need to Perform-</h5>
						</div>



						<div class="row p-3">
							<div class="table-responsive">
								<table class="table table-bordered">
									<thead>
										<tr>
											<th class="card-title">  <span class="badge bg-info">Prerequisites</span>
												Following steps are needed to perform operation in next
												academic year-</th>
										</tr>
									</thead>
								</table>
							</div>

							<div class="table-responsive">
								<table class="table table-bordered">
									<thead>
										<tr class="text-center">
											<th>Step</th>
											<th>Task Description</th>
											<th>Active</th>
										</tr>

										<tr>
											<td class="text-center">1</td>
											<td>Create new academic year</td>
											<td class="text-center"><a href="#"
												class="btn btn-success btn-sm"><i
													class="fa-solid fa-square-caret-right"></i> </a></td>
										</tr>

										<tr>
											<td class="text-center">2</td>
											<td>Shift class(es) to respective academic year</td>
											<td class="text-center"><a href="#"
												class="btn btn-success btn-sm"><i
													class="fa-solid fa-square-caret-right"></i> </a></td>
										</tr>

										<tr>
											<td class="text-center">3</td>
											<td>Shift students to respective academic year</td>
											<td class="text-center"><a href="#"
												class="btn btn-success btn-sm"><i
													class="fa-solid fa-square-caret-right"></i> </a></td>
										</tr>

										<tr>
											<td class="text-center">4</td>
											<td>Shift fees head to respective academic year</td>
											<td class="text-center"><a href="#"
												class="btn btn-success btn-sm"><i
													class="fa-solid fa-square-caret-right"></i> </a></td>
										</tr>

										<tr>
											<td class="text-center">5</td>
											<td>Shift fees category to respective academic year</td>
											<td class="text-center"><a href="#"
												class="btn btn-success btn-sm"><i
													class="fa-solid fa-square-caret-right"></i> </a></td>
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