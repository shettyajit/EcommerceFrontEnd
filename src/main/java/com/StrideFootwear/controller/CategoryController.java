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

import com.stridefootwear.ecommercebackend.dao.CategoryDAO;
import com.stridefootwear.ecommercebackend.model.Category;


@Controller
public class CategoryController {

	@Autowired
	CategoryDAO cdao;

	@RequestMapping("/category")
	public ModelAndView category() {
		Category c = new Category();
		ModelAndView model = new ModelAndView("category");
		model.addObject("Catgdata", c);
		return model;
	}

	@RequestMapping(value = "/addcatg", method = RequestMethod.POST)
	public String addcatg(@Valid @ModelAttribute("Catgdata") Category reg, BindingResult result) {
		cdao.save(reg);
		return "redirect:/listcategory";

	}
	@RequestMapping(value = "/listcategory")
	public String ViewCategory(Model model)
	{
	    model.addAttribute("categoryList", this.cdao.list());
	    return "categorylist";
	}
	
	@RequestMapping("/editcatg/{category_id}")
	public String editCategory(@PathVariable("category_id") int id, Model model){
		model.addAttribute("Category",this.cdao.get(id));
		model.addAttribute("categoryList", this.cdao.list());
		return "editcategory";
		
	}
	
	
	@RequestMapping("/removecatg/{category_id}")
	public String deleteCategory(@PathVariable("category_id") int id,Model model){
		this.cdao.delete(id);
	return "redirect:/listcategory";	
	}
	}