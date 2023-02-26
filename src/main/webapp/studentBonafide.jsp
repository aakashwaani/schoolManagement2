
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
<style>
    body {
        font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
    }

    .cardBodyDetail {
        border: 1px solid black;
        padding: 20px;
    }

    .addressOfcollage p {
        font-size: 12px;
        line-height: 0 !important;
    }

    .bonafideCertificateName {
        background-color: lightgray;
        border: 1px solid black;
        padding: 5px;
        width: 60%;
        margin-left: 20%;
        text-align: center;
    }

    .submitBTN button {
        width: 30%;
        margin-left: 2%;
        margin-top: 3%;
    }
</style>
<body>
	<div class="main-wrapper">
		<jsp:include page="header.jsp"></jsp:include>


		<jsp:include page="sidebar.jsp"></jsp:include>

		<div class="page-wrapper">
			<div class="content container-fluid">
				<div class="col-md-12">
					<div class="card">
						<div class="card-header bg-success">
							<h6>Student Bonafide Certificate Details -</h6>
						</div>
						<div class="card-body">
							<div class="cardBodyDetail">
								<div class="schoolNameheading text-center">
									<p>SHRI KRISHNA VIDYALAYA GUNJOTI OMERGA DWARA SANCHLIT</p>
									<h4>SHRI KRISHNA VIDYALAYA GUNJOTI OMERGA</h4>
								</div>
								<div class="row">
									<div class="col-md-2">
										<img src="" height="100" width="100">
									</div>
									<div class="col-md-8 mt-4 addressOfcollage text-center">
										<p>AT/P GUNJOTI TQ. OMERGA DIST. OSMANBAD 413606</p>
										<p>SCHOOL CODE : 59.05.007</p>
										<p>SCHOOL UIDIS NO : 3456456</p>
									</div>
									<div class="col-md-2">
										<img src="" height="100" width="100">
									</div>
								</div>
								<div class="row">
									<div class="col-md-12 text-center">
										<h5 class="bonafideCertificateName">-: BONAFIDE
											CERTIFICATE :-</h5>
									</div>
								</div>
								<div class="row" style="font-weight: bold;">
									<div class="col-md-3">
										<p>SR.NO:-E</p>
									</div>
									<div class="col-md-3">
										<p>PRN:-</p>
									</div>
									<div class="col-md-3">
										<p>Rec No :-</p>
									</div>
									<div class="col-md-3">
										<p>Date:-</p>
									</div>
								</div>
							</div>
							<div class="cardBodyDetail">

								<div class="row">
									<div class="col-md-12">
										<p></p>
										<p></p>
									</div>
									<div class="col-md-6">
										<h6 style="margin-left: 20%;">CLERK</h6>
									</div>
									<div class="col-md-6">
										<h6 style="margin-left: 15%;">PRINCIPLE</h6>
									</div>
								</div>

							</div>

							<div class="row">
								<div class="col-md-12 submitBTN text-center">
									<button class="btn btn-primary p-1">Genrate Bonafide</button>
									<button class="btn btn-primary p-1">Close</button>
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