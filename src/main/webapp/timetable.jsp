<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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

				<div class="student-group-form">
					<div class="row">

						<div class="col-lg-3 col-md-3">
							<div class="form-group">
								<select class="form-control">
									<option>Select Class</option>
									<option></option>
									<option></option>
								</select>
							</div>
						</div>
						<div class="col-lg-4 col-md-3">
							<div class="form-group">
								<input type="text" class="form-control"
									placeholder="Search by Class ...">
							</div>
						</div>
						<div class="col-lg-2">
							<div class="search-student-btn text-end">
								<button type="btn" class="btn btn-primary">Search</button>
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