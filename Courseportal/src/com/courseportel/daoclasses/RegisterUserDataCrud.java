package com.courseportel.daoclasses;

import com.courseportel.dtoclasses.UserRegistrationFormBean;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.Statement;


public class RegisterUserDataCrud {
	public RegisterUserDataCrud() {

	}

	public static boolean save(UserRegistrationFormBean obj) throws Exception {
		System.out.println("----------------------from crud operation-----------------------------------");
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/courseportal", "root","root");
		Statement stmt = con.createStatement();
		System.out.println(stmt);
		System.out.println(stmt+"-------------------------------------------------");
		return true;
	}
}
