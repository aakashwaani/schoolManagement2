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

				<div class="page-header">
					<div class="row">
						<div class="col">
							<h3 class="page-title">Religion Form</h3>
							<ul class="breadcrumb">
								<li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
								<li class="breadcrumb-item active">Add Religion</li>
							</ul>
						</div>
					</div>
				</div>


				<div class="row">

					<div class="col-md-8">
						<div class="card">
							<div class="card-header">
								<h5 class="card-title">Religion Form</h5>
							</div>
							<div class="card-body">
								<form action="#">
									<div class="form-group">
										<label> Religion Name</label> 
										<input type="text" class="form-control">
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