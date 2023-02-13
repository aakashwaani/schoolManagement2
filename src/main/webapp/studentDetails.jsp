<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
	<jsp:include page="link.jsp"></jsp:include>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">

	<style>
		body {
			background: white;
			font-family: 'Poppins', sans-serif;
			background-color: #f4f4f4;
			}

		#t2 {
			background-color: #C6FFAB;
			font-weight: bold;
			color: green;
			padding-top: 5px;
			padding-bottom: 5px;
			margin-bottom: -25px;
			}
			
			.card-header{
				background-color: #C6FFAB;
				font-weight: bold;
				color: green;
			}
			

			
			
			#c1 {
				margin-top: -15px;
				margin-bottom: -15px;
			}
			
		.col{
			margin-bottom: -20px;
			}
			
		.content container-fluid{
				border: 1px solid lightgray;
				background: #fff;
		}
			
		</style>
	
</head>

<body>
		
	<div class="main-wrapper">
		
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="sidebar.jsp"></jsp:include>
		
			
		<div class="page-wrapper" id="p1">
			<div class="content container-fluid">
				<div class="page-header">
					<div class="row">
						<div class="col">
							<h5 class="page-title">Student Information-</h5>
						</div>
					</div>
				</div>
	   
	  			<div class="row">
					<div class="col-md-12">
						<div class="card" id="id1">
							<div class="card-header">
								<h5 class="card-title"> Student Details- </h5>
							</div>
					
			
				
				<div class="card-body">
					<form action="#" id="f1">
					
					<div class="row justify-content-center">
						<div class="col-12" id="header">
							<div class="card">
								<div class="table-responsive">
									<table class="table table-bordered table-striped">
										<tbody>
											<tr><td style="text-align: center;"> <label> Academic Year </label> 
													<select class="form-control">
													<option value="">Select Academic Year</option>
													<option value="1">2018-19</option>
													<option value="2">2019-20</option>
													<option value="3">2020-21</option>
													<option value="4">2021-22</option>
													<option value="5">2022-23</option>
													<option value="6">2023-24</option>
													</select></td>

											<td style="text-align: center;"><label> Select Selection </label>
													 <select class="form-control">
													<option value="">Select Selection</option>
													<option value="1">SECONDARY 5TH AND 6TH</option>
													<option value="2">SECONDARY 6TH AND 7TH</option>
													<option value="3">SECONDARY 7TH AND 8TH</option>
													<option value="4">SECONDARY 8TH AND 9TH</option>
													<option value="5">SECONDARY 9TH AND 10TH</option>
													</select></td>

											<td style="text-align: center;"><label> Select Class</label> 
													<select class="form-control">
													<option value="">Select Class</option>
													<option value="1">1st Class</option>
													<option value="2">2nd Class</option>
													<option value="3">3rd Class</option>
													<option value="4">4th Class</option>
													<option value="5">5th Class</option>
													<option value="6">6th Class</option>
													<option value="7">7th Class</option>
													<option value="8">8th Class</option>
													<option value="9">9th Class</option>
													<option value="10">10th Class</option>
											</select></td>

											<td style="text-align: center;"><label> Division </label> 
													<select class="form-control">
													<option value="">Select Division</option>
													<option value="1">A</option>
													<option value="2">B</option>
													<option value="3">C</option>
													<option value="4">D</option>
													<option value="5">E</option>
													<option value="6">F</option>
													</select></td>

											<td style="text-align: center;"><label> Name/PRN/Mobile No </label>
													<select class="form-control">
													<option value="">Enter search keyword...</option>
													<option value="1">--</option>
													<option value="2">---</option>
													</select></td></tr>
													
																							
										</tbody>	
										</table>	
											
										<table class="table table-bordered ">
										<tr><td style="text-align: center;">
										<a href=""  class="btn btn-warning btn-sm"> <i class="fa-solid fa-magnifying-glass"></i> Search</a>
										</td></tr>
										</table>
										
									</div>
									</div>
							</div>
						</div>
									
			</form>
										
										
										
							<div class="row justify-content-center">
								<div class="col-12" id="c1">
								<div class="table-responsive">
								
									<table class="table table-bordered table-striped">
										<tbody>
											<tr style="text-align: center;">
												<th> Sr. No. </th>
												<th> Academic Year </th>
												<th> PRN </th>
												<th> Full Name </th>
												<th> Class and Division </th>
												<th> Status </th>
												<th> Action </th>
											</tr>
										</tbody>
									</table>
								</div>
								</div>
						</div>
										
										
										</div>
									</div>
									</div>
								</div>
							</div>
						</div>
					</div>
						
						

			
					
	<div>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
	
</body>

</html>