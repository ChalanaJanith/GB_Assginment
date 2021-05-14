<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign up page</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

		
<script src="component/jquery-3.6.0.js"></script>
<script src="component/signupjs.js"></script>
		
		<!-- LINEARICONS -->
		<link rel="stylesheet" href="fonts/linearicons/style.css">

		<!-- MATERIAL DESIGN ICONIC FONT -->
		<link rel="stylesheet" href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">
		
		<!-- STYLE CSS -->
		 <link rel="stylesheet" href="Views/signupcss.css" type="text/css" media="all" />

</head>
<body>



<div class="wrapper">
			<div class="inner">
			 <form action="signup.jsp" id="formbeneficiary" method="post">
					<h3>Registration Form</h3>
					<div class="form-row">
						<div class="form-wrapper">
							<label for="">Name *</label>
							<input type="text" id="InventorUser" name="InventorUser" class="form-control" placeholder="Your Name">
						</div>
						<div class="form-wrapper">
							<label for="">Age *</label>
							<input type="text" id="InventorAge" name="InventorAge" class="form-control" placeholder="Age">
						</div>
					</div>
					<div class="form-row">
						<div class="form-wrapper">
							<label for="">Address *</label>
							<input type="text" id="InventorAddress" name="InventorAddress" class="form-control" placeholder="Address">
						</div>
						<div class="form-wrapper">
							<label for="">Password *</label>
							<input type="text" id="InventorPassword" name="InventorPassword" class="form-control" placeholder="Password">
						</div>
					</div>
						
						<div id="alertSuccess" class="alert alert-success"></div>
	 					<div id="alertError" class="alert alert-danger"></div>
						
					<button id="btnsave" data-text="Register">
						<span>sign up</span>
					</button>
					<input type="hidden" id="hidInventorIDSave" name="hidInventorIDSave" value="">
					
					
					</div>
				
					</div>
				
				</form> 		
		

</body>
</html>