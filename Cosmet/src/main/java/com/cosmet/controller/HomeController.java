package com.cosmet.controller;


import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {

	public HomeController() {
		//super();
		// TODO Auto-generated constructor stub
		System.out.println("inside controller");
	}
@RequestMapping("/")
	public String gotoHome()
	{
		return "index";
	}

@RequestMapping("/index")
public String gotoHome1()
{
	return "index";
}

@RequestMapping("/Aboutus")
public String gotoHome2()
{
	return "Aboutus";
}

@RequestMapping("/Register")
public String gotoHome3()
{
	return "Register";
}

@RequestMapping("/Signin")
public String login(@RequestParam(value="error",required=false) String error,
		@RequestParam(value="logout",required=false) String logout,
		Model model){
	if(error!=null)
		model.addAttribute("error","Invalid Username and Password.. Please enter valid username and password");
	if(logout!=null)
		model.addAttribute("logout","Loggedout successfully..");
	return "Signin";
}

@RequestMapping(value="LogCheck",method=RequestMethod.POST)


public void validateLogin(HttpServletRequest request,HttpServletRequest response,ServletRequest req,ServletResponse res)throws ServletException,IOException
{
	String u=request.getParameter("username");
	String p=request.getParameter("password");
	LoginCredential obj=new LoginCredential();
	obj.setUname(u);
	obj.setPasswd(p);
    if(obj.checklogin())
    {
    	RequestDispatcher dispatch=request.getRequestDispatcher("Header");
    	dispatch.forward(req,res);
    }
    else
    {
    	RequestDispatcher dispatch=request.getRequestDispatcher("Aboutus");
    	dispatch.forward(req,res);
    }
	}
}


