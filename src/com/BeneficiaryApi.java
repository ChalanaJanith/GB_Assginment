package com;

import java.io.IOException;


import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;

import model.Beneficiary;

/**
 * Servlet implementation class BeneficiaryApi
 */
@WebServlet("/BeneficiaryApi")
public class BeneficiaryApi extends HttpServlet {
	

  private static final long serialVersionUID = 1L;
  
  Beneficiary BeneficiaryObj = new Beneficiary();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
  
  Beneficiary benObj = new Beneficiary();
  
    public BeneficiaryApi() {
        super();
       
    }

    //----------------
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	


	
	
	
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		String result = BeneficiaryObj.insertBeneficiary(request.getParameter("InventorUser"),
				request.getParameter("InventorAge"), request.getParameter("InventorAddress"),
				request.getParameter("InventorPassword"));

		response.getWriter().write(result);
		
		
		
		
		
		
		
		
	}
	
	
	
	private Map<String, String> getParasMap(HttpServletRequest request) {
		Map<String, String> map = new HashMap<String, String>();
		try {
			Scanner scanner = new Scanner(request.getInputStream(), "UTF-8");
			String queryString = scanner.hasNext() ? scanner.useDelimiter("\\A").next() : "";
			scanner.close();

			String[] params = queryString.split("&");
			for (String param : params) {
				String[] p = param.split("=");
				map.put(p[0], p[1]);
			}

		} catch (Exception e) {

		}
		return map;
	}
	
	
	protected void doPut(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Map<String, String> param = getParasMap(request);

		String result = BeneficiaryObj.updateBeneficiaries(param.get("hidInventorIDSave").toString(),
				param.get("InventorUser").toString().toString().replace("%40", "@"),
				param.get("InventorAge").toString().toString().replace("+", " "),
				param.get("InventorAddress").toString().toString().replace("+", " "),
				param.get("InventorPassword").toString());

		response.getWriter().write(result);
	}

	
	protected void doDelete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Map<String, String> param = getParasMap(request);

		String result = BeneficiaryObj.deleteBeneficiaries(param.get("InventorID").toString());

		response.getWriter().write(result);
	}


}
