<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="UTF-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Project Registration From</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet"> 
     <script src="https://kit.fontawesome.com/34e0fb67b7.js" crossorigin="anonymous"></script>
     <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<style>

 body{
 
  
   background-position: center;
   background-repeat: no-repeat;
   background-size: cover;
   background-attachment: fixed;
}
#lable{
    font-weight: 500;
}


.card-header h4
{
   
    font-size: 20px;
    font-weight: 600;
    color: #333;
    position: relative;
}
.card-header h4::before{
    content:"";
    position: absolute;
    left: 0;
    bottom: -2px;
    height: 3px;
    width: 27px;
    border-radius: 10px;
    background-color: blue;
    }
    

#title{
    font-size: 20px;
    font-weight: 500;
    margin: 6px 0;
    display: block;
    color: #333;
    position: relative;
    margin-bottom: 15px;
    margin-top: 0px;
}
#title::before{
    content:"";
    position: absolute;
    left: 0;
    bottom: -2px;
    height: 3px;
    width: 27px;
    border-radius: 10px;
    background-color: blue;
    }
  
  #fields{
    display: flex;
    align-items: center;
    justify-content: space-between;
    flex-wrap: wrap;
}

#button:hover {
  background: rgb(123, 104, 218);
} 

</style>
</head>
<body>
<div class="row my-4">
        <div class="col-lg-10 mx-auto">
            <div class="card shadow">
                <div class="card-header">
                    <h4>School Registration From</h4>
                </div>
                <div class="card-body p-4">
                    <div id="form first">
                        <div id="details">
                            <span id="title">School Details</span>
                            <div id=" fields">
                                <form action="" name="schForm" method="post" id="add_form" onsubmit="return validate()">
                                    <div id="show_item">
                                        <div class="row">
                                            <div class="col-md-12 mb-3" id="lable">
                                                <label id="lable">School Name:</label>
                                                <input type="text"  name="schoolName" id="schoolname" class="form-control" placeholder="Enter Student name" >
                                               
                                            </div>
                                            <div class="col-md-6 mb-3">
                                                <label id="lable">School Registration Number:</label>
                                              <input type="text" name="schoolRegistration" id="schoolrn" class="form-control" placeholder="School Registration Number" >
                                            </div>
                                            <div class="col-md-6 mb-3">
                                                <label id="lable">School UIDIAS Number:</label>
                                                <input type="text" id="schoolun"  name="schoolUIDIAS" class="form-control" placeholder="School UIDIAS Number" >
                                            </div>
                                            <div class="col-md-12 mb-3">
                                                <label id="lable">Sub-heading:</label>
                                                <input type="text" id="subheading" name="subHeading" class="form-control" placeholder="Sub-heading" >
                                            </div>
                                            <div class="col-md-6 mb-3">
                                                <label id="lable">School Code:</label>
                                              <input type="text" id="schoolcode"  name="schoolCode" class="form-control" placeholder="School Code">
                                            </div>
                                            <div class="col-md-6 mb-3">
                                                <label id="lable">Society Name:</label>
                                                <input type="text" id="societyname"  name="societyName" class="form-control" placeholder="Society Name">
                                            </div>    
                                            <div class="col-md-12 mb-3">
                                                <label id="lable">Address:</label>
                                                <input type="text" id="address" name="address" class="form-control" placeholder="Enter Address" >
                                            </div>
                                            <div class="col-md-6 mb-3">
                                                <label id="lable">Principle Name:</label>
                                              <input type="text" id="principlename" name="principleName" class="form-control" placeholder="Enter Principle">
                                            </div>
                                            <div class="col-md-6 mb-3">
                                                <label id="lable">Email:</label>
                                                <input type="email" id="email" name="email" class="form-control" placeholder="Email">
                                            </div>
                                            <div class="col-md-3 mb-3">
                                                <label id="lable">Landline Number:</label>
                                                <input type="number" id="landlinenumber" name="landlineNumber" class="form-control" placeholder="Landline Number">
                                            </div>
                                            <div class="col-md-3 mb-3">
                                                <label id="lable">Mobile Number:</label>
                                              <input type="number" id="mobilenumber" name="mobileNumber" class="form-control" placeholder="Mobile Number">
                                            </div>
                                            <div class="col-md-3 mb-3">
                                                <label id="lable">Logo:</label>
                                                <input type="file" id="logo" name="logo" class="form-control">
                                            </div>   
                                            <div class="col-md-3 mb-3">
                                                <label id="lable">Banner:</label>
                                                <input type="file" id="banner" name="banner" class="form-control">
                                            </div> 
                                        </div> 
                                        
                                       </div> 
                                       <button type="submit" id="button" class="btn btn-success">Submit</button>
                                       
                                    </div>
                                    
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
	</div>
</div>
    
 <script>
    function validate(){
        var schoolname = document.schForm.schoolname;
        var schoolrn = document.schForm.schoolrn;
        var schoolun = document.schForm.schoolun;
        var subheading = document.schForm.subheading;
        var schoolcode= document.schForm.schoolcode;
        var societyname = document.schForm.societyname;
        var address = document.schForm.address;
        var principlename = document.schForm.principlename;
        var email = document.schForm.email;
        var landlinenumber = document.schForm.landlinenumber;
        var mobilenumber = document.schForm.mobilenumber;
        var logo = document.schForm.logo;
        var banner = document.schForm.banner;
        
        if(schoolname.value.length <= 0){
         
            swal("OOPs", "School Name is required", "warning");
           schoolname.focus();
            return false;
        }
        if(schoolname.value.length <= 2){
            
            swal("OOPs", "Please weite more than two character", "warning");
           schoolname.focus();
            return false;
        }
        if(schoolrn.value.length <= 0){
            swal("OOPs", "School Registration Number is required", "warning");
            schoolrn.focus();
            return false;
        }
        if(schoolun.value.length <= 0){
            swal("OOPs", "School UIDIAS Number is required", "warning");
            schoolun.focus();
            return false;
        }
        if(subheading.value.length <= 0){
            swal("OOPs", "Sub-heading is required", "warning");
            subheading.focus();
            return false;
        }
        if(schoolcode.value.length <= 0){
            swal("OOPs", "School Registration Number is required", "warning");
            schoolcode.focus();
            return false;
        }
        if(societyname.value.length <= 0){
            swal("OOPs", "Society Name is required", "warning");
            societyname.focus();
            return false;
        }
        if(address.value.length <= 0){
            swal("OOPs", "Address is required", "warning");
            address.focus();
            return false;
        }
        if(principlename.value.length <= 0){
            swal("OOPs", "Principle Name is required", "warning");
            principlename.focus();
            return false;
        }
        if(email.value.length <= 0){
            swal("OOPs", "Email is required", "warning");
            schoolname.focus();
            return false;
        }
        if(landlinenumber.value.length !=10){
            swal("OOPs", "Landline Number is required", "warning");
            schoolname.focus();
            return false;
        }
        if(mobilenumber.value.length !=10){
            swal("OOPs", "Mobile Number is required", "warning");
            schoolname.focus();
            return false;
        }
        if(logo == ""){
           
            swal("OOPs", "Logo is required", "warning");
            schoolname.focus();
            return false;
        }
        if(banner == ""){
            swal("OOPs", "banner is required", "warning");
            schoolname.focus();
            return false;
        }

      return false; 
    }

 </script>
</body>
</html>