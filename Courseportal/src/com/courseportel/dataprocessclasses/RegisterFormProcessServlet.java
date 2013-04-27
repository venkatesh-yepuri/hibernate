package com.courseportel.dataprocessclasses;

import java.io.PrintWriter;
import java.io.IOException;

import javax.print.attribute.standard.RequestingUserName;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.courseportel.dtoclasses.UserRegistrationFormBean;
import com.courseportel.daoclasses.RegisterUserDataCrud;

public class RegisterFormProcessServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void init() {
		System.out.println("from init method");
	}

	public RegisterFormProcessServlet() {
	}

	protected void processRequest(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		try {
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			System.out.println("<----------------------------------------from process request process------------------------->");
			UserRegistrationFormBean urfbObject = new UserRegistrationFormBean();
			// UserDataAccessingObject userDAO=new registrationservlet();

			urfbObject.setFirstname(request.getParameter("firstname"));
			urfbObject.setLastname(request.getParameter("lastname"));
			urfbObject.setEmail(request.getParameter("email"));
			urfbObject.setDesiredusername(request.getParameter("desiredusername"));
			urfbObject.setPassword(request.getParameter("password"));
			urfbObject.setConfpassword(request.getParameter("congpassword"));
			urfbObject.setAddress(request.getParameter("address"));
			urfbObject.setCountry(request.getParameter("contry"));
			urfbObject.setState(request.getParameter("state"));
			urfbObject.setDate(request.getParameter("date"));
			urfbObject.setMobilenumber(request.getParameter("mobilenumber"));
			urfbObject.setFaxnumber(request.getParameter("faxnumber"));
			urfbObject.setQualification(request.getParameter("qualification"));
			urfbObject.setRole(request.getParameter("role"));
			urfbObject.setSkillsummary(request.getParameter("skillsummary"));
			urfbObject.setStatus(request.getParameter("status"));
			System.out.println("from RegisterFormProcessServlet()");
			RegisterUserDataCrud rudc=new RegisterUserDataCrud();  
			rudc.save(urfbObject);
			System.out.println("hello form ");
			

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	public String getServletInfo() {
		return "Short description";
	}

}
