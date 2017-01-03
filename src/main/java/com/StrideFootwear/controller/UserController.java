package com.StrideFootwear.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.stridefootwear.ecommercebackend.dao.UserDAO;
import com.stridefootwear.ecommercebackend.model.BillingAddress;
import com.stridefootwear.ecommercebackend.model.ShippingAddress;
import com.stridefootwear.ecommercebackend.model.ShoppingCart;
import com.stridefootwear.ecommercebackend.model.User;

@Controller

public class UserController {
	@Autowired
	UserDAO udao;

	@RequestMapping("/Register")
	public ModelAndView register() {
		BillingAddress billingAddress= new BillingAddress();
		ShippingAddress shippingAddress = new ShippingAddress();
		ShoppingCart shoppingCart=new ShoppingCart();
		User u = new User();
	    u.setBillingAddress(billingAddress);
	    u.setShippingAddress(shippingAddress);
	    u.setShoppingCart(shoppingCart);
		ModelAndView model = new ModelAndView("register");
		model.addObject("Userdata", u);
		return model;
	}

	@RequestMapping(value = "/saveuser", method = RequestMethod.POST)
	public String adduser(@Valid @ModelAttribute("Userdata") User reg, BindingResult result) {
		udao.save(reg);
		return "login";

	}

	@RequestMapping(value = "/listuser")
	public String ViewProduct(Model model) {
		model.addAttribute("userList", this.udao.list());
		return "userlist";
	}

	@RequestMapping("/removeuser/{UserID}")
	public String deleteUser(@PathVariable("UserID") String id, Model model) {
		this.udao.delete(id);
		return "redirect:/listuser";
	}
}
