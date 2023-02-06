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
	Connection con = ConnectionProvider.getConnection();
	Statement stmt = con.createStatement();
	%>
	<div class="main-wrapper">
		<jsp:include page="header.jsp"></jsp:include>
		<jsp:include page="sidebar.jsp"></jsp:include>
		<div class="page-wrapper">

			<div class="content container-fluid">

				<div class="page-header">
					<div class="row">
						<div class="col">
							<h3 class="page-title">Division Form</h3>
							<ul class="breadcrumb">
								<li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
								<li class="breadcrumb-item active">Add Division</li>
							</ul>
						</div>
					</div>
				</div>


				<div class="row">
					<div class="col-md-8">
						<div class="card">
							<div class="card-header">
								<h5 class="card-title">Division Form -</h5>
							</div>
							<div class="card-body">
								<form action="DB/divisionDB.jsp" method="post"
									class="needs-validation" no-validate>
									<div class="form-group">
										<label> Select Section</label> <select class="form-control"
											name="sectionId">

											<%
											try {

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
										<label> Select Class</label> <select class="form-control"
											name="classId">


											<%
											try {
												ResultSet rs = stmt.executeQuery("select * from studClass");
												while (rs.next()) {
											%>



											<option value="<%=rs.getInt("classId")%>">
												<%=rs.getString("className")%></option>
											<%
											}

											} catch (Exception e) {
											e.printStackTrace();
											}
											%>
										</select>
									</div>

									<div class="form-group">
										<label for="validationCustom01"> Division Name</label> <input
											type="text" id="validationCustom01" name="divisionName"
											class="form-control" required>
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


			</div>
		</div>

		<jsp:include page="footer.jsp"></jsp:include>
	</div>

</body>
</html>