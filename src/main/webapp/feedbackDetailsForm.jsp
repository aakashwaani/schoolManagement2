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

				<div class="card">
					<div class="card-header">
						<h5 class="card-title ">Search Topicwise/Commentwise Feedback
							Details-</h5>
					</div>

					<div class="row p-3">
						<div class="col-lg-4 col-md-5">
							<div class="form-group text-center">
								<label class="fw-bold"> Feedback Topic Name </label> <select
									class="form-control form-select">
									<option value="" disabled selected hidden>Please
										Select</option>
								</select>
							</div>
						</div>

						<div class="col-lg-6 col-md-5">
							<div class="form-group text-center">
								<label class="fw-bold"> Search by Feedback Comment </label>
								<div>
									<input type="text" class="form-control"
										placeholder="Enter search Keyword..">
								</div>
							</div>
						</div>
						<div class="col-lg-2 col-md-2 text-center">
							<div class="search-student-btn py-4">
								<button type="button" class="btn button-sm btn-warning">
									Search
								</button>
							</div>
						</div>
					</div>


					<div class="row p-3">
						<div class="table-responsive">
							<table class="table table-bordered text-center">
								<thead>
									<tr>
										<th class="col-1">Sr.No.</th>
										<th class="col-3">Feedback Topic Name</th>
										<th class="col-3">Comment</th>
										<th class="col-2">Created By</th>
										<th class="col-2">Date and Time</th>
										<th class="col-1">Action</th>
									</tr>
								</thead>
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