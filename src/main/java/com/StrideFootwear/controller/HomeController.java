package com.StrideFootwear.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {

	@RequestMapping("/")	
	public String gotoHome() {
		return "index";
	}

	@RequestMapping("/product")
	public String gotoproduct() {
		return "product";
	}
	
	@RequestMapping("/contact")
	public String gotocontact() {
		return "contact";
	}
		
		@RequestMapping("/login")
		public String gotologin() {
			return "login";
			
		}
		
		@RequestMapping("/loginerror")
		public String LoginError(@RequestParam(value="error",required=false) String error, Model model) {
			model.addAttribute("error", "Invalid username and password");
			return "login";
		}

		@RequestMapping(value = "/Logout", method = RequestMethod.GET)
		public String logoutPage(HttpServletRequest request, HttpServletResponse response,@RequestParam(value="logout",required=false)String logout,Model model) {
			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			if (auth != null) {
				new SecurityContextLogoutHandler().logout(request, response, auth);
			}
			model.addAttribute("logout","logout successful");
			return "login";// You can redirect wherever you want,
											// but generally it's a good practice to
											// show login screen again.
		}


}