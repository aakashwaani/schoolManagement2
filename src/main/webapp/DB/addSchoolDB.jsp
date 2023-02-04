<%@page import="java.sql.*"%>
    
    <%@page import="java.sql.*" %>
    <%@page import="com.oreilly.servlet.MultipartRequest" %>

<%
      Class.forName("com.mysql.jdbc.Driver");
      Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/carrental","root","root");
      PreparedStatement ps=null; int done=0; String sql=""; ResultSet rs =null;
      
      MultipartRequest m = new MultipartRequest(request,"D:/workspace/carRental/WebContent/admin/image",1048*1048*1048);
      
        String carName = m.getParameter("carName");
        String carImage = "image/"+m.getFilesystemName("carImage");
        String carRentPrice = m.getParameter("carRentPrice");
       
        String make = m.getParameter("make");
        String model = m.getParameter("model");
       
        String mileage = m.getParameter("mileage");
        String condition = m.getParameter("condition");
      
        String engine = m.getParameter("engine");
       
        String generalInformation = m.getParameter("generalInformation");
       
    	
    	
    	sql="insert into car(carName, carImage, carRentPrice, make, model, mileage, conditionn, enginee, generalInformation, carStatus)values(?,?,?,?,?,?,?,?,?,'Deactivated')";
    	
    	ps=con.prepareStatement(sql);
    	ps.setString(1, carName);
    	ps.setString(2, carImage);
    	ps.setString(3, carRentPrice);
    	ps.setString(4, make);
    	ps.setString(5, model);
    	ps.setString(6, mileage);
    	ps.setString(7, condition);
    	ps.setString(8, engine);
    	ps.setString(9, generalInformation);
    	
    	done = ps.executeUpdate();
    	if(done>0){

    		%>
    		<script>
    		  alert("Success !! Added Car.")
    		  location.href = "addCar.jsp";
    		</script>
    		<%
    	}else{
    		%>
    			<script>
    		  alert("Failed !! Try Again..")
    		  location.href = "addCar.jsp";
    		</script>
    	<%}
    	
    	%>