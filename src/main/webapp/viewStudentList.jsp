<%@page import="com.schoolmanagement.helper.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/sweetalert2@11.7.1/dist/sweetalert2.min.css" rel="stylesheet"></link>
<jsp:include page="link.jsp"></jsp:include>
</head>
<body>
	<div class="main-wrapper">
		<jsp:include page="header.jsp"></jsp:include>


		<jsp:include page="sidebar.jsp"></jsp:include>

		<div class="page-wrapper">
			<div class="content container-fluid">
				<div class="row">
			
					<div class="col-lg-12">
					<div class="card">
						<div class="card-header">

							<h5 class="card-title">Student Details -</h5>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class=" mb-0 table table-striped ">
									<thead class="bg-primary">
<!--  onlineRegId, prnNo, firstName, middleName, lastName, dateOfBirth, birthPlace, 
religionId, castCategory, castId, addressForCommunication, gender, dateOfAdmission, 
photograph, nationality, status, nameOfThePreviousSchool, nameOfTheFather, parentEmail, 
fatherMobileNo, studentMobile, nameOfTheMother, studentEmail, motherMobileNo, landline, 
aadharNumber, academicYearId, selectSection, selectClassId, classFees, selectFeesCategory, 
selectTransportWay, selectSlab, slabFees, admissionStatus -->
										<tr>
											<th>onlineRegId</th>
											<th>prnNo</th>
											<th>firstName</th>
											<th>middleName</th>
											<th>lastName</th>
											<th>dateOfBirth</th>
											<th>birthPlace</th>
											<th>religionId</th>
											<th>castCategory</th>
											<th>castId</th>
											<th>addressForCommunication</th>
											<th>gender</th>
											<th>dateOfAdmission</th>
											<th>photograph</th>
											<th>nationality</th>
											<th>status</th>
											<th>nameOfThePreviousSchool</th>
											<th>nameOfTheFather</th>
											<th>parentEmail</th>
											<th>fatherMobileNo</th>
											<th>studentMobile</th>
											<th>nameOfTheMother</th>
											<th>studentEmail</th>
											<th>motherMobileNo</th>
											<th>landLine</th>
											<th>aadharNumber</th>
											<th>academicYearId</th>
											<th>selectSection</th>
											<th>selectClassId</th>
											<th>classFees</th>
											<th>selectFeesCategory</th>
											<th>selectTransportWay</th>
											<th>selectSlab</th>
											<th>slabFees</th>
											<th>admissionStatus</th>
											<th>update</th>
										</tr>
									</thead>
									<tbody>
										<%
										try {
											int cnt = 1;
											Connection con = ConnectionProvider.getConnection();
											Statement stmt = con.createStatement();
											ResultSet rs = stmt.executeQuery("select * from studentdetails");
											while (rs.next()) {
										%>

										<tr>
											<td><%=cnt%></td>
											<td><%=rs.getString("prnNo")%></td>
											<td><%=rs.getString("firstName") %></td>
											<td><%=rs.getString("middleName")%></td>
											<td><%=rs.getString("lastName") %></td>
											<td><%=rs.getString("dateOfBirth")%></td>
											<td><%=rs.getString("birthPlace") %></td>
											<td><%=rs.getString("religionId") %></td>
											<td><%=rs.getString("castCategory") %></td>
											<td><%=rs.getString("castId")%></td>
											<td><%=rs.getString("addressForCommunication")%></td>
											<td><%=rs.getString("gender")%></td>
											<td><%=rs.getString("dateOfAdmission")%></td>
										<!--  	<td>
                                                    <h2 class="table-avatar">
                                                        <a class="avatar avatar-sm me-2"><img
                                                                class="avatar-img rounded-circle"
                                                                src="../<%= rs.getString("photograph")%>"
                                                                alt="User Image"></a>
                                                    </h2>
                                            </td>-->
											<td><%=rs.getString("nationality")%></td>
											<td><%=rs.getString("status")%></td>
											<td><%=rs.getString("nameOfThePreviousSchool")%></td>
											<td><%=rs.getString("nameOfTheFather")%></td>
											<td><%=rs.getString("fatherMobileNo")%></td>
											<td><%=rs.getString("studentMobile")%></td>
											<td><%=rs.getString("nameOfTheMother")%></td>
											<td><%=rs.getString("studentEmail")%></td>
											<td><%=rs.getString("motherMobileNo")%></td>
											<td><%=rs.getString("landLine")%></td>
											<td><%=rs.getString("aadharNumber")%></td>
											<td><%=rs.getString("academicYearId")%></td>
											<td><%=rs.getString("selectSection")%></td>
											<td><%=rs.getString("selectClassId")%></td>
											<td><%=rs.getString("classFees")%></td>
											<td><%=rs.getString("selectFeesCategory")%></td>
											<td><%=rs.getString("selectTransportWay")%></td>
											<td><%=rs.getString("selectSlab")%></td>
											<td><%=rs.getString("slabFees")%></td>
											<td><%=rs.getString("admissionStatus")%></td>
											<td class="">
												<div class="actions ">
													<a href="fullEntryForm.jsp?id=<%=rs.getInt("onlineRegId") %>"
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
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.7.1/dist/sweetalert2.all.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

	<script type="text/javascript">
		$(document).ready(function() {
			$("#addSchoolForm").on('submit', function(event) {
				event.preventDefault();
				//var f = $(this).serialize();
				let f = new FormData($(this)[0])
				console.log(f)

				$.ajax({
					type : 'POST',
					enctype : 'multipart/form-data',
					url : '../DB/addSchoolDB.jsp',
					data : f,
					processData : false,
					contentType : false,
					cache : false,
					success : function(responce) {
						if (responce.trim() == '1') {
							 $("#addSchoolForm")[0].reset()
							Swal.fire({
								icon: 'success',
								  title: 'School Added Successfully ' ,
								  confirmButtonText: 'Ok',
								}).then((result) => {
								  /* Read more about isConfirmed, isDenied below */
								})
						} else {
							Swal.fire({
								icon: 'error',
								  title: 'School cannot be added Something went Wrong' ,
								  confirmButtonText: 'Ok',
								}).then((result) => {
								  /* Read more about isConfirmed, isDenied below */
								})
						}
					}
					

				})
			})
		})
	</script>
<br>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>