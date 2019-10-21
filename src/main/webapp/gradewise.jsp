<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
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
            <span>G</span>rade
            <span>W</span>ise
            <span>L</span>ist</h1> </center>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-3.4.1.min.js"></script>
</head>
<script>

function mainmenu(){
	event.preventDefault();
		var grade = document.getElementById("grade").value;
	window.location.href = "gradewisetable.jsp?grade=" + grade;
	}
	</script>

<div class="main-content-agile">
            <div class="sub-main-w3">
<form onsubmit="mainmenu()">
<div class="form-style-agile">
<select onchange="gradewise()" id="grade">
    <center>  <option value=""> SELECT THE GRADE
                 </option>
                 <option value="A">A
                 </option>
                 <option value="B">B
                 </option>
                 <option value="C">C
                 </option>
                 <option value="U">U
                 </option>
                 
                  </select></center> <br><br>

<button type="submit" class="btn btn-success" value="clear">SUBMIT </button>
&nbsp; &nbsp;
<button type="reset" class="btn btn-danger" value="clear">CLEAR </button>
</form>

</body>
</html>