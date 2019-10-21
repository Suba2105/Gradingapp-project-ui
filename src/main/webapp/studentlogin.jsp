<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="zxx">
<head>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-3.4.1.min.js"></script>



  
        <title>Register</title>
        <!-- Meta tag Keywords -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta charset="UTF-8" />
        <meta name="keywords" content="Stylish Register Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements"
              />
        <script>
            addEventListener("load", function () {
                setTimeout(hideURLbar, 0);
            }, false);

            function hideURLbar() {
                window.scrollTo(0, 1);
            }
        </script>
        <!-- Meta tag Keywords -->
        <!-- css files -->
         <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link rel="stylesheet" href="user/css/style.css" type="text/css" media="all" />
        <!-- Style-CSS -->
        <link rel="stylesheet" href="user/css/font-awesome.css">
        <!-- Font-Awesome-Icons-CSS -->
        <!-- //css files -->
        <!-- web-fonts -->
        <link href="//fonts.googleapis.com/css?family=Niconne&amp;subset=latin-ext" rel="stylesheet">
        <link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
        <!-- //web-fonts -->
    </head>

    <body>
    <br>
     <div class="header-bottom">
                <div class="container">
                    <div class="top-nav">
                        <nav class="navbar navbar-default">
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                   
                                </button>
                            </div>
                            <!-- Collect the nav links, forms, and other content for toggling -->
                            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                         <h2>   <marquee>DO SOMETHING TODAY...THAT YOUR FUTURE SELF WILL THANK YOU FOR!    WELCOME...!!</marquee> </h2>
                                <ul class="nav navbar-nav"> 
                                 <li> <a href="index.jsp"> &nbsp;&nbsp;BACK</a></li>
                                     
                                </ul> 
                                <div class="clearfix"> </div>
                            </div>	
                        </nav>		
                    </div>
                    <!-- w3-banner -->
                    <div class="w3-banner">
                        <div id="typer"></div>
                        <div class="top-banner-right">
                           
                        </div>
                        <div class="w3ls-phone">
                           
                        </div>
                    </div>
                    <!-- //w3-banner -->
                </div>
            </div>
        </div>
      
        

        
       
        <!-- header -->
        <h1>
            <span>S</span>tudent
            <span>L</span>ogin
            <span>F</span>orm</h1>
        <!-- //header -->
        <!-- content -->
        <div class="main-content-agile">
            <div class="sub-main-w3">

	
	<form onsubmit="studentlogin()">
	<div class="form-style-agile">
		<label>Student Name</label>
		<div class="pom-agile">
                            <span class="fa fa-user-o" aria-hidden="true"></span> 
		<input type="text" name="name" id="name" placeholder="Enter Name" required autofocus onkeyup="validateName()"/><span style="color:red" id="nameError"></span>
		 <br /></div></div>
		 <div class="form-style-agile">
		  <label>Register Number:</label>
		  <div class="pom-agile">
                            <span class="fa fa-user-o" aria-hidden="true"></span> 
		<input type="number" name="num" id="num" placeholder="Enter reg_no"required onkeyup="validateReg()"/><span style="color:red" id="regError"></span> 
		<br /> <br></div></div>
		<input type="submit" value="LOGIN" class="btn btn-success">
		&nbsp; &nbsp;
		<button type="reset" class="btn btn-danger" value="clear">CLEAR</button>

	</form>

	<script>
	function validateName()
	{
	    var name=document.getElementById("name").value;
	    var nameRegex=/^[A-Za-z]*$/;
	    if(nameRegex.test(name))
	    {
	    document.getElementById("nameError").innerHTML="";
	    }
	else
	    {
	    document.getElementById("nameError").innerHTML="Characters only";
	    
	    }
	}

	function validateReg()
	{
	    var password=document.getElementById("num").value;
	    var passwordRegex=/^[0-9]*$/;
	if(passwordRegex.test(password))
	    {
	    document.getElementById("regError").innerHTML="";
	    }
	else
	    {
	    document.getElementById("regError").innerHTML="Number only ";
	    
	    }
	}
		function studentlogin() {
			//alert('studentlogin');
			event.preventDefault();
			var admin_name = document.getElementById("name").value;
			var pass = document.getElementById("num").value;
			var formData = "name=" + admin_name + "&regno=" + pass;
			//console.log(formData);
			var url = "http://localhost:9000/userLogin?" + formData;

			console.log(url);
			var formData = {};
			$.post(url).then(function(response) {
			       console.log("success");
			       console.log(response);
			       var msg=response;
			     if(msg!=null) {
			           alert("Successfully Logged In");
			            window.location.href = "viewdetails.jsp";
			     }
			   },
			   function(response) {
			       console.log("Error");
			       console.log(response);
			        var data = response.responseJSON.message;
			       if (data != null) {
			           alert(data);
			           window.location.href= "studentlogin.jsp";
			       }
			   });}


		
	</script>
</body>
</html>