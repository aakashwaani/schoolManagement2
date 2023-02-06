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
	<div class="main-wrapper">
		<jsp:include page="header.jsp"></jsp:include>
		<jsp:include page="sidebar.jsp"></jsp:include>
		<div class="page-wrapper">

			<div class="content container-fluid">

				<div class="page-header">
					<div class="row">
						<div class="col">
							<h3 class="page-title">Add New Class Form</h3>
							<ul class="breadcrumb">
								<li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
								<li class="breadcrumb-item active">Add Class</li>
							</ul>
						</div>
					</div>
				</div>


				<div class="row">

					<div class="col-md-8">
						<div class="card">
							<div class="card-header">
								<h5 class="card-title">Class Form -</h5>
							</div>
							<div class="card-body">
								<form action="DB/addClassDB.jsp" method="post"
									class="needs-validation" novalidate>
									<div class="form-group">
										<label for="validationCustom01"> Select Section</label> <select
											class="form-control" name="sectionId" id="validationCustom01"
											required>

											<%
											try {
												Connection con = ConnectionProvider.getConnection();
												Statement stmt = con.createStatement();
												ResultSet rs = stmt.executeQuery("select * from section");
												while (rs.next()) {
											%>



											<option value="<%=rs.getInt("sectionId")%>">
												<%=rs.getString("sectionName")%></option>
											<%
											}

											} catch (Exception e) {
											e.printStackTrace();
											}
											%>
										</select>
									</div>

									<div class="form-group">
										<label for="validationCustom01"> Class Name</label> <input
											type="text" name="className" class="form-control"
											id="validationCustom01" required>
										<div class="valid-feedback">Looks good!</div>
										<div class="invalid-feedback">Please Provide Section
											Name.</div>
									</div>
									<div class="form-group">
										<label for="validationCustom01">Status</label> 
										<select
											class="form-control" id="validationCustom01" required
											name="status">
											<option>Active</option>
											<option>In-Active</option>
										</select>
										<div class="valid-feedback">Looks good!</div>
										<div class="invalid-feedback">Please Provide Section
											Name.</div>
									</div>
									<div class="text-end">
										<button type="submit" class="btn btn-primary">Save</button>
										<button type="submit" class="btn btn-danger">Reset</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>

				<div class="col-lg-12">
					<div class="card">
						<div class="card-header">

							<h5 class="card-title">Class Details -</h5>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class=" mb-0 table table-striped ">
									<thead class="bg-primary">

										<tr>
											<th>Serial No.</th>
											<th>Class Name</th>
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
											ResultSet rs = stmt.executeQuery("select * from studclass");
											while (rs.next()) {
										%>

										<tr>
											<td><%=cnt%></td>
											<td><%=rs.getString("className")%></td>
											<td><%=rs.getString("status")%></td>
											<td class="">
												<div class="actions ">
													<a href="edit-department.html"
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