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
				<div class="col-md-12">
					<div class="card">
						<div class="card-header">
							<h5 class="card-title ">New Entry -</h5>
						</div>
						<div class="card-body">
							<div class="row p-3">
								<div class="col-md-4">
									<div class="form-groupr">
										<label class="fw-bold"> Select Selection </label> <select
											class="form-control form-select">
											<option value="" disabled selected hidden>Please
												Select</option>
										</select>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group fw-bold">
										<label class="fw-bold">Select </label> <input class="fw-bold"
											type="checkbox"> class or <input class="fw-bold"
											type="checkbox"> Group <select
											class="form-control form-select">

											<option value="" disabled selected hidden>All</option>
										</select>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<label class="fw-bold"> Select Division </label> <select
											class="form-control form-select">
											<option value="" disabled selected hidden>Please
												Select</option>
										</select>
									</div>
								</div>

								<div class="col-md-12">
									<div class="form-group text-left">
										<label class="fw-bold"> Announcment Title</label> <select
											class="form-control form-select">
											<option value="" disabled selected hidden>Enter
												Announcment Title ...</option>
										</select>
									</div>
								</div>

								<div class="col-md-6">
									<div class="form-group text-left" data-spy="scroll">
										<label class="fw-bold">Announcment Message </label>

										<textarea class="form-control form-control"
											placeholder="please enter message here ..."></textarea>
										<option value="" disabled selected hidden>Enter
											Announcment Title ...</option>

									</div>
								</div>

								<div class="col-md-6">
									<div class="form ">
										<label class="fw-bold">Announcment Date </label> <input
											type="date" class="form-control me-2">
									</div>
									<div clalss="col-md-6">
										<form action="/action_page.php">
											<label class="fw-bold">Upload Document File </label> <br>
											<input type="file" id="validationCustom01"
												class="form-control" name="staffProfilePic" required>
											<br>
										</form>
									</div>
								</div>
							</div>
						</div>
						<div class="card-footer">
							<div class="row p-3">
								<div class="col-md-6">
									<div style="text-align: left">
										<button type="reset" value="reset"
											class="btn btn-success btn-md">
											<i class="fa-solid fa-eye"></i> Reset Page
										</button>
									</div>
								</div>
								<div class="col-md-6">
									<div style="text-align: right">
										<a href="#" class="btn btn-primary btn-md"><i
											class="fa-regular fa-floppy-disk"></i> Create Announcement </a>
										<button type="reset" value="reset"
											class="btn btn-danger btn-md">
											<i class="fa-sharp fa-solid fa-arrow-rotate-right"></i> Reset
											Page
										</button>
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