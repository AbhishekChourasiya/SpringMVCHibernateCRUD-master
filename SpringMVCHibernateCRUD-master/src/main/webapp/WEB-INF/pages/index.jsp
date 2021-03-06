<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Template by Quackit.com -->
<!-- Images by various sources under the Creative Commons CC0 license and/or the Creative Commons Zero license. 
Although you can use them, for a more unique website, replace these images with your own. -->
<html lang="en">

<head>
<style>.myButton {
	-moz-box-shadow:inset 0px 1px 0px 0px #cf866c;
	-webkit-box-shadow:inset 0px 1px 0px 0px #cf866c;
	box-shadow:inset 0px 1px 0px 0px #cf866c;
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #d0451b), color-stop(1, #bc3315));
	background:-moz-linear-gradient(top, #d0451b 5%, #bc3315 100%);
	background:-webkit-linear-gradient(top, #d0451b 5%, #bc3315 100%);
	background:-o-linear-gradient(top, #d0451b 5%, #bc3315 100%);
	background:-ms-linear-gradient(top, #d0451b 5%, #bc3315 100%);
	background:linear-gradient(to bottom, #d0451b 5%, #bc3315 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#d0451b', endColorstr='#bc3315',GradientType=0);
	background-color:#d0451b;
	-moz-border-radius:3px;
	-webkit-border-radius:3px;
	border-radius:3px;
	border:1px solid #942911;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:13px;
	text-align:right;
	text-decoration:none;
	text-shadow:0px 1px 0px #854629;
}
.myButton:hover {
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #bc3315), color-stop(1, #d0451b));
	background:-moz-linear-gradient(top, #bc3315 5%, #d0451b 100%);
	background:-webkit-linear-gradient(top, #bc3315 5%, #d0451b 100%);
	background:-o-linear-gradient(top, #bc3315 5%, #d0451b 100%);
	background:-ms-linear-gradient(top, #bc3315 5%, #d0451b 100%);
	background:linear-gradient(to bottom, #bc3315 5%, #d0451b 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#bc3315', endColorstr='#d0451b',GradientType=0);
	background-color:#bc3315;
}
.myButton:active {
	position:relative;
	top:1px;
}

</style>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<title>Human Resource management System</title>

<!-- Bootstrap Core CSS -->


<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">

<!-- Custom CSS: You can use this stylesheet to override any Bootstrap styles and/or apply your own styles -->
<link href="<c:url value="/resources/css/custom.css" />"
	rel="stylesheet">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

<!-- Custom Fonts from Google -->
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
	rel='stylesheet' type='text/css'>

</head>

<body>

	<!-- Navigation -->
	<nav id="siteNav" class="navbar navbar-default navbar-fixed-top"
		role="navigation">
	<div class="container">
		<!-- Logo and responsive toggle -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#navbar">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#"> <span
				class="glyphicon glyphicon-fire"></span> HRM System
			</a>
		</div>
		<!-- Navbar links -->
		<div class="collapse navbar-collapse" id="navbar">
			<ul class="nav navbar-nav navbar-right">
				<li class="active"><a href="#">home</a></li>

				<li class="dropdown"><a href="/HRM/home"
					class="dropdown-toggle" data-toggle="dropdown" role="button"
					aria-haspopup="true" aria-expanded="false">Add <span
						class="caret"></span></a>
					<ul class="dropdown-menu" aria-labelledby="about-us">
						<li><a href="/HRM/newEmployee">Add Employee</a></li>
						<li><a href="/HRM/newProject">Add Project</a></li>
						<li><a href="/HRM/newSalary">Add salary report</a></li>
					</ul></li>
					
					
					<li class="dropdown"><a href="/HRM/home"
					class="dropdown-toggle" data-toggle="dropdown" role="button"
					aria-haspopup="true" aria-expanded="false">View <span
						class="caret"></span></a>
					<ul class="dropdown-menu" aria-labelledby="about-us">
						<li><a href="/HRM/home">All Employees</a></li>
						<li><a href="/HRM/projects">All Projects</a></li>
						<li><a href="/HRM/salary">All Salary reports</a></li>
					</ul></li>
					
					
				<li><a href="#">Contact</a></li>
				<li>
					<div style="margin-top: 14px;">
						<form action="getEmployee" method="GET" modelAttribute="employee">
							<input type="text" placeholder="Search by empid.." path="search"
								name="search" id="search"> <input type="submit"
								value="search" />
						</form>
					</div>
				</li>
				
				<li  style="margin-left: 24px;">
				 <a href="/HRM/" class="myButton">Logout  </a>


				
				</li>
			</ul>

		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container --> </nav>

	<!-- Header -->
	<header>
	<div class="header-content">
		<div class="header-content-inner">
			<h1>Human Resource management</h1>
			<p>Objectively innovate empowered manufactured products whereas
				parallel platforms.</p>
			<a href="/HRM/home" class="btn btn-primary btn-lg">Engage Now</a>
		</div>
	</div>
	</header>

	<!-- Intro Section -->
	<section class="intro">
	<div class="container">
		<div class="row">
			<div class="col-lg-8 col-lg-offset-2">
				<span class="glyphicon glyphicon-apple" style="font-size: 60px"></span>
				<h2 class="section-heading">Completely synergize resource
					taxing relationships</h2>
				<p class="text-light">Professionally cultivate one-to-one
					customer service with robust ideas. Dynamically innovate
					resource-leveling customer service for state of the art customer
					service.</p>
			</div>
		</div>
	</div>
	</section>

	<!-- Content 1 -->
	<section class="content">
	<div class="container">
		<div class="row">
			 
			<div class="col-sm-6">
				<h2 class="section-header">Best in Class</h2>
				<p class="lead text-muted">Holisticly predominate extensible
					testing procedures for reliable supply chains. Dynamically innovate
					resource-leveling customer service for state of the art customer
					service.</p>
				<a href="#" class="btn btn-primary btn-lg">Classify It</a>
			</div>

		</div>
	</div>
	</section>

	<!-- Content 2 -->
	<section class="content content-2">
	<div class="container">
		<div class="row">
			<div class="col-sm-6">
				<h2 class="section-header">Superior Quality</h2>
				<p class="lead text-light">Holisticly predominate extensible
					testing procedures for reliable supply chains. Dynamically innovate
					resource-leveling customer service for state of the art customer
					service.</p>
				<a href="#" class="btn btn-default btn-lg">Test It</a>
			</div>
			 

		</div>
	</div>
	</section>

	<!-- Promos -->
	<div class="container-fluid">
		<div class="row promo">
			<a href="#">
				<div class="col-md-4 promo-item item-1">
					<h3>Unleash</h3>
				</div>
			</a> <a href="#">
				<div class="col-md-4 promo-item item-2">
					<h3>Synergize</h3>
				</div>
			</a> <a href="#">
				<div class="col-md-4 promo-item item-3">
					<h3>Procrastinate</h3>
				</div>
			</a>
		</div>
	</div>
	<!-- /.container-fluid -->

	<!-- Content 3 -->
	<section class="content content-3">
	<div class="container">
		<h2 class="section-header">
			<span class="glyphicon glyphicon-pushpin text-primary"></span><br>
			Sanity Check
		</h2>
		<p class="lead text-muted">Holisticly predominate extensible
			testing procedures for reliable supply chains. Dynamically innovate
			resource-leveling customer service for state of the art customer
			service.</p>
		<a href="#" class="btn btn-primary btn-lg">Check Now</a>
	</div>
	</div>
	</section>

	<!-- Footer -->
	<footer class="page-footer"> <!-- Contact Us -->
	<div class="contact">
		<div class="container">
			<h2 class="section-heading">Contact Us</h2>
			<p>
				<span class="glyphicon glyphicon-earphone"></span><br> +1(23)
				456 7890
			</p>
			<p>
				<span class="glyphicon glyphicon-envelope"></span><br>
				info@example.com
			</p>
		</div>
	</div>

	<!-- Copyright etc -->
	<div class="small-print">
		<div class="container">
			<p>Copyright &copy; NITK 2018</p>
		</div>
	</div>

	</footer>

	<!-- jQuery -->
	<script src="<c:url value="/resources/js/jquery-1.11.3.min.js" />"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>

	<!-- Plugin JavaScript -->
	<script src="<c:url value="/resources/js/jquery.easing.min.js" />"></script>

	<!-- Custom Javascript -->
	<script src="<c:url value="/resources/js/custom.js" />"></script>

</body>

</html>
