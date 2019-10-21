<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html lang="zxx">
<head>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-3.4.1.min.js"></script>



        <title>login</title>
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
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta charset="UTF-8" />
        <meta name="keywords" content="Validify Login Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements"
              />
        <script>
            addEventListener("load", function () {
                setTimeout(hideURLbar, 0);
            }, false);

            function hideURLbar() {
                window.scrollTo(0, 1);
            }
            function val(){
               var n =  document.getElementById("n").value;
               var p =  document.getElementById("p").value;
               if(p===null || p==="" || n==="" || n===null){
                   alert("Field Required!!!");
                   return false;
               }
            }
        </script>
        <!-- Meta tag Keywords -->
        <!-- css files -->
        <link rel="stylesheet" href="admin/css/style.css" type="text/css" media="all" />
        <!-- Style-CSS -->
        <link rel="stylesheet" href="admin/css/fontawesome-all.css">
        <!-- Font-Awesome-Icons-CSS -->
        <!-- //css files -->
        <!-- web-fonts -->
        <link href="//fonts.googleapis.com/css?family=Nova+Round" rel="stylesheet">
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
      
        <!-- title -->
        <h1>
            <span>T</span>eacher
            <span>L</span>ogin
            <span>F</span>orm
        </h1>

	

	 <div class="sub-main-w3">
	<form onsubmit="adminlogin()">
	<div class="form-group">
		<label>Teacher Name</label><br><br>
		<div class="pom-agile">
                            <span class="fa fa-user-o" aria-hidden="true"></span>
		 <input type="text" name="name" id="name" placeholder="Enter name" required autofocus onkeyup="validateName()"/><span style="color:red" id="nameError"></span> 
		 <br> <br> </div> </div>
		 <div class="form-group">
		  <label>Email</label>
		  
		<input type="email"  name="email" id="email" placeholder="Enter Email" required /><span style="color:red" id="passwordError"></span>
		 <br><br> </div>	 
		 
		  <input type="submit" value="LOGIN" class="btn btn-success">
		  &nbsp; &nbsp;  <br>
		<button type="reset" class="btn btn-danger" value="clear">CLEAR</button>
	
	</form>
	

	<script>
	function myFunction() {
		  var x = document.getElementById("password");
		  if (x.type === "password") {
		    x.type = "text";
		  } else {
		    x.type = "password";
		  }
		}
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

	function validatePassword()
	{
	    var pass=document.getElementById("password").value; 
	    var passwordRegex=/^[A-Za-z0-9]*$/;
	if(passwordRegex.test(pass))
	    {
	    document.getElementById("passwordError").innerHTML="";
	    }
	else
	    {
	    document.getElementById("passwordError").innerHTML="Alpha Numeric only ";
	    
	    }
	}
		function adminlogin() {
			//alert('adminlogin');
			event.preventDefault();
			var admin_name = document.getElementById("name").value;
			var email= document.getElementById("email").value;
			
			var formData = "name=" + admin_name + "&email=" + email;
			//console.log(formData);
			var url = "http://localhost:9000/adminlogin?" + formData;

			console.log(url);
			//alert(url);
			   var formData = {};
			   $.post(url).then(function(response) {
			       console.log("success");
			       console.log(response);
			       var msg=response;
			     if(msg!=null) {
			           alert("Successfully Logged In");
			            window.location.href = "adminpage.jsp";
			     }
			   },
			   function(response) {
			       console.log("Error");
			       console.log(response);
			        var data = response.responseJSON.message;
			       if (data != null) {
			           alert(data);
			           window.location.href= "adminlogin.jsp";
			       }
			   });
}


	</script>
</body>
</html>