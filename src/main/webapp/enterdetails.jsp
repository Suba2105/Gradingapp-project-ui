<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-3.4.1.min.js"></script>

<meta name="viewport" content="width=device-width, initial-scale=1">
        <meta charset="UTF-8" />
        <meta name="keywords" content="Stylish Register Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements"
              />
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-3.4.1.min.js"></script>
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

<body><center>
<h1>
            <span>E</span>nter
            <span>S</span>tudent
            <span>D</span>etails </h1> </center>
        <!-- //header -->
        <!-- content -->
        <div class="main-content-agile">
            <div class="sub-main-w3">
               
                    <p>${res}</p>


<body>

	<form onsubmit="enterdetails()">
	<div class="form-style-agile">
		<label>Student Name</label> 
		<div class="pom-agile">
                            <span class="fa fa-user-o" aria-hidden="true"></span> 
		<input type="text" name="name" id="name" placeholder="Enter Name" required autofocus  onkeyup="validateName()"/><span style="color:red" id="nameError"></span>
		<br></div></div>
			<div class="form-style-agile">
		 <label>Maths Mark</label> 
		 <div class="pom-agile">
                            <span class="fa fa-user-o" aria-hidden="true"></span> 
		 <input type="number" name="mark" id="maths" placeholder="Enter mark" min="0" max="100" required pattern="(?=.*\d)" title="Must contain only numbers" onkeyup="validateMark()"/><span style="color:red" id="markError"></span>
         <br> </div></div>
         	<div class="form-style-agile">
         <label>Physics Mark</label>
          <div class="pom-agile">
                            <span class="fa fa-user-o" aria-hidden="true"></span> 
		<input type="number" name="mark" id="physics" placeholder="Enter mark" min="0" max="100" required pattern="(?=.*\d)" title="Must contain only numbers" onkeyup="validateMark()"/><span style="color:red" id="markError"></span>
			<br></div></div>
			<div class="form-style-agile">	
		<label>Chemistry Mark</label>
		<div class="pom-agile">
                            <span class="fa fa-user-o" aria-hidden="true"></span>  
		<input type="number" name="mark" id="chemistry" placeholder="Enter mark" min="0" max="100" required pattern="(?=.*\d)"title="Must contain only numbers" onkeyup="validateMark()"/><span style="color:red" id="markError"></span>
		<br /> </div></div>
		<div class="form-style-agile">
		<label>Botany Mark</label>
		<div class="pom-agile">
                            <span class="fa fa-user-o" aria-hidden="true"></span> 
		<input type="number" name="mark" id="botany" placeholder="Enter mark" min="0" max="100" required pattern="(?=.*\d)" title="Must contain only numbers" onkeyup="validateMark()"/><span style="color:red" id="markError"></span>
		 <br /></div></div>
		 <div class="form-style-agile">
		<label>Zoology Mark</label> 
		<div class="pom-agile">
                            <span class="fa fa-user-o" aria-hidden="true"></span> 
		<input type="number" name="mark" id="zoology" placeholder="Enter mark" min="0" max="100" required pattern="(?=.*\d)" title="Must contain only numbers" onkeyup="validateMark()"/><span style="color:red" id="markError"></span>
			<br /> </div></div><br>
			<input type="submit" value="SUBMIT" class="btn btn-success">
			&nbsp; &nbsp;
		<button type="reset" class="btn btn-danger" value="clear">CLEAR	</button>

	</form>
</div></div>
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

	function validateMark()
	{
	    var password=document.getElementById("num").value;
	    var passwordRegex=/^[0-9]*$/;
	if(passwordRegex.test(password))
	    {
	    document.getElementById("markError").innerHTML="";
	    }
	else
	    {
	    document.getElementById("markError").innerHTML="Number only ";
	    
	    }
	}
		function enterdetails() {

			event.preventDefault();
			var s_name = document.getElementById("name").value;
			var mat = document.getElementById("maths").value;
			var phy = document.getElementById("physics").value;
			var che = document.getElementById("chemistry").value;
			var bot = document.getElementById("botany").value;
			var zoo = document.getElementById("zoology").value;
			var formData = "name=" + s_name + "&mat=" + mat
					+ "&phy=" + phy + "&che=" + che
					+ "&bot=" + bot + "&zoo=" + zoo;
			console.log(formData);
			var url = "http://localhost:9000/enterDetails?"
					+ formData;
			console.log(url);
			$.post(url).then(function(response) {
			       console.log("success");
			       console.log(response);
			       var msg=response;
			     if(msg!=null) {
			           alert(" Details Entered Successfully");
			            window.location.href = "adminpage.jsp";
			     }
			   },
			   function(response) {
			       console.log("Error");
			       console.log(response);
			        var data = response.responseJSON.message;
			       if (data != null) {
			           alert(data);
			           window.location.href= "enterdetails.jsp";
			       }
			   });
}


		
	</script>
</body>
</html>