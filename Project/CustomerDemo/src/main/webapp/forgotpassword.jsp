<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Reset Password</title>

</head>
<body>

<div class = "head">
<p id="logo" align = "center"> Paradise <span class = "logonm"> Beach Resort </span> </p> <img src = "images/logo.jpg" class = "logo"> 

	<div class = "topnav"> 
		<a class = "active" href = "home.html"> Home </a>
		<a class = "active" href = "#"> News </a>
		<a class = "active" href = "#"> About </a>
		<a class = "active" href = "#"> Rooms </a>
		<a class = "active" href = "#"> Feedback </a>
		<a class = "active" href = "#"> Blog </a>
		<a class = "active" href = "#"> Contact </a>
		<a class = "active" id = "log" href = "login.jsp"> Login </a>
	</div>
	
	
</div>
	<div class = "center" align = "center">
	<br><br>
	<h2 align = "center"> <u>  Reset Password </u> </h2> <br><br>
		<form action="reset" method="POST" onsubmit = "checkresetPassword()">
			<input type="text" name="email" id="email" placeholder = "Enter your E-mail" required> <br><br><br>

			<input type = "password" name = "newpwd" id = "newpwd" pattern = "(?=.*[A-Z])(?=.*[a-z])(?=.*\d).{8,20}" title = "Must contain at least one number , one uppercase and lowercase letter, and at least 8 or more characters" placeholder = "Create new password" required ><br>
			<br> <br> 

			<input type = "password" name = "cnewpwd" id = "cnewpwd" placeholder = "Confirm new password" required> <br> <br> <br> <br> 
			
			<div align = "center">
			<input type="submit" name="submit" value="Reset my Password"> <br><br>
			<hr width = "75%">
			<br>
			<p class="text"> <b> Not Account Yet ?  <span> <a href="customerinsert.jsp" class="text1"> Register </a> </span> now </b> </p>
			</div>
		</form>
		</div>
		<br>
		
</body>

<footer>
<br>
	<div class = "icon">
		<p class = "p3">Follow Us !</p>
		<a href = "#"><img src = "images/facebook1.png" class = "img"> </a>
		<a href = "#"><img src = "images/instagram.png" class = "img"> </a>
		<a href = "#"><img src = "images/twitter.png" class = "img"></a>
		<a href = "#"><img src = "images/linkedin.png" class = "img"></a>
	</div>
	<div class = "contact">
		<p class = "c1"> Contact Us !</p> <p class = "c2"> +94 011 2 345 678 <br> paradisebeachresort@company.com <br> www.paradisebeachresort.lk </p>
	</div>
	<h3> Copyright &copy; 2022 Paradise Beach Resort. All right reserved </h3><br><br>
</footer>

<script>
function checkresetPassword()
	{
		var newpassword = document.getElementById("newpwd").value;
		var confirmpassword = document.getElementById("cnewpwd").value; 
		
		if(newpassword == confirmpassword)
		{
			alert("Password Reset Successfully..!!");
			return true;
		}	
		else
		{
			alert("Password Mismatch");
			
		}	
	}

