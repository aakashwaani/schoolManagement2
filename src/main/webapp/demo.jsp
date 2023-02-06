<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="DB/addSchoolDB.jsp" class="needs-validation"
		enctype="multipart/form-data" method="POST">
		<label>Logo</label> <input type="file" class="form-control"
			name="schoolLogo">

		<button class="btn btn-primary " type="submit">Submit Form</button>
	</form>

</body>
</html>