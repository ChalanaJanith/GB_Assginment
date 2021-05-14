package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import org.json.simple.JSONArray;

public class Beneficiary {
	
	//This Method provides a proper Database Connection
	
	public Connection connect() {
		Connection con = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");

			 con= DriverManager.getConnection("jdbc:mysql://localhost:3306/beneficarydb","root", "chalana1@");
			 
			// For testing
			System.out.print("Successfully connected");
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}

		return con;
	}

	

	// Insert details
		public String insertBeneficiary(String username, String age , String address, String password) {
			String output = "";

			try {
				Connection con = connect();

				if (con == null) {
					return "Error while connecting to the database";
				}

				// create a prepared statement
				String query =  " insert into beneficiaries (`InventorID`,`InventorUser`,`InventorAge`,`InventorAddress`,`InventorPassword`)"
						+ " values (?, ?, ?, ?, ?)";

				PreparedStatement preparedStmt = con.prepareStatement(query);

				// binding values
				preparedStmt.setInt(1, 0);
				preparedStmt.setString(2, username);
				preparedStmt.setString(3, age);
				preparedStmt.setString(4, address);
				preparedStmt.setString(5, password);

				// execute the statement
				preparedStmt.execute();
				con.close();

				// Create JSON Object to show successful msg.
				output = "Inserted successfully";
			} catch (Exception e) {
				// Create JSON Object to show Error msg.
				output = "{\"status\":\"error\", \"data\": \"Error while Inserting Customer.\"}";
				System.err.println(e.getMessage());
			}

			return output;
		}

		
		
		// retrieve method to 
		public String readBeneficiaries()
		 {
			String output = "";
		 try
		 {
			 Connection con = connect();
			 if (con == null)
			 {
				 return "Error while connecting to the database for reading."; 
			 }
			 // Prepare the html table to be displayed
			 
			 output = "<table border='1'><tr><th>Beneficiary username</th><th>Beneficiary age</th>" +
			 "<th>Beneficiary address</th>" +
			 "<th>Beneficiary password</th>" +
			 "<th>Update</th><th>Remove</th></tr>";

			 String query = "select * from beneficiaries";
			 
			 Statement stmt = con.createStatement();
			 ResultSet rs = stmt.executeQuery(query);
			 
			 // iterate through the rows in the result set
			 while (rs.next())
			 {
			 String InventorID = Integer.toString(rs.getInt("InventorID"));
			 String InventorUser = rs.getString("InventorUser");
			 String InventorAge =rs.getString("InventorAge");
			 String InventorAddress =  rs.getString("InventorAddress");
			 String InventorPassword = rs.getString("InventorPassword");
		 
		 
			 // Add into the html table
			 
			 output += "<tr><td><input id='hidbenIDUpdate' name='hidbenIDUpdate' type='hidden' value='"
						+ InventorID + "'>" + InventorUser + "</td>";
			 
			
			 output += "<td>" + InventorAge + "</td>";
			 output += "<td>" + InventorAddress + "</td>";
			 output += "<td>" + InventorPassword + "</td>";
		 
			 // buttons
			 
			 output += "<td><input name='btnUpdate' type='button' value='Update' class='btnUpdate btn btn-secondary'></td>"
						+ "<td><input name='btnRemove' type='button' value='Remove' class='btnRemove btn btn-danger' data-InventorID='"
						+ InventorID + "'>" + "</td></tr>";
			 }
			 con.close();
		 
			 
			 // Complete the html table
			 
			 output += "</table>";
			 
			 
			 }
		 
			 catch (Exception e)
		 
			 {
				 
			 output = "Error while reading the items.";
			 System.err.println(e.getMessage());
			 
			 }
		 
			 return output;
			 
			 } 
		 
		//update beneficiary details...........................
			
			public String updateBeneficiaries(String id,String username, String age , String address, String password)
			
			 {
					 String output = "";
					 
					 try
					 {
						 Connection con = connect();
					 if (con == null)
						 {
							 return "Error while connecting to the database for updating."; 
						 }
					 
					 
					 // create a prepared statement
					 
					 
					 String query = " update beneficiaries set InventorUser= ? , InventorAge = ? , InventorAddress = ? , InventorPassword = ?  where InventorID = ? ";
						
					 PreparedStatement preparedStmt = con.prepareStatement(query);
					 
					 // binding values
					 preparedStmt.setString(1, username);
					 preparedStmt.setString(2,age);
					 preparedStmt.setString(3, address);
					 preparedStmt.setString(4, password);
					 preparedStmt.setInt(5, Integer.parseInt(id));
					 
					 // execute the statement
					 preparedStmt.execute();
					 con.close();
					 output = "Updated successfully";
					 
					 }
					 catch (Exception e)
					 {
						 
						 output = "Error while updating the beneficiary detail.";
						 System.err.println(e.getMessage());
					 }
					 return output;
			 }
			
			
		
			// method to deleting beneficiary details
			
			public String deleteBeneficiaries(String InventorID)
			 {
				 String output = "";
				 try
				 {
					 Connection con = connect();
					 
					 if (con == null) 
					 {
						 return "Error while connecting to the database for deleting."; 
					 }
					 
					 // create a prepared statement
						 
					 String query = "delete from beneficiaries where InventorID=?";
					 
					 PreparedStatement preparedStmt = con.prepareStatement(query);
					 
					 // binding values
					
					 preparedStmt.setString(1, InventorID);
					 
					 // execute the statement
					 preparedStmt.execute();
					 con.close();
					 output = "Deleted successfully";
					 
				 }
				 catch (Exception e)
				 {
					 
				 output = "Error while deleting the Beneficiary Details.";
				 System.err.println(e.getMessage());
				 
				 }
				 
				 return output;
			 }
			
	
}
