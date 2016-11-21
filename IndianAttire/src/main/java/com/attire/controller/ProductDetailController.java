package com.attire.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.attire.model.ProductDetail;
import com.attire.service.ProductDetailService;
import com.attire.service.ProductService;

@Controller
public class ProductDetailController {
	
	@Autowired
	private ProductDetailService productDetailService;
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping("/productdetail")
	public String getProdutDetail(Model model)  {
		initModelList(model);
		model.addAttribute("productDetail", new ProductDetail());
		return "productdetail";
	}
	
	@RequestMapping(value = "/detail--{productId}")
	public ModelAndView addApprove(Model m,@ModelAttribute("productDetail") ProductDetail productDetail,
			@PathVariable("productId") String productId) {
		initModelList(m);
		productDetailService.getById(productId);
		ModelAndView model = new ModelAndView("productdetail");
				return model;
		
	}
	
	@RequestMapping("/add--{productId}")
	public String addProductDetail(@ModelAttribute("productDetail")ProductDetail productDetail,	@PathVariable("productId") String productId) {
		productDetail.setProductId(productId);
		System.out.println("product id is" + productId);
		productDetail.setProductName(productService.productName(productId));
		
		productDetailService.createProductDetail(productDetail);
		
		String path1="E:\\payal\\ProjectThree\\IndianAttire\\src\\main\\webapp\\resources\\productdetail\\";
		path1=path1+String.valueOf(productDetail.getProductId())+"-1.jpg";
		File f1=new File(path1);
		MultipartFile img1=productDetail.getImg1();		
		
		if(!img1.isEmpty())
		{
			try
			{
			  byte[] bytes=img1.getBytes();
			  FileOutputStream fos=new FileOutputStream(f1);
              			BufferedOutputStream bs=new BufferedOutputStream(fos);
              			bs.write(bytes);
              			bs.close();
             			 System.out.println("File Uploaded Successfully");
			}
			catch(Exception e)
			{
				System.out.println("Exception Arised"+e);
			}
		}
		else		
			System.out.println("File is Empty not Uploaded");
		
		String path2="E:\\payal\\ProjectThree\\IndianAttire\\src\\main\\webapp\\resources\\productdetail\\";
		path2=path2+String.valueOf(productDetail.getProductId())+"-2.jpg";
		File f2=new File(path2);
		MultipartFile img2=productDetail.getImg2();		
		
		if(!img2.isEmpty())
		{
			try
			{
			  byte[] bytes=img2.getBytes();
			  FileOutputStream fos=new FileOutputStream(f2);
              			BufferedOutputStream bs=new BufferedOutputStream(fos);
              			bs.write(bytes);
              			bs.close();
             			 System.out.println("File Uploaded Successfully");
			}
			catch(Exception e)
			{
				System.out.println("Exception Arised"+e);
			}
		}
		else	
			System.out.println("File is Empty not Uploaded");	
		

		String path3="E:\\payal\\ProjectThree\\IndianAttire\\src\\main\\webapp\\resources\\productdetail\\";
		path3=path3+String.valueOf(productDetail.getProductId())+"-3.jpg";
		File f3=new File(path3);
		MultipartFile img3=productDetail.getImg3();		
		
		if(!img3.isEmpty())
		{
			try
			{
			  byte[] bytes=img3.getBytes();
			  FileOutputStream fos=new FileOutputStream(f3);
              			BufferedOutputStream bs=new BufferedOutputStream(fos);
              			bs.write(bytes);
              			bs.close();
             			 System.out.println("File Uploaded Successfully");
			}
			catch(Exception e)
			{
				System.out.println("Exception Arised"+e);
			}
		}
		else	
			System.out.println("File is Empty not Uploaded");
		
		String path4="E:\\payal\\ProjectThree\\IndianAttire\\src\\main\\webapp\\resources\\productdetail\\";
		path4=path4+String.valueOf(productDetail.getProductId())+"-4.jpg";
		File f4=new File(path4);
		MultipartFile img4=productDetail.getImg4();		
		
		if(!img4.isEmpty())
		{
			try
			{
			  byte[] bytes=img4.getBytes();
			  FileOutputStream fos=new FileOutputStream(f4);
              			BufferedOutputStream bs=new BufferedOutputStream(fos);
              			bs.write(bytes);
              			bs.close();
             			 System.out.println("File Uploaded Successfully");
			}
			catch(Exception e)
			{
				System.out.println("Exception Arised"+e);
			}
		}
		else	
			System.out.println("File is Empty not Uploaded");
		
		return "redirect:/products";
	}
	
	
	private void initModelList(Model model) {	

		List<String> occasionList = new ArrayList<String>();
		
		occasionList.add("Bridal");
		occasionList.add("Casual");
		occasionList.add("Ceremonial");
		occasionList.add("Cocktail");
		occasionList.add("Festival");
		occasionList.add("Mehendi");
		occasionList.add("Office wear");
		occasionList.add("Party");
		occasionList.add("Wedding");		

		model.addAttribute("blogOptions", occasionList);

	}

}
