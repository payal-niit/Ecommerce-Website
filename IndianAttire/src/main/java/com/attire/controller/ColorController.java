package com.attire.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.attire.model.Color;
import com.attire.model.Supplier;
import com.attire.service.ColorService;
import com.attire.service.SupplierService;

@Controller
public class ColorController {

	@Autowired
	private ColorService colorService;

	@Autowired
	private SupplierService supplierService;
	
	/*----------------------Color-----------------------*/

	@RequestMapping("/add/color")
	public String addColor(@ModelAttribute("color") Color color) {
		colorService.createColor(color);
		return "redirect:/categories";
	}

	/*----------------Supplier------------------------*/

	@RequestMapping("/add/supplier")
	public String addSupplier(@ModelAttribute("supplier") Supplier supplier) {
		supplierService.createSupplier(supplier);
		return "redirect:/categories";
	}

}
