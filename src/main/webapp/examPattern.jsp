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
							<h3 class="page-title">Exam Pattern Form</h3>
							
						</div>
					</div>
				</div>


				<div class="row">
					<div class="col-xl-8">
						<div class="card">
							<div class="card-header">
								<h5 class="card-title">Division Form -</h5>
							</div>
							<div class="card-body">
								<form action="DB/divisionDB.jsp" method="post"
									id="addDivisionForm" role="form" class="needs-validation"
									no-validate>
									<div class="form-group row">
										<label> Select Section</label> <select class="form-control"
											name="sectionId">
											<option></option>
											<option></option>
										</select>
									</div>
									<div class="form-group row">
										<label> Select Class</label> <select
											class="form-control form-select" name="classId">
											<option></option>
											<option></option>

										</select>
									</div>

									<div class="form-group row">
										<label for="validationCustom01"> Division Name</label> <input
											type="text" id="validationCustom01" name="division"
											class="form-control" required>
										<div class="valid-feedback">Looks good!</div>
										<div class="invalid-feedback">Please Enter Division
											Name.</div>

									</div>
									<div class="form-group row">
										<label for="validationCustom01">Status</label> <select
											class="form-control form-select" id="validationCustom01"
											required name="status">
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

							<h5 class="card-title">Division Details -</h5>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class=" mb-0 table table-bordered">
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

		<jsp:include page="footer.jsp"></jsp:include>
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
		<script
			src="https://cdn.jsdelivr.net/npm/sweetalert2@11.7.1/dist/sweetalert2.all.min.js"></script>
	</div>

</body>
</html>