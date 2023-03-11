<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.schoolmanagement.helper.ConnectionProvider"%>
<%@ page import="java.sql.*"%>

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
					<div class="col-lg-12">
						<div class="card">
							<div class="card-body">
								<div class="table-responsive">
									<table class="table table-center mb-0 table-bordered">
										<thead>
											<tr class="text-center">
												<th>Serial No.</th>
												<th>Name</th>
												<th>Designation</th>
												<th>Nobile No</th>
												<th>Email Id</th>
												<th>Update</th>
											</tr>
										</thead>
										<tbody>
											<%
											try {
												int cnt = 1;
												Connection con = ConnectionProvider.getConnection();
												Statement stmt = con.createStatement();
												ResultSet rs = stmt.executeQuery("select * from staff");
												while (rs.next()) {
											%>

											<tr class="text-center">
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


												<td class="">
													<div class="actions ">
														<a href="updateSchool.jsp?id=<%=rs.getInt("schoolId")%>"
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
	</div>


	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>