</script>

	<style>
		.logo{
			width:20%;
			height:60%;
			border-radius:50%;
			top:40px;
			position:absolute;
			left:5%;
		}
		
		.logonm{
			top:100px;
			font-size:70px;
			font-family:Freestyle Script;
			left:50%;
			position:absolute;
		}
		
		#logo{
			top:-60px;
			font-size:90px;
			transform:translate(-50% -50%);
			font-family:Jokerman;
			position:relative;
		}
	
		body{
			background-image:url("images/image1.jpg");
			background-position:center;
			background-size:cover;
			width:400px;
			height:1500px;
		}
		
		.center {
			box-shadow:0 5px 30px black;
			width:500px;
			height:575px;
			background-color:rgba(200 , 200 , 200 , 0.5);
			color:#000137;
			top:125%;
			left:50%;
			position:absolute;
			transform:translate(-50% , -50%);
			box-sizing:border-box;
		
		}
		
		#message {
		  display:none;
		  background: #f1f1f1;
		  color: #000;
		  position: relative;
		  padding: 20px;
		  margin-top: 10px;
		  width:75%;
		}
		
		#message li {
		  padding: 10px 35px;
		  font-size: 18px;
		}
		
		.valid {
		  color: green;
		}
		
		.valid:before .invalid:before {
		  position: relative;
		  left: -35px;
		}
		
		.invalid {
		  color: red;
		}
		
		.text {
			font-size:20px;
			color:black;
			display:inline-block;
		}
			
		.text1 {
			font-size:20px;
			color:#02023f;
		}
		
		label{
			font-size:20px;
			font-weight:bold;
			grid-row:auto;
		}
		
		input[type = "text"] , [type = "password"]
		{
			width : 40% ;
			padding: 6px ;
			float:center;
			font-size:14px;
			border:2px solid;
			border-radius:16px;
		 	text-align: center;
		 	border-style:none;
		}
		
		
		input[type = "submit"] {
		  background-color: #070b24;
		  color: white;
		  padding: 10px 20px;
		  margin: 8px 0;
		  border: none;
		  cursor: pointer;
		  font-size:16px;
		  border-radius:12px;
		  width: 40%;
		  font-weight:bold;
		  opacity:0.8;
		
		}
		
				
		a{
			text-decoration:none;
			color:white;
			font-size:18px;
			padding: 0px 3px;
		}
		
		ol{
			font-size:18px;
			line-height: 1.5;
		}
		
		.h2 , ol , .text3{
			font-family: calibri;
		}
		
		.text3 {
			font-size:20px
		}
		
				
		.topnav{
			background-color:#333;
			overflow:hidden;
			width:100%;
			
		}
		
		.topnav a{
			float:left;
			color:#f2f2f2;
			text-align:center;
			padding:14px 18px;
			text-decoration:none;
			font-size:16px;
			font-family:calibri;
		}
		
		.topnav a:hover{
			background-color:#ddd;
			color:black;
		
		}
		
		#log{
			float:right;
			background-color:#090825;
			color:white;
		}
		
		.head{
			background-color:#090825;
			background:rgba(100 , 100 , 100 , 0.7);
			position: absolute;
			top:0;
		  	left:0;
		  	right:0;
		  	width:100%;
		  	height:auto;
		  	padding-top:40px;
		  	color:#fff;
		 
		}
		
		
		footer {
			  position: absolute;
			  right:0;
			  left:0;
			  bottom: -900px;
			  height:60%;
			  width: 100%;
			  background: #111;
			  color:#fff;
			  background:rgba(0 , 0 , 0 , 0.9);
		
			}
		
		footer  h3{
		   color: grey;
		   text-align:left;
		   float:right;
		   font-family:calibri;
		   padding:50px;
		}

		
		.body{
			background-color:#333;
			overflow:hidden;
			width:50%;
			right:20px;
		}
		
		.body a{
			float:left;
			color:#f2f2f2;
			text-align:center;
			padding:14px 20px;
			text-decoration:none;
			font-size:18px;
			font-family:calibri;
		}
		
		.body a:hover{
			background-color:#ddd;
			color:black;
		
		}
		
		#aval{
			background-color:#090825;
			color:white;
			float:right;
		}
		
		.p2{
			font-family:sans-serif;
			color:#FFFDE7;
			font-size :20px;
		}
		
		.p1{
			 font-size :60px;
			 color:#FFFDDD;
			 font-weight:bold;
		}
		
		.img{
			width:10%;
		}

		.icon{
			float:right;
			
		}
		
		.p3{
			padding:0px 40px;
			font-size:22px;
			font-weight:bold;
		}
		
		.contact{
			 padding:10px 10px 10px 50px;
		}
		
		.c1{
			font-size:22px;
			font-weight:bold;
		}
		
		.c2{
			font-size:20px;
			line-height:1.5;
			font-family:calibri;
		}
		
		


	</style>
</html>