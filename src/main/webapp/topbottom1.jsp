<%@ page language="java" contentType="text/html; charset=ISO-8859-1"   
   pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/bootstrap.min.css">
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
   
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-3.4.1.min.js"></script>
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
                         <h2>   <marquee>WELCOME TO GRADING SYSTEM</marquee> </h2>
                                <ul class="nav navbar-nav"> 
                                 <li> <a href="studentlogin.jsp"> &nbsp;&nbsp;Log Out</a></li>
                                     
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

            <span>O</span>ver 
               <span>A</span>ll 
            <span>S</span>tudent
            <span>R</span>esults</h1> </center>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-3.4.1.min.js"></script>
</head>
<script>
function topbottom(){
  var url = "http://localhost:9000/topbottom?";
  console.log(url);
 $.getJSON(url, function(response){
       var books = response;
  document.getElementById("tbody").innerHTML = "";
  var content = "";
  var i = 0;
  for(let us of books){
      console.log(us);
      content += "<tr>";
      content += "<td>" + ++i + "</td>";
      content += "<td>" + us.student_Name + "</td>";
      content += "<td>" + us.register_Number + "</td>";
      content += "<td>" + us.grade + "</td>";
      content += "</tr>";
  }
  console.log(content);
  document.getElementById("tbody").innerHTML =  content;
});
}
</script>
</head>
<body >
<div class="main-content-agile">
            <div class="sub-main-w3">
    
 
   <form>
     <div class="main-content-agile">
            <div class="sub-main-w3">
       <div class="container-fluid">
           <div class="row">
               <div class="col">
                  <center> </center><br>
                   <table border="1" class="table table-condensed" id="tbl">
                       <thead>
                           <tr>
                           <th>S.no</th>
                               <th>Student_Name </th>
                               <th>Register_Number</th>
                               <th>Grade</th>
                           </tr>
                       </thead>
                       <tbody id="tbody">
                       </tbody>
                   </table>
               </div>  <center> <a href="viewdetails.jsp">BACK</a></center>
           </div>
       </div>
       <script>
       topbottom();
</script></div></div>
   </form>
 
</body>
</html>