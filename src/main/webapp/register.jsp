<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-3.4.1.min.js"></script>
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
      
<center>
<h1>
            <span>T</span>eacher
            <span>R</span>egistrstion
            <span>F</span>orm </h1> </center>
        <!-- //header -->
        <!-- content -->
        <div class="main-content-agile">
            <div class="sub-main-w3">
               
                    <p>${res}</p>

<form onsubmit="register()">

 <div class="form-style-agile">
                        <label>Teacher Name</label>
                        <div class="pom-agile">
                            <span class="fa fa-user-o" aria-hidden="true"></span>


<input type="text" name="name" id="name" placeholder="Enter name"  required autofocus  onkeyup="validateName()"/><span style="color:red" id="nameError"></span>
<br/>   </div>
                    </div>
                 <div class="form-style-agile">
                        <label>Email</label>
                        <div class="pom-agile">
                            <span class="fa fa-envelope" aria-hidden="true"></span>    

<input type="email" name="email" id="email" placeholder="Enter Email Id"  required /><span style="color:red" id="passwordError"></span>
<br/>
</div></div>
<div class="form-style-agile">
                        <label>Password</label>
                        <div class="pom-agile">
                            <span class="fa fa-key" aria-hidden="true"></span>

<input type="password" name="password" id="password" placeholder="Enter Password"  required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" onkeyup="validatePassword()"/><span style="color:red" id="passwordError"></span>
<br/></div></div>
		 

<input type = "submit" value = "REGISTER" class="btn btn-success" >
&nbsp; &nbsp;<br> <br>
<button type="reset" class="btn btn-danger" value="clear">CLEAR</button><br/><br>

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
    var password=document.getElementById("password").value;
    var passwordRegex=/^[A-Za-z0-9]*$/;
if(passwordRegex.test(password))
    {
    document.getElementById("passwordError").innerHTML="";
    }
else
    {
    document.getElementById("passwordError").innerHTML="Alpha Numeric only ";
    
    }
}
function register()
{
    event.preventDefault();     
  var admin_name = document.getElementById("name").value;
  var email= document.getElementById("email").value;
  var pass=document.getElementById("password").value;
  var formData = "name=" + admin_name+"&email="+email+ "&password="+pass;
  console.log(formData);
   var url="http://localhost:9000/AdminRegister?"+ formData;
   console.log(url);
   $.post(url).then(function(response) {
       console.log("success");
       console.log(response);
       var msg=response;
     if(msg!=null) {
           alert("Registration Successful");
            window.location.href = "adminlogin.jsp";
     }
   },
   function(response) {
       console.log("Error");
       console.log(response);
        var data = response.responseJSON.message;
       if (data != null) {
           alert(data);
           window.location.href= "register.jsp";
       }
   });
}



</script>

</body>
</html>