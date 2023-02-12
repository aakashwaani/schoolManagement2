
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
							<h3 class="page-title">Update Academic Year Details</h3>
							<ul class="breadcrumb">
								<li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
								<li class="breadcrumb-item active">Academic Year</li>
							</ul>
						</div>
					</div>
				</div>


				<div class="row">

					<div class="col-md-8">
						<div class="card">
							<div class="card-header">
								<h5 class="card-title">Update Academic Year Details -</h5>
							</div>
							<div class="card-body">
								<%
								int id = Integer.parseInt(request.getParameter("id"));
								Connection con = ConnectionProvider.getConnection();
								Statement stmt = con.createStatement();
								ResultSet rs = stmt.executeQuery("select * from academicyear where academicYearId=" + id + ";");
								rs.next();
								%>
								<form action="DB/updateacademicYearDB.jsp?id=<%=id %>" method="post">
									<div class="form-group">
										<label> Starting Academic Year (Ex. 2020)</label> <input
											type="text" name="academicYear"
											value="<%=rs.getString("academicyear")%>"
											class="form-control">
									</div>
									<div class="form-group">
										<label> Academic Year Start Month Number </label> <input
											type="text" name="startmonthNumber"
											value="<%=rs.getString("startmonthNumber")%>"
											class="form-control">

									</div>

									<div class="form-group">
										<label> Next Academic Year Date</label> <input type="date"
											value="<%=rs.getString("nextAcademicYearDate")%>"
											class="form-control" name="nextAcademicYearDate">
									</div>
									<div class="text-end">
										<button type="submit" class="btn btn-primary">Update</button>
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