package com.StrideFootwear.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.stridefootwear.ecommercebackend.dao.ProductDAO;
import com.stridefootwear.ecommercebackend.model.Product;

@Controller
public class ProductAddminController {

	@Autowired
	ProductDAO pdao;

	@RequestMapping("/productadmin")
	public ModelAndView productadmin() {
		Product p = new Product();
		ModelAndView model = new ModelAndView("productadmin");
		model.addObject("proddata", p);
		model.addObject("Catgname",pdao.listcatname());
		return model;
	}

	@RequestMapping(value = "/addproduct", method = RequestMethod.POST)
	public String addprod(@Valid @ModelAttribute("proddata") Product reg, HttpServletRequest request,
			BindingResult result) {
		if (result.hasErrors())
			return "productForm";

		MultipartFile image = reg.getImage();
		if (image != null && !image.isEmpty()) {
			Path path = Paths.get("C:\\Users\\DELL\\workspace\\EcommereceFrontEnd\\src\\main\\webapp\\resources\\images\\"+ reg.getProductname() + ".png");
			try {
				image.transferTo(new File(path.toString()));
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		pdao.save(reg);
		return ("redirect:/listproduct");

	}

	// @RequestMapping(value = "/supplier", method = RequestMethod.GET)
	// public String listSupplier(Model model) {
	// model.addAttribute("Supplier", new Supplier());
	// model.addAttribute("listSupplier", this.supplierdao.listSupplier());
	// return "supplier";
	// }
	@RequestMapping(value = "/listproduct")
	public String ViewProduct(Model model) {
		model.addAttribute("productList", this.pdao.list());
		return "productlist";
	}

	@RequestMapping("/editprod/{productid}")
	public String editCategory(@PathVariable("product_id") int id, Model model) {
		model.addAttribute("Product", this.pdao.get(id));
		model.addAttribute("productList", this.pdao.list());
		return "editproduct";

	}

	@RequestMapping("/removeprod/{productid}")
	public String deleteProduct(@PathVariable("product_id") int id, Model model) {
		this.pdao.deleteID(id);
		return "redirect:/listproduct";
	}
	
	@RequestMapping(value = "/listproductsjson")
	public @ResponseBody List<Product> listProdInJSON(){
		return pdao.list();	
	}
}
