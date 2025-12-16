package com.auth.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/login")
public class LoginServlet extends HttpServlet {

	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		
		try {
			
Class.forName("com.mysql.cj.jdbc.Driver");
			
			String url = "jdbc:mysql://localhost:3306/userauthdb";
			String user = "root";
			String pass = "Amitkumar@789";
			Connection con= DriverManager.getConnection(url,user,pass);
			
			PreparedStatement ps = con.prepareStatement("select * from users where email = ? and password = ?");
			
			ps.setString(1, email);
			ps.setString(2, password);
			System.out.println("I am running");
			ResultSet rs = ps.executeQuery();
			
			if(rs.next()) {
				HttpSession ses = req.getSession();
				ses.setAttribute("user", rs.getString("name"));
				res.sendRedirect("dashboard.jsp");
			}else {
				res.sendRedirect("login.jsp");
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
}
