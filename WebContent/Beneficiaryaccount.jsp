<%@page import="model.Beneficiary"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Manage Account Details</title>

<script src="component/jquery-3.6.0.js"></script>
<script src="component/main.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
 
 <link rel="stylesheet" href="fonts/linearicons/style.css">

		<!-- MATERIAL DESIGN ICONIC FONT -->
		<link rel="stylesheet" href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">
		
		<!-- STYLE CSS -->
		 <link rel="stylesheet" href="Views/signupcss.css" type="text/css" media="all" />
 
</head>
<body>
<div class="wrapper">
			<div class="inner">
			 <form action="Beneficiaryaccount.jsp" id="formbeneficiary" name="formbeneficiary" method="post">
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
						
					<button id="btnSave" name="btnSave">
						<span>Save</span>
					</button>
					<br>
					<br>
					<input type="hidden" id="hidInventorIDSave" name="hidInventorIDSave" value="">
					<br>
					<br>
					
				</div> 
					
					
					</div>
				
					</div>
				
			
				
				</form>
				 	
				
				<div id="divItemsGrid" class="divItemsGrid">   
					<%    
						Beneficiary customerObj = new Beneficiary();
						out.print(customerObj.readBeneficiaries());   
					%>  
					<br>
					 <a href="Login.jsp" class="btn btn-success">Logout</a>	
				</div>
		</div>
				
</body>
</html>