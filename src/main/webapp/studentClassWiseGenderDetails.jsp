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
						  
							   <h3 class="page-title">Classwise Gender Report </h3>
							
							<ul class="breadcrumb">
								<li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
								<li class="breadcrumb-item active">Academic Year</li>
							</ul>
						</div>
					</div>
				</div>


				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-header">
							<div class="green">
								<h5 class="card-title"  id="h3">Gender Report-</h5>
								</div>
							</div>
							<div class="card-body">
								<form action="DB/academicYearDB.jsp" class="needs-validation"
									novalidate method="post">
										<div class="col-md-6">
									<div class="form-group">
										<label for="validationCustom01"> Select Academic
											Year </label>
											
											<div class="col-lg-12">
													<select class="form-control form-select" name="academicYear"
														id="validationCustom01" required>

														<%
														try {
															Connection con = ConnectionProvider.getConnection();
															Statement stmt = con.createStatement();
															ResultSet rs = stmt.executeQuery("select * from academicYear");
															while (rs.next()) {
														%>



														<option value="<%=rs.getInt("academicYear")%>">
															<%=rs.getString("academicYear")%></option>
														<%
														}

														} catch (Exception e) {
														e.printStackTrace();
														}
														%>
													</select>
												</div>
									
									</div>
									<button type="search" class="btn btn-warning" ><span> <i class="fas fa-search"></i> </span>Search</button>
								</div>
								
								</form>
							</div>
						</div>
					</div>
				</div>

				<div class="col-lg-12">
					<div class="card">
						<div class="card-header">
							<div class="green">
								<h5 class="card-title" id="h3">Classwise Gender Report  -</h5>
							</div>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class=" mb-0 table table-striped ">
									<thead class="bg-primary">

										<tr>
											<th>Serial No.</th>
											<th>Class Name</th>
											<th>Boys</th>
											<th>Girls</th>
											<th>Total</th>
										</tr>
									</thead>
									<tbody>
										<%
										try {
											int cnt = 1;
											Connection con = ConnectionProvider.getConnection();
											Statement stmt = con.createStatement();
											ResultSet rs = stmt.executeQuery("select * from academicyear");
											while (rs.next()) {
										%>

										<tr>
											<td><%=cnt%></td>
											<td><%=rs.getString("academicyear")%></td>
											<td><%=rs.getString("startmonthNumber")%></td>
											<td><%=rs.getString("nextAcademicYearDate")%></td>
											<td class="">
												<div class="actions ">
													<a
														href="updateAcademicYear.jsp?id=<%=rs.getInt("academicYearId")%>"
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
						<div class="text-end">
						<div class="text-center">
										<button type="submit" class="btn btn-success"><i class="fa fa-print"></i>  Print  </button>
										<button type="submit" class="btn btn-danger"><i class="fa fa-times"></i>  Cancel</button>
									</div>
									</div>
				</div>
			</div>
		</div>

		<jsp:include page="footer.jsp"></jsp:include>
	</div>

</body>
</html>