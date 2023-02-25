
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

				<div class="row">
					<div class="col-md-8">
						<div class="card">
							<div class="card-header">
								<h5 class="card-title">Assign Class Form</h5>
							</div>
							<div class="card-body">
								<form action="#">
									<div class="form-group">
										<label for="validationCustom01"> Select Class-</label> <select
											class="form-control form-select" name="classId"
											id="validationCustom01" required>

											<%
											try {
												Connection con = ConnectionProvider.getConnection();
												Statement stmt = con.createStatement();
												ResultSet rs = stmt.executeQuery("select * from studclass");
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
										<label> Select Co-ordinator</label> <select
											class="form-control">
											<option></option>
											<option></option>
											<option></option>
										</select>
									</div>

									<div class="text-end">
										<button type="submit" class="btn btn-primary">Submit</button>
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