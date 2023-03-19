<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Profile</title>
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
		
	</div>
	
	
</div>

	
	<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String nic = request.getParameter("nic");
		String username = request.getParameter("uname");
	%>
	<div class = "center" > <br>
	<h2 align = "center"> <u> Edit Profile </u> </h2> <br><br>
	<form action = "update" method = "post">
		Customer ID <input type = "text" name = "cid" value = "<%= id%>" readonly> <br><br><br>
		Customer Name <input type = "text" name = "name" value = "<%= name%>"> <br><br><br>
		E-mail <input type = "text" name = "email" value = "<%= email%>"> <br><br><br>
		Phone Number <input type = "text" name = "phone" value = "<%= phone%>"> <br><br><br>
		NIC <input type = "text" name = "nic" value = "<%= nic%>" readonly> <br><br><br>
		User Name <input type = "text" name = "uname" value = "<%= username%>"> <br><br><br>
		<div align = "center" >
		<input type = "submit" name = "submit" value = "Update my Profile">
		</div>
	</form>
	</div>
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
			height:1600px;
		}
		
		.center {
			box-shadow:0 5px 30px black;
			width:550px;
			height:675px;
			background-color:rgba(200 , 200 , 200 , 0.5);
			color:#000137;
			top:130%;
			left:50%;
			position:absolute;
			transform:translate(-50% , -50%);
			box-sizing:border-box;
			font-size:20px;
			font-weight:bold;
			padding:0px 50px;
		
		}
		label{
			font-size:20px;
			font-weight:bold;
			grid-row:auto;
		}
		
		input[type = "text"] , [type = "password"]
		{
			width : 50% ;
			padding: 7px ;
			float:center;
			font-size:15px;
			border:2px solid;
			border-radius:16px;
		 	text-align: center;
		 	border-style:none;
		 	font-famity:calibri;
		 	backgrount-color:transparent;
		 	color:black;
		 	float:right;
		}
		
		
		input[type = "submit"] {
		  background-color: #070b24;
		  color: white;
		  padding: 10px 20px;
		  margin: 8px 0;
		  border: none;
		  cursor: pointer;
		  font-size:16px;
		  border-radius:8px;
		  width: 45%;
		  font-weight:bold;
		  opacity:0.8;
		
		}
		
		.text {
			font-size:20px;
			color:black;
			display:inline-block;
			
		}
			
		
		a{
			text-decoration:none;
			color:white;
			font-size:18px;
			padding: 0px 3px;
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
			  bottom: -1000px;
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