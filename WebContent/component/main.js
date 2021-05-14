$(document).ready(function() 
{  
	if ($("#alertSuccess").text().trim() == "")  
	{   
		$("#alertSuccess").hide();  
	} 
	$("#alertError").hide(); 
}); 

//SAVE ============================================ 
$(document).on("click", "#btnSave", function(event) 
{  
	// Clear alerts---------------------  
	$("#alertSuccess").text("");  
	$("#alertSuccess").hide();  
	$("#alertError").text("");  
	$("#alertError").hide(); 

	// Form validation-------------------  
	var status = validateCustomerForm();  
	if (status != true)  
	{   
		$("#alertError").text(status);   
		$("#alertError").show();   
		return;  
	} 

	// If valid------------------------  
	var t = ($("#hidInventorIDSave").val() == "") ? "POST" : "PUT";
	
	$.ajax(
	{
		url : "BeneficiaryApi",
		type : t,
		data : $("#formbeneficiary").serialize(),
		dataType : "text",
		complete : function(response, status)
		{
			onCustomerSaveComplete(response.responseText, status);
		}
	});
}); 

function onCustomerSaveComplete(response, status){
	if(status == "success")
	{
		var resultSet = JSON.parse(response);
			
		if(resultSet.status.trim() == "success")
		{
			$("#alertSuccess").text("Successfully Saved.");
			$("#alertSuccess").show();
					
			$("#divItemsGrid").html(resultSet.data);
	
		}else if(resultSet.status.trim() == "error"){
			$("#alertError").text(resultSet.data);
			$("#alertError").show();
		}
	}else if(status == "error"){
		$("#alertError").text("Error While Saving.");
		$("#slertError").show();
	}else{
		$("#alertError").text("Unknown Error while Saving.");
		$("#alertError").show();
	}
	$("#hidInventorIDSave").val("");
	$("#formbeneficiary")[0].reset();
}

//UPDATE========================================== 
$(document).on("click", ".btnUpdate", function(event) 
		{     
	$("#hidInventorIDSave").val($(this).closest("tr").find('#hidbenIDUpdate').val());     
	$("#InventorUser").val($(this).closest("tr").find('td:eq(0)').text());    
	$("#InventorAge").val($(this).closest("tr").find('td:eq(1)').text());     
	$("#InventorAddress").val($(this).closest("tr").find('td:eq(2)').text());     
	$("#InventorPassword").val($(this).closest("tr").find('td:eq(3)').text()); 
	

});


//Remove Operation
$(document).on("click", ".btnRemove", function(event){
	$.ajax(
	{
		url : "BeneficiaryApi",
		type : "DELETE",
		data : "InventorID=" + $(this).data("inventorid"),
		dataType : "text",
		complete : function(response, status)
		{
			onCustomerDeletedComplete(response.responseText, status);
		}
	});
});

function onCustomerDeletedComplete(response, status)
{
	if(status == "success")
	{
		var resultSet = JSON.parse(response);
			
		if(resultSet.status.trim() == "success")
		{
			$("#alertSuccess").text("Successfully Deleted.");
			$("#alertSuccess").show();
					
			$("#divItemsGrid").html(resultSet.data);
	
		}else if(resultSet.status.trim() == "error"){
			$("#alertError").text(resultSet.data);
			$("#alertError").show();
		}
	}else if(status == "error"){
		$("#alertError").text("Error While Deleting.");
		$("#alertError").show();
	}else{
		$("#alertError").text("Unknown Error While Deleting.");
		$("#alertError").show();
	}
}

//CLIENTMODEL
function validateCustomerForm() {  
	// NAME  
	if ($("#InventorUser").val().trim() == "")  {   
		return "Insert username.";  
		
	} 
	
	 // Email 
	if ($("#InventorAge").val().trim() == "")  {   
		return "Insert Age.";  
	} 
	
	
	// NIC  
	if ($("#InventorAddress").val().trim() == "")  {   
		return "Insert Address."; 
		 
	}
	 
	 // is numerical value  
	if ($("#InventorPassword").val().trim() == "")  {   
		return "Insert password."; 
		 
	}
	 
	
		

	 
	 return true; 
	 
}
