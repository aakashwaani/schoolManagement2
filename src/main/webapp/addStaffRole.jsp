	<%@page import="com.schoolmanagement.helper.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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

				<div class="page-header">
					<div class="row">
						<div class="col">
							<h3 class="page-title">Add Staff Role Form</h3>
							<ul class="breadcrumb">
								<li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
								<li class="breadcrumb-item active">Add Role</li>
							</ul>
						</div>
					</div>
				</div>


				<div class="row">
					<div class="col-md-8">
						<div class="card">
							<div class="card-header">
								<h5 class="card-title">Add New Role</h5>
							</div>
							<div class="card-body">
								<form action="./DB/addStaffRoleDB.jsp" method="post"
									class="needs-validation" novalidate>
									<div class="form-group row">
										<label for="validationCustom01" class="">Role Name</label>
										<input type="text" class="form-control"
											id="validationCustom01" required name="staffRole">
										<div class="valid-feedback">Looks good!</div>
										<div class="invalid-feedback">Please Provide Staff Role
											Name.</div>
									</div>
									<div class="form-group row">
										<label for="validationCustom01">Status</label> <select
											class="form-control" id="validationCustom01" required
											name="staffRoleStatus">
											<option >Active</option>
											<option >In-Active</option>
										</select>
										<div class="valid-feedback">Looks good!</div>
										<div class="invalid-feedback">Please Provide Staff Role
											Name.</div>
									</div>

									<div class="text-end">
										<button type="submit" class="btn btn-primary">Save</button>
										<button type="reset" class="btn btn-danger">Reset</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>

				<div class="col-lg-12">
					<div class="card">
						<div class="card-header">

							<h5 class="card-title">Staff Role Details -</h5>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class=" mb-0 table table-striped ">
									<thead class="bg-primary">

										<tr>
											<th>Serial No.</th>
											<th>Staff Role Name</th>
											<th>Status</th>
											<th>Update</th>
										</tr>
									</thead>
									<tbody>
										<%
										try {
											int cnt = 1;
											Connection con = ConnectionProvider.getConnection();
											Statement stmt = con.createStatement();
											ResultSet rs = stmt.executeQuery("select * from staffRole");
											while (rs.next()) {
										%>

										<tr>
											<td><%=cnt%></td>
											<td><%=rs.getString("staffRole")%></td>
											<td><%=rs.getString("staffRoleStatus") %></td>
											<td class="">
												<div class="actions ">
													<a href="updateStaffRole.jsp?id=<%=rs.getInt("staffRoleId") %>"
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

		<jsp:include page="footer.jsp"></jsp:include>
	</div>

</body>
</html>