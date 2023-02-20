<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.schoolmanagement.helper.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="link.jsp"></jsp:include>
</head>
<body>
	<%
	Connection con1 = ConnectionProvider.getConnection();
	Statement stmt1 = con1.createStatement();
	%>
	<div class="main-wrapper">
		<jsp:include page="header.jsp"></jsp:include>
		<jsp:include page="sidebar.jsp"></jsp:include>
		<div class="page-wrapper">

			<div class="content container-fluid">

				<div class="page-header">
					<div class="row">
						<div class="col">
							<h3 class="page-title">Update Division Details</h3>
							<ul class="breadcrumb">
								<li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
								<li class="breadcrumb-item active"> Update Division </li>
							</ul>
						</div>
					</div>
				</div>


				<div class="row">
					<div class="col-lg-12">
						<div class="card">
							<div class="card-header">

								<h5 class="card-title">Division Details -</h5>
							</div>
							<div class="card-body">
								<div class="table-responsive">
									<table class="table table-center table-bordered">
										<thead class="bg-primary">

											<tr class="text-center">
												<th>Serial No.</th>
												<th>Division Name</th>
												<th>Status</th>
												<th>Update</th>
											</tr>
										</thead>
										<tbody>
											<%
											try {
												int cnt = 1;
												Connection con = ConnectionProvider.getConnection();
												Statement stmt = con1.createStatement();
												ResultSet rs = stmt1.executeQuery("select * from division");
												while (rs.next()) {
											%>

											<tr class="text-center">
												<td><%=cnt%></td>
												<td><%=rs.getString("division")%></td>
												<td><%=rs.getString("status")%></td>
												<td class="">
													<div class="actions ">
														<a
															href="updateDivision.jsp?id=<%=rs.getInt("divisionId")%>"
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

		<jsp:include page="footer.jsp"></jsp:include>
	</div>

</body>
</html>