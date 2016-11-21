package com.attire.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.attire.model.Category;
import com.attire.model.Color;
import com.attire.model.Product;
import com.attire.model.ProductDetail;
import com.attire.model.ProductView;
import com.attire.model.SubCategory;
import com.attire.model.Supplier;
import com.attire.service.CategoryService;
import com.attire.service.ColorService;
import com.attire.service.ProductDetailService;
import com.attire.service.ProductService;
import com.attire.service.SubCategoryService;
import com.attire.service.SupplierService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Controller
public class ProductController {
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private CategoryService categoryService;
	
	@Autowired
	private SubCategoryService subCategoryService;
	
	@Autowired
	private ColorService colorService;
	
	@Autowired
	private SupplierService supplierService;
	
	@Autowired
	private ProductDetailService productDetailService;
	
	@RequestMapping("/products")
	public String categories(Model model) {
		model.addAttribute("product", new Product());
		model.addAttribute("subCategory", new SubCategory());
		model.addAttribute("category", new Category());
		model.addAttribute("color", new Color());
		model.addAttribute("supplier", new Supplier());
		model.addAttribute("categoryList", categoryService.list());
		model.addAttribute("subCategoryList", subCategoryService.listWiseSubCategories());
		model.addAttribute("colorList", colorService.list());
		model.addAttribute("supplierList", supplierService.list());
		model.addAttribute("productList", productService.listProducts());
		/*try {
		model.addAttribute("productList", productService.listProducts());
		} catch(Exception e) {
			e.printStackTrace();
		}*/
		return "Product";
	}
	
	@RequestMapping("/productlist")
	public String productList(Model model) {
		String list=productService.listProducts();
		model.addAttribute("productList",list );
		return "productlist";
	}
	
	@RequestMapping(value="/addproduct", method=RequestMethod.POST)
	public String addSubCategory(@Valid @ModelAttribute("product")Product product,BindingResult result, Model model) {
		if (result.hasErrors()) {
			return "Product";
		}
		else {
		Category category=categoryService.getByName(product.getCategory().getCategoryName());
		categoryService.createCategory(category);
		product.setCategory(category);
		
		
		SubCategory subCategory=subCategoryService.getByName(product.getSubCategory().getSubCategoryName());
		subCategoryService.createSubCategory(subCategory);
		product.setSubCategory(subCategory);
		
		
		Color color=colorService.getByName(product.getColor().getColorName());
		colorService.createColor(color);
		product.setColor(color);
		
		Supplier supplier=supplierService.getByName(product.getSupplier().getSupplierName());
		supplierService.createSupplier(supplier);
		product.setSupplier(supplier);
		
		product.setCategoryId(category.getCategoryId());
		product.setColorId(color.getColorId());
		product.setSubCategoryId(subCategory.getSubCategoryId());
		product.setSupplierId(supplier.getSupplierId());
		
		
		product.setTotalAmountPerPiece(Math.round((product.getRate()+product.getShippingCost() - (product.getRate()*product.getDiscount())/100)));
		int total=product.getRate()*product.getQuantity();
		product.setTotalAmount(Math.round((total*product.getDiscount())/100 + total+product.getShippingCost()));
		
		productService.createProduct(product);
	
		String path="E:\\payal\\ProjectThree\\IndianAttire\\src\\main\\webapp\\resources\\images\\";
		path=path+String.valueOf(product.getProductId())+".jpg";
		File f=new File(path);
		System.out.println("path is"+path);
		MultipartFile filedet=product.getImage();
		
		if(!filedet.isEmpty())
		{
			try
			{
			  byte[] bytes=filedet.getBytes();
			  FileOutputStream fos=new FileOutputStream(f);
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
		{
			System.out.println("File is Empty not Uploaded");
			
		}
		
		return "redirect:/products";
		
	}
	}
	
	@RequestMapping("/editProduct-{productId}")
	public String editCategory(@PathVariable("productId") String productId, Model model) {
		System.out.println("editProduct");
		model.addAttribute("product", new Product());
		model.addAttribute("subCategory", new SubCategory());
		model.addAttribute("category", new Category());
		model.addAttribute("color", new Color());
		model.addAttribute("supplier", new Supplier());
		model.addAttribute("categoryList", categoryService.list());
		model.addAttribute("subCategoryList", subCategoryService.listWiseSubCategories());
		model.addAttribute("colorList", colorService.list());
		model.addAttribute("supplierList", supplierService.list());
		model.addAttribute("productList", productService.listProducts());
		model.addAttribute("product", this.productService.getById(productId));
		
		return "Product";
	}
	
	@RequestMapping("/product/remove/{productId}")
	public String removeCategory(@PathVariable("productId") String productId, ModelMap model) throws Exception {

		productService.delete(productId);			
		return "redirect:/products";
	}
	
	@RequestMapping("/viewproduct--{productId}--product")
	public ModelAndView viewproductdetails(@ModelAttribute ProductView productView, @PathVariable("productId") String productId,Model m,@CookieValue(value="hitCounter",defaultValue="0")Long hitCounter, HttpServletResponse response) {
		ProductView p = productService.getByIdProductView(productId);
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String prd=gson.toJson(p);
		hitCounter++;
		Cookie cookie=new Cookie("hitCounter", hitCounter.toString());
		response.addCookie(cookie);
		/*ProductDetail pd=productDetailService.getByIdProductView(productId);
		String prdDetail=gson.toJson(pd);*/
		ModelAndView model = new ModelAndView("viewproduct");
		model.addObject("product", prd);
		model.addObject("p", p);
		
		return model;
	}
	
	@RequestMapping("/zoom")
	public String getZoom() {
		return "zoom";
	}
	
	@RequestMapping("/productdisplay")
	public String getProductDisplay(Model model) {
		model.addAttribute("list", productService.listProductsView());
		return "productdisplay";
	}


}
