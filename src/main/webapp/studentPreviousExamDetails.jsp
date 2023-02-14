<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.schoolmanagement.helper.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html >
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
							<h3 class="page-title" >Previous Exam Details</h3>
							<ul class="breadcrumb">
								<li class="breadcrumb-item"><a href="index.jsp">Dashboard</a></li>
								<li class="breadcrumb-item active">Add New Staff</li>
							</ul>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-header">
								<h5 class="card-title">Add Previous Exam Details -</h5>
							</div>
							<div class="card-body">
								<form action="#">
									<div class="row">
									
										<div class="col-xl-6">

										
											<div class="form-group row">
												<label class="col-lg-3 col-form-label"><span ><i
														class="fa-solid fa-address-card"></i></span>PRN Number</label>
												<div class="col-lg-9">
													<input type="text" class="form-control" name="prnNumber">
												</div>
												
											</div>
											
											<div class="form-group row">
												<label class="col-lg-3 col-form-label"><i
														class="fa-solid fa-calendar-days"></i>Select Class</label>
												<div class="col-lg-9">
													<select class="form-control form-select" name="castId"
														id="validationCustom01" required></select>
												</div>
											</div>
											
											<div class="form-group row">
												<label class="col-lg-3 col-form-label"><i
														class="fa-solid fa-calendar-days"></i>Select Medium</label>
												<div class="col-lg-9">
													<select class="form-control form-select" name="castId"
														id="validationCustom01" required></select>
												</div>
											</div>
											
											<div class="form-group row">
												<label class="col-lg-3 col-form-label"><i class="fa-solid fa-percent"></i>Percentage</label>
												<div class="col-lg-9">
													<input type="number" class="form-control" name="percentage">
												</div>
											</div>
									<div class="form-group row">
												<label class="col-lg-3 col-form-label"><i class="fa-solid fa-graduation-cap"></i>Grade</label>
												<div class="col-lg-9">
													<input type="text" class="form-control" name="grade">
												</div>
											</div>
									
										
										</div>
										<div class="col-xl-6">

											<div class="form-group row">
												<label class="col-lg-3 col-form-label"> <i class="fas fa-user "></i> Student Full Name</label>
												<div class="col-lg-9">
													<input type="text" name="studentFullname" class="form-control" >
												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-3 col-form-label"><i class="fa-solid fa-chess-board"></i>Select Board</label>
												<div class="col-lg-9">
													
														<select class="form-control form-select" name="castId"
														id="validationCustom01" required></select>
													
												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-3 col-form-label"><i class="fa-solid fa-marker"></i>Maximum Number</label>
												<div class="col-lg-9">
													<input type="text" name="maximumNumber" class="form-control">
												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-3 col-form-label"><i class="fa-solid fa-marker"></i>Obtained Marks</label>
												<div class="col-lg-9">
													<input type="text" name="obtainedMarks"
														class="form-control">
												</div>
											</div>
												<div class="form-group row">
												<label class="col-lg-3 col-form-label"><i class="fa-solid fa-book"></i>Previous Class Subjects</label>
												<div class="col-lg-9">
												<textarea rows="6" cols="6" class="form-control"
														name="previousClasssubjects" placeholder=""></textarea>
												</div>
											</div>
											
										
										</div>
									</div>
									
									<div class="text-end">
										<button type="submit" class="btn btn-primary"><span> <i class="fas fa-save "></i>  </span> Submit
											</button>
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
											<th>Class</th>
											<th>Board</th>
											<th>Medium</th>
											<th>Max</th>
											<th>Obtained</th>
											<th>Percentage</th>
											<th>Grade</th>
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
					
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>