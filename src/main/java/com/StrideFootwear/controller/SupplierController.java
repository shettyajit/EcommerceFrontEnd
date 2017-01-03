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

import com.stridefootwear.ecommercebackend.dao.SupplierDAO;
import com.stridefootwear.ecommercebackend.model.Supplier;



@Controller
public class SupplierController {

	@Autowired
	SupplierDAO sdao;

	@RequestMapping("/supplier")
	public ModelAndView supplier() {
		Supplier s = new Supplier();
		ModelAndView model = new ModelAndView("supplier");
		model.addObject("supdata", s);
		return model;
	}

	@RequestMapping(value = "/addsup", method = RequestMethod.POST)
	public String addsup(@Valid @ModelAttribute("supdata") Supplier reg, BindingResult result) {
		sdao.save(reg);
		return "redirect:/listsupplier";
	}

//	@RequestMapping(value = "/supplier", method = RequestMethod.GET)
//	public String listSupplier(Model model) {
//		model.addAttribute("Supplier", new Supplier());
//		model.addAttribute("listSupplier", this.supplierdao.listSupplier());
//		return "supplier";
//	}


@RequestMapping(value = "/listsupplier")
public String ViewSupplier(Model model)
{
    model.addAttribute("supplierList", this.sdao.list());
    return "supplierlist";
}

@RequestMapping("/editsup/{id}")
public String editCategory(@PathVariable("id") int id, Model model){
	model.addAttribute("Supplier",this.sdao.get(id));
	model.addAttribute("supplierList", this.sdao.list());
	return "editsupplier";
	
}

@RequestMapping("/removesup/{id}")
public String deleteSupplier(@PathVariable("id") int id,Model model){
	this.sdao.delete(id);
return "redirect:/listsupplier";	
}
}